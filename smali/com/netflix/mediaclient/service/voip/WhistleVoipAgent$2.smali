.class Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$2;
.super Ljava/lang/Object;
.source "WhistleVoipAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)V
    .locals 0

    .prologue
    .line 837
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$2;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 840
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Back to landing page!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$2;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$500(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 842
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$2;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$600(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;

    .line 843
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$2;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$700(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;->callEnded(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V

    goto :goto_0

    .line 845
    :cond_0
    return-void
.end method
