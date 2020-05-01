.class Lcom/netflix/mediaclient/service/player/PlayerAgent$StartPlayTimeoutTask;
.super Ljava/util/TimerTask;
.source "PlayerAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;)V
    .locals 2

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$StartPlayTimeoutTask;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "StartPlayTimeoutTask created!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "StartPlayTimeoutTask to handleFatalError()!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$StartPlayTimeoutTask;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$StartPlayTimeoutTask;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$4900(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnNrdFatalErrorHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnNrdFatalErrorHandler;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$5000(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    return-void
.end method
