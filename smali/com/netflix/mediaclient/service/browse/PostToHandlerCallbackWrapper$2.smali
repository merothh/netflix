.class Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$2;
.super Ljava/lang/Object;
.source "PostToHandlerCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;

.field final synthetic val$res:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$2;->this$0:Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$2;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$2;->this$0:Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->access$000(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$2;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onGenreLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 64
    return-void
.end method
