.class Lcom/netflix/mediaclient/service/player/PlayerAgent$1;
.super Ljava/lang/Object;
.source "PlayerAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v4, -0x1

    iget-object v12, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    monitor-enter v12

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$100(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->reset()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$202(Lcom/netflix/mediaclient/service/player/PlayerAgent;I)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$302(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$402(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$502(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$602(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$702(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$802(Lcom/netflix/mediaclient/service/player/PlayerAgent;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1000(Lcom/netflix/mediaclient/service/player/PlayerAgent;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$902(Lcom/netflix/mediaclient/service/player/PlayerAgent;I)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1102(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1202(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/event/nrdp/media/NccpError;)Lcom/netflix/mediaclient/event/nrdp/media/NccpError;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1300(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1400(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    new-instance v1, Lcom/netflix/mediaclient/service/player/PlayerAgent$StartPlayTimeoutTask;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent$StartPlayTimeoutTask;-><init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1502(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/service/player/PlayerAgent$StartPlayTimeoutTask;)Lcom/netflix/mediaclient/service/player/PlayerAgent$StartPlayTimeoutTask;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1400(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1500(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/service/player/PlayerAgent$StartPlayTimeoutTask;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Player state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1700(Lcom/netflix/mediaclient/service/player/PlayerAgent;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1700(Lcom/netflix/mediaclient/service/player/PlayerAgent;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1700(Lcom/netflix/mediaclient/service/player/PlayerAgent;)I

    move-result v0

    if-ne v0, v4, :cond_7

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Player state was CLOSED or CREATED, cancel timeout task!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1702(Lcom/netflix/mediaclient/service/player/PlayerAgent;I)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1500(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/service/player/PlayerAgent$StartPlayTimeoutTask;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1500(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/service/player/PlayerAgent$StartPlayTimeoutTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent$StartPlayTimeoutTask;->cancel()Z

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1502(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/service/player/PlayerAgent$StartPlayTimeoutTask;)Lcom/netflix/mediaclient/service/player/PlayerAgent$StartPlayTimeoutTask;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Task was canceled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1400(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1400(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Canceled tasks: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->reloadPlayer()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getCurrentNetType(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$100(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getStreamingQoe()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->enableHTTPSAuth()Z

    move-result v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1800(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setStreamingQoe(Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    new-instance v1, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1902(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;)Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$100(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$2000(Lcom/netflix/mediaclient/service/player/PlayerAgent;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$2100(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1000(Lcom/netflix/mediaclient/service/player/PlayerAgent;)J

    move-result-wide v6

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isPreviewContentEnabled()Z

    move-result v8

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1900(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;

    move-result-object v9

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$2200(Lcom/netflix/mediaclient/service/player/PlayerAgent;)J

    move-result-wide v10

    invoke-interface/range {v1 .. v11}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->open(JLcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;JZLcom/netflix/mediaclient/util/PlaybackVolumeMetric;J)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$2302(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getApplicationRx()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$2402(Lcom/netflix/mediaclient/service/player/PlayerAgent;J)J

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getApplicationTx()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$2502(Lcom/netflix/mediaclient/service/player/PlayerAgent;J)J

    :goto_2
    monitor-exit v12

    return-void

    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Timer task was null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    :try_start_1
    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Timer was null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$2302(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)Z

    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "invokeMethod(open) has to wait..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
