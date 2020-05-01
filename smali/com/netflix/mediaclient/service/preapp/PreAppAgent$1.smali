.class Lcom/netflix/mediaclient/service/preapp/PreAppAgent$1;
.super Landroid/content/BroadcastReceiver;
.source "PreAppAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgent;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent$1;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 55
    if-nez p2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    const-string/jumbo v1, "nf_preappagent"

    const-string/jumbo v2, "received intent action: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_2
    invoke-static {p1}, Lcom/netflix/mediaclient/util/AndroidUtils;->isWidgetInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/service/pservice/PService;->isRemoteUiDevice()Z

    move-result v1

    if-nez v1, :cond_3

    .line 66
    const-string/jumbo v0, "nf_preappagent"

    const-string/jumbo v1, "widget not installed - skip fetching data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_3
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_ALL_MEMBER_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent$1;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->access$000(Lcom/netflix/mediaclient/service/preapp/PreAppAgent;)Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->ALL_MEMBER_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->update(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    goto :goto_0

    .line 73
    :cond_4
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_CW_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent$1;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->access$000(Lcom/netflix/mediaclient/service/preapp/PreAppAgent;)Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->CW_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->update(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    goto :goto_0

    .line 76
    :cond_5
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_IQ_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent$1;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->access$000(Lcom/netflix/mediaclient/service/preapp/PreAppAgent;)Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->IQ_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->update(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    goto :goto_0

    .line 79
    :cond_6
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_NON_MEMBER_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent$1;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->access$000(Lcom/netflix/mediaclient/service/preapp/PreAppAgent;)Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->NON_MEMBER_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->update(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    goto/16 :goto_0
.end method
