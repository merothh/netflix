.class Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$16;
.super Ljava/lang/Object;
.source "PostToHandlerCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;

.field final synthetic val$moments:Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;

.field final synthetic val$res:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$16;->this$0:Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$16;->val$moments:Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$16;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$16;->this$0:Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->access$000(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$16;->val$moments:Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$16;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onInteractiveMomentsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 214
    return-void
.end method
