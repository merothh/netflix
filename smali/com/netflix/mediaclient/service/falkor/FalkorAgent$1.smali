.class Lcom/netflix/mediaclient/service/falkor/FalkorAgent$1;
.super Landroid/content/BroadcastReceiver;
.source "FalkorAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$1;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "FalkorAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PlayReceiver inovoked and received Intent with Action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOCAL_PLAYER_PLAY_START"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$1;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-static {p2}, Lcom/netflix/mediaclient/servicemgr/Asset;->fromIntent(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchEpisodesForSeason(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOCAL_PLAYER_PLAY_STOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "Refreshing CW for LOCAL_PLAYER_PLAY_STOP..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$1;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$100(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)Lcom/netflix/falkor/CachedModelProxy;

    move-result-object v0

    invoke-static {p2}, Lcom/netflix/mediaclient/servicemgr/Asset;->fromIntent(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->updateBookmarkPosition(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$1;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->refreshCw(ZZ)V

    goto :goto_0
.end method
