.class Lcom/netflix/mediaclient/service/mdx/TargetContext$1;
.super Landroid/os/Handler;
.source "TargetContext.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/TargetContext;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 145
    :goto_0
    return-void

    .line 107
    :pswitch_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string/jumbo v0, "nf_mdx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TargetContext: received a command at state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$000(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/service/mdx/TargetStateManager;

    move-result-object v2

    iget-object v2, v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    .line 112
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$000(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/service/mdx/TargetStateManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->addUiCommand(Ljava/lang/Runnable;Z)V

    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$000(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/service/mdx/TargetStateManager;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionCommandReceived:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->receivedEvent(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;)V

    goto :goto_0

    .line 117
    :pswitch_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    const-string/jumbo v0, "nf_mdx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TargetContext: received a user command at state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$000(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/service/mdx/TargetStateManager;

    move-result-object v2

    iget-object v2, v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    .line 122
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$000(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/service/mdx/TargetStateManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->addUiCommand(Ljava/lang/Runnable;Z)V

    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$000(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/service/mdx/TargetStateManager;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionCommandReceived:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->receivedEvent(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;)V

    goto/16 :goto_0

    .line 127
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    .line 128
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$000(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/service/mdx/TargetStateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->receivedEvent(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;)V

    goto/16 :goto_0

    .line 131
    :pswitch_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$100(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    .line 132
    const-string/jumbo v1, "nf_mdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TargetContext: MSG_UPDATETARGET "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$200(Lcom/netflix/mediaclient/service/mdx/TargetContext;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$300(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$400(Lcom/netflix/mediaclient/service/mdx/TargetContext;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$000(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/service/mdx/TargetStateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$200(Lcom/netflix/mediaclient/service/mdx/TargetContext;)I

    move-result v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$300(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Z

    move-result v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v4}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$400(Lcom/netflix/mediaclient/service/mdx/TargetContext;)I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->updateTarget(ZIZI)V

    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$000(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/service/mdx/TargetStateManager;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->TargetUpdate:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->receivedEvent(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;)V

    goto/16 :goto_0

    .line 137
    :pswitch_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$000(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/service/mdx/TargetStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->isSessionActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$500(Lcom/netflix/mediaclient/service/mdx/TargetContext;)V

    goto/16 :goto_0

    .line 140
    :cond_2
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "TargetContext: MSG_PERIODIC,target is not active"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
