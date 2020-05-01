.class public final Lcom/netflix/mediaclient/service/user/UserAgent$PlayStopReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UserAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 0

    .prologue
    .line 1607
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$PlayStopReceiver;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 1611
    if-nez p2, :cond_1

    .line 1631
    :cond_0
    :goto_0
    return-void

    .line 1614
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1615
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1616
    const-string/jumbo v1, "nf_service_useragent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PlayStopReceiver inovoked and received Intent with Action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    :cond_2
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOCAL_PLAYER_PLAY_STOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1621
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$PlayStopReceiver;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentProfileGuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$PlayStopReceiver;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$2000(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1622
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Starting userProfile fetch "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$PlayStopReceiver;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$PlayStopReceiver;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentProfileGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->fetchProfileData(Ljava/lang/String;)V

    .line 1626
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$PlayStopReceiver;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$2900(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->onPlayEnd()V

    goto :goto_0

    .line 1628
    :cond_3
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "canDoDataFetches false - skipping fetchProfileData request"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
