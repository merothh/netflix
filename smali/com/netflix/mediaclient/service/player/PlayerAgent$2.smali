.class Lcom/netflix/mediaclient/service/player/PlayerAgent$2;
.super Ljava/lang/Object;
.source "PlayerAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$2;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$2;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$2;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1700(Lcom/netflix/mediaclient/service/player/PlayerAgent;)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$2;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$2602(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)Z

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$2;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$2700(Lcom/netflix/mediaclient/service/player/PlayerAgent;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
