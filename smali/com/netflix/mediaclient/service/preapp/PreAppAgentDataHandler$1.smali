.class Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$1;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "PreAppAgentDataHandler.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

.field final synthetic val$fetchCallbacksList:Ljava/util/Set;

.field final synthetic val$newData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

.field final synthetic val$updateType:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/Set;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$1;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$1;->val$newData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$1;->val$fetchCallbacksList:Ljava/util/Set;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$1;->val$updateType:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBBVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    const-string/jumbo v0, "nf_preappagentdatahandler"

    const-string/jumbo v1, "BB fetched videos:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$1;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$1;->val$newData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->access$000(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;)V

    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$1;->val$fetchCallbacksList:Ljava/util/Set;

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->BILLBOARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$1;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$1;->val$fetchCallbacksList:Ljava/util/Set;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$1;->val$newData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$1;->val$updateType:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->access$100(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Ljava/util/Set;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    .line 75
    return-void
.end method

.method public onCWVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    const-string/jumbo v0, "nf_preappagentdatahandler"

    const-string/jumbo v1, "IQ fetched videos:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$1;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$1;->val$newData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->access$200(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;)V

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$1;->val$fetchCallbacksList:Ljava/util/Set;

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$1;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$1;->val$fetchCallbacksList:Ljava/util/Set;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$1;->val$newData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$1;->val$updateType:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->access$100(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Ljava/util/Set;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    .line 84
    return-void
.end method
