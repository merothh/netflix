.class Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$4;
.super Ljava/lang/Object;
.source "WhistleVoipAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

.field final synthetic val$line:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;I)V
    .locals 0

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$4;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    iput p2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$4;->val$line:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1024
    invoke-static {}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$800()V

    .line 1025
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$4;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$000(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Lcom/vailsys/whistleengine/WhistleEngine;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1026
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Engine is null, what happend"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$4;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$1800(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)V

    .line 1031
    return-void

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$4;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$000(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Lcom/vailsys/whistleengine/WhistleEngine;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$4;->val$line:I

    invoke-virtual {v0, v1}, Lcom/vailsys/whistleengine/WhistleEngine;->hangup(I)V

    goto :goto_0
.end method
