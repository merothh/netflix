.class Lcom/netflix/mediaclient/service/player/PlayerAgent$4;
.super Ljava/lang/Object;
.source "PlayerAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;)V
    .locals 0

    .prologue
    .line 868
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$4;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 871
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$4;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    monitor-enter v1

    .line 872
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$4;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1500(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/service/player/PlayerAgent$StartPlayTimeoutTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$4;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1500(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/service/player/PlayerAgent$StartPlayTimeoutTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent$StartPlayTimeoutTask;->cancel()Z

    .line 874
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$4;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1502(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/service/player/PlayerAgent$StartPlayTimeoutTask;)Lcom/netflix/mediaclient/service/player/PlayerAgent$StartPlayTimeoutTask;

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$4;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$3200(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/service/player/PlayerAgent$InitialVideoBitrateRangeTimeoutTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 877
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$4;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$3200(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/service/player/PlayerAgent$InitialVideoBitrateRangeTimeoutTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent$InitialVideoBitrateRangeTimeoutTask;->cancel()Z

    .line 878
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$4;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$3202(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/service/player/PlayerAgent$InitialVideoBitrateRangeTimeoutTask;)Lcom/netflix/mediaclient/service/player/PlayerAgent$InitialVideoBitrateRangeTimeoutTask;

    .line 880
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$4;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1400(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 881
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$4;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1400(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 883
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$4;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$2302(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)Z

    .line 884
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$4;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1700(Lcom/netflix/mediaclient/service/player/PlayerAgent;)I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$4;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1700(Lcom/netflix/mediaclient/service/player/PlayerAgent;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$4;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1700(Lcom/netflix/mediaclient/service/player/PlayerAgent;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 885
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$4;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$3302(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)Z

    .line 887
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$4;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1700(Lcom/netflix/mediaclient/service/player/PlayerAgent;)I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$4;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1700(Lcom/netflix/mediaclient/service/player/PlayerAgent;)I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_6

    .line 888
    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "close() pending or already closed"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    monitor-exit v1

    .line 900
    :goto_0
    return-void

    .line 891
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$4;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$3400(Lcom/netflix/mediaclient/service/player/PlayerAgent;)V

    .line 895
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$4;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1400(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 896
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$4;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    new-instance v2, Lcom/netflix/mediaclient/service/player/PlayerAgent$CloseTimeoutTask;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$4;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/service/player/PlayerAgent$CloseTimeoutTask;-><init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;)V

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$3502(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/service/player/PlayerAgent$CloseTimeoutTask;)Lcom/netflix/mediaclient/service/player/PlayerAgent$CloseTimeoutTask;

    .line 897
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$4;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1400(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Ljava/util/Timer;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$4;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$3500(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/service/player/PlayerAgent$CloseTimeoutTask;

    move-result-object v2

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 899
    :cond_7
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
