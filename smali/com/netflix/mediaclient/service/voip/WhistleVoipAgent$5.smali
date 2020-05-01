.class Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$5;
.super Landroid/content/BroadcastReceiver;
.source "WhistleVoipAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)V
    .locals 0

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$5;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1077
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1078
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.VOIP"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1079
    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->isDelete(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Intent to cancel call received"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$5;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$5;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$700(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;->access$400(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$1900(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;I)V

    .line 1083
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$5;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->terminate()Z

    .line 1090
    :goto_0
    return-void

    .line 1085
    :cond_0
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Uknown VOIP action!"

    invoke-static {v0, v1, p2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 1088
    :cond_1
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Received intent with uknown category!"

    invoke-static {v0, v1, p2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method
