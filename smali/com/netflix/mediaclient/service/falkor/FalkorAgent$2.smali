.class Lcom/netflix/mediaclient/service/falkor/FalkorAgent$2;
.super Landroid/content/BroadcastReceiver;
.source "FalkorAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$2;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 201
    if-nez p2, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 206
    const-string/jumbo v1, "FalkorAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UserAgentIntentReceiver inovoked and received Intent with Action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_ACTIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$2;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$200(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V

    goto :goto_0

    .line 211
    :cond_2
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_DEACTIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$2;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$300(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V

    goto :goto_0

    .line 214
    :cond_3
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_DEACTIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$2;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$400(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V

    goto :goto_0
.end method
