.class Lcom/netflix/mediaclient/service/player/PlayerAgent$CloseTimeoutTask;
.super Ljava/util/TimerTask;
.source "PlayerAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;)V
    .locals 2

    .prologue
    .line 2075
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$CloseTimeoutTask;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 2076
    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CloseTimeoutTask created!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2081
    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CloseTimeoutTask to unmute audio!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$CloseTimeoutTask;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$5200(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)V

    .line 2083
    return-void
.end method
