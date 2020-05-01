.class Lo/xP$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/xP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/xP;


# direct methods
.method constructor <init>(Lo/xP;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lo/xP$1;->c:Lo/xP;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 106
    const-class v0, Lo/Cl;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Cl;

    invoke-interface {v0, p1}, Lo/Cl;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    invoke-static {p1}, Lo/ir;->e(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "nf_preappagent"

    const-string p2, "widget not installed && !partnerDevice - skip fetching data"

    .line 108
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p1, "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_ALL_MEMBER_UPDATED"

    .line 112
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 113
    iget-object p1, p0, Lo/xP$1;->c:Lo/xP;

    invoke-static {p1}, Lo/xP;->e(Lo/xP;)Lo/xN;

    move-result-object p1

    sget-object p2, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->e:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {p1, p2}, Lo/xN;->a(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    goto :goto_0

    :cond_2
    const-string p1, "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_CW_UPDATED"

    .line 114
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 115
    iget-object p1, p0, Lo/xP$1;->c:Lo/xP;

    invoke-static {p1}, Lo/xP;->e(Lo/xP;)Lo/xN;

    move-result-object p1

    sget-object p2, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->c:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {p1, p2}, Lo/xN;->a(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    goto :goto_0

    :cond_3
    const-string p1, "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_IQ_UPDATED"

    .line 116
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 117
    iget-object p1, p0, Lo/xP$1;->c:Lo/xP;

    invoke-static {p1}, Lo/xP;->e(Lo/xP;)Lo/xN;

    move-result-object p1

    sget-object p2, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->b:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {p1, p2}, Lo/xN;->a(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    goto :goto_0

    :cond_4
    const-string p1, "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_NON_MEMBER_UPDATED"

    .line 118
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 119
    iget-object p1, p0, Lo/xP$1;->c:Lo/xP;

    invoke-static {p1}, Lo/xP;->e(Lo/xP;)Lo/xN;

    move-result-object p1

    sget-object p2, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->a:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {p1, p2}, Lo/xN;->a(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    :cond_5
    :goto_0
    return-void
.end method
