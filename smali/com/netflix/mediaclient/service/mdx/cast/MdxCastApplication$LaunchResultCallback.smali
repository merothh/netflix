.class final Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$LaunchResultCallback;
.super Ljava/lang/Object;
.source "MdxCastApplication.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
        ">;"
    }
.end annotation


# instance fields
.field final mMessageReceivedCallback:Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$LaunchResultCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$LaunchResultCallback;->mMessageReceivedCallback:Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;)V
    .locals 4

    invoke-interface {p1}, Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "launchApplication(), success"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$LaunchResultCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->access$100(Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    const-string/jumbo v2, "urn:x-cast:mdx-netflix-com:service:target:2"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$LaunchResultCallback;->mMessageReceivedCallback:Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/cast/Cast$CastApi;->setMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$LaunchResultCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->access$300(Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$LaunchResultCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->access$200(Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;)Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;->onLaunched()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$LaunchResultCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->access$200(Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;)Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;->onFailToLaunch(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$LaunchResultCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->access$200(Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;)Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;->onFailToLaunch(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$LaunchResultCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->access$200(Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;)Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;->onFailToLaunch(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    const/16 v1, 0x7d2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "launchApplication(), cancelled & ignored"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "launchApplication(), timeout, wait - JUST A WORKAROUND"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$LaunchResultCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->access$200(Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;)Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;

    move-result-object v0

    const-string/jumbo v1, "StatusCodes: TIMEOUT"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;->onFailToLaunch(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "launchApplication(), failure, result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$LaunchResultCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->access$200(Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;)Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getStatusCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;->onFailToLaunch(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$LaunchResultCallback;->onResult(Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;)V

    return-void
.end method
