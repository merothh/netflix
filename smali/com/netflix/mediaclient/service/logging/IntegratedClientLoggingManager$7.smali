.class Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$7;
.super Landroid/content/BroadcastReceiver;
.source "IntegratedClientLoggingManager.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)V
    .locals 0

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$7;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1049
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1054
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1055
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1056
    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Local playback started, was started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$7;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->access$1100(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$7;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->access$1100(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1079
    :cond_2
    :goto_0
    return-void

    .line 1059
    :cond_3
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_ENDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1060
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1061
    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Local playback ended, was started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$7;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->access$1100(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$7;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->access$1100(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 1064
    :cond_5
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_PAUSED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1065
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1066
    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Local playback paused, was playing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$7;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->access$1100(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$7;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->access$1100(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 1069
    :cond_7
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_UNPAUSED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1070
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1071
    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Local playback unpaused, was playing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$7;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->access$1100(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$7;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->access$1100(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 1075
    :cond_9
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1076
    const-string/jumbo v1, "nf_log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "We do not support action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
