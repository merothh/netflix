.class Lcom/netflix/mediaclient/service/player/PlayerAgent$5;
.super Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;
.source "PlayerAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$5;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDummyWebCallDone(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$5;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$4702(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)Z

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Dummy webcall completed with statusCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$5;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$4800(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/event/nrdp/media/NccpError;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$5;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$4802(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/event/nrdp/media/NccpError;)Lcom/netflix/mediaclient/event/nrdp/media/NccpError;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$5;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$5;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$4900(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerRestartPlaybackHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerRestartPlaybackHandler;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$5000(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Dummy webcall completed  failed (skipping user info update) with statusCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$5;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$5;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$4900(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnNccpErrorHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnNccpErrorHandler;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$5;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$4800(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/event/nrdp/media/NccpError;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$5000(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    goto :goto_0
.end method
