.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$2;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "KongInteractivePostPlayManager.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceCached(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V
    .locals 7

    invoke-super/range {p0 .. p7}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;->onResourceCached(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->access$208(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)I

    invoke-interface {p7}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "KongInteractivePostPlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to retrieve resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p7}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p7}, Lcom/netflix/mediaclient/android/app/Status;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->access$308(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)I

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->access$200(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->access$500(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->checkFailuresAndRetry()V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KongInteractivePostPlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Caching post play resources request complete! Failures - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->access$300(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "KongInteractivePostPlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Downloaded resource - : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->access$200(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;-><init>(Ljava/lang/String;JJ)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->access$400(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
