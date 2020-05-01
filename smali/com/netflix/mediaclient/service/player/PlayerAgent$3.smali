.class Lcom/netflix/mediaclient/service/player/PlayerAgent$3;
.super Ljava/lang/Object;
.source "PlayerAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$3;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$3;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$3;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$3;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getCurrentPositionMs()I

    move-result v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$202(Lcom/netflix/mediaclient/service/player/PlayerAgent;I)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$3;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$302(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$3;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$2802(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$3;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$402(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$3;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getDuration()I

    move-result v2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$3;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$900(Lcom/netflix/mediaclient/service/player/PlayerAgent;)I

    move-result v0

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$3;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$900(Lcom/netflix/mediaclient/service/player/PlayerAgent;)I

    move-result v3

    add-int/lit16 v3, v3, 0x2710

    if-lt v3, v2, :cond_1

    if-lez v2, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "seek to close to EOS, defaulting to 10 seconss before EOS."

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit16 v0, v2, -0x2710

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$3;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$2900(Lcom/netflix/mediaclient/service/player/PlayerAgent;)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$3;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$100(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$3;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$3000(Lcom/netflix/mediaclient/service/player/PlayerAgent;)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$3;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v5}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$2900(Lcom/netflix/mediaclient/service/player/PlayerAgent;)I

    move-result v5

    const/4 v6, 0x1

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->swim(IZIZ)V

    :goto_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$3;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$902(Lcom/netflix/mediaclient/service/player/PlayerAgent;I)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$3;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1102(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)Z

    monitor-exit v1

    return-void

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1600()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "seek to position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$3;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v5}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$900(Lcom/netflix/mediaclient/service/player/PlayerAgent;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", duration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$3;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$100(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$3;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$3100(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Z

    move-result v3

    invoke-interface {v2, v0, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->seekTo(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
