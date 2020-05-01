.class Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$18;
.super Ljava/lang/Object;
.source "PostToHandlerCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;

.field final synthetic val$res:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic val$showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$18;->this$0:Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$18;->val$showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$18;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$18;->this$0:Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->access$000(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$18;->val$showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$18;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
