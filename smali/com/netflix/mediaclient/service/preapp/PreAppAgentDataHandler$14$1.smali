.class Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$14$1;
.super Ljava/lang/Object;
.source "PreAppAgentDataHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$14;

.field final synthetic val$onDiskData:Lcom/netflix/mediaclient/service/pservice/PDiskData;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$14;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$14$1;->this$1:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$14;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$14$1;->val$onDiskData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$14$1;->val$onDiskData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->access$600()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository;->clearDiskData(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$14$1;->val$onDiskData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->clearMemberlists()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$14$1;->this$1:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$14;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$14;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$14$1;->val$onDiskData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->access$800(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    const-string/jumbo v0, "nf_preappagentdatahandler"

    const-string/jumbo v1, "preapp member data cleared. storing rest of data?"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$14$1;->this$1:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$14;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$14;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$14$1;->val$onDiskData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$14$1;->this$1:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$14;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$14;->val$updateType:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->access$1100(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$14$1;->this$1:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$14;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$14;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    invoke-static {}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->access$600()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$14$1;->this$1:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$14;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$14;->val$updateType:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->access$1200(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Landroid/content/Context;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    goto :goto_0
.end method
