.class Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$1;
.super Ljava/lang/Object;
.source "WhistleVoipAgent.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$1;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 293
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const-string/jumbo v0, "nf_voip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ServiceConnected with IBinder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$1;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    check-cast p2, Lcom/vailsys/whistleengine/WhistleEngine$WhistleEngineBinder;

    invoke-virtual {p2}, Lcom/vailsys/whistleengine/WhistleEngine$WhistleEngineBinder;->getService()Lcom/vailsys/whistleengine/WhistleEngine;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$002(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;Lcom/vailsys/whistleengine/WhistleEngine;)Lcom/vailsys/whistleengine/WhistleEngine;

    .line 299
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$1;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$000(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Lcom/vailsys/whistleengine/WhistleEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vailsys/whistleengine/WhistleEngine;->applicationInForeground()V

    .line 300
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$1;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$100(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 301
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$1;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    sget-object v1, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;->STARTED:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$202(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;)Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;

    .line 303
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$1;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$300(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Failed to start VOIP service"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$1;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    sget-object v1, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;->NOT_STARTED:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$202(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;)Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 314
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$1;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$002(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;Lcom/vailsys/whistleengine/WhistleEngine;)Lcom/vailsys/whistleengine/WhistleEngine;

    .line 316
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$1;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$100(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 317
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$1;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    sget-object v1, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;->STOPPED:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$202(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;)Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;

    .line 318
    return-void
.end method
