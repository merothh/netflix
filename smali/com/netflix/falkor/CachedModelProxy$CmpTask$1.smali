.class Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;
.super Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;
.source "CachedModelProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final notOnMain:Z

.field private final optionalRequestParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/DataUtil$StringPair;",
            ">;"
        }
    .end annotation
.end field

.field private final pqls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final requestStartTime:J

.field final synthetic this$1:Lcom/netflix/falkor/CachedModelProxy$CmpTask;

.field private final useAuthorization:Z

.field private final useCallMethod:Z

.field final synthetic val$requestPql:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/CachedModelProxy$CmpTask;Landroid/content/Context;Ljava/util/List;)V
    .locals 2

    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->this$1:Lcom/netflix/falkor/CachedModelProxy$CmpTask;

    iput-object p3, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->val$requestPql:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->notOnMain:Z

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->val$requestPql:Ljava/util/List;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DataUtil;->createStringListFromList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->pqls:Ljava/util/List;

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->this$1:Lcom/netflix/falkor/CachedModelProxy$CmpTask;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->shouldUseCallMethod()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->useCallMethod:Z

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->this$1:Lcom/netflix/falkor/CachedModelProxy$CmpTask;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->shouldUseAuthorization()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->useAuthorization:Z

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->this$1:Lcom/netflix/falkor/CachedModelProxy$CmpTask;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->getOptionalRequestParams()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->optionalRequestParams:Ljava/util/List;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->requestStartTime:J

    return-void
.end method


# virtual methods
.method protected getMethodType()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->useCallMethod:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "call"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "get"

    goto :goto_0
.end method

.method protected getOptionalParams()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->optionalRequestParams:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->optionalRequestParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->optionalRequestParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v0, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "CachedModelProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending optional url params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getPQLQueries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->pqls:Ljava/util/List;

    return-object v0
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->this$1:Lcom/netflix/falkor/CachedModelProxy$CmpTask;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->getPriorityOverride()Lcom/android/volley/Request$Priority;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->this$1:Lcom/netflix/falkor/CachedModelProxy$CmpTask;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->getPriorityOverride()Lcom/android/volley/Request$Priority;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getPriority()Lcom/android/volley/Request$Priority;

    move-result-object v0

    goto :goto_0
.end method

.method protected isAuthorizationRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->useAuthorization:Z

    return v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->this$1:Lcom/netflix/falkor/CachedModelProxy$CmpTask;

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->this$1:Lcom/netflix/falkor/CachedModelProxy$CmpTask;

    invoke-static {v1}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->access$800(Lcom/netflix/falkor/CachedModelProxy$CmpTask;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->access$900(Lcom/netflix/falkor/CachedModelProxy$CmpTask;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/Void;)V
    .locals 0

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    return-void
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Void;
    .locals 6

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    sget-boolean v0, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CachedModelProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->this$1:Lcom/netflix/falkor/CachedModelProxy$CmpTask;

    iget-object v0, v0, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-static {v0}, Lcom/netflix/falkor/CachedModelProxy;->access$300(Lcom/netflix/falkor/CachedModelProxy;)Lcom/google/gson/JsonParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->hasErrors(Lcom/google/gson/JsonObject;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "CachedModelProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Found errors in json response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "CachedModelProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "CachedModelProxy"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getErrorMessage(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->this$1:Lcom/netflix/falkor/CachedModelProxy$CmpTask;

    invoke-virtual {v1, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->handleJsonError(Lcom/google/gson/JsonObject;)Lcom/android/volley/VolleyError;

    move-result-object v0

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->this$1:Lcom/netflix/falkor/CachedModelProxy$CmpTask;

    invoke-virtual {v1}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->shouldCustomHandleResponse()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->this$1:Lcom/netflix/falkor/CachedModelProxy$CmpTask;

    invoke-virtual {v1, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->customHandleResponse(Lcom/google/gson/JsonObject;)V

    :goto_0
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->this$1:Lcom/netflix/falkor/CachedModelProxy$CmpTask;

    invoke-static {v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->access$700(Lcom/netflix/falkor/CachedModelProxy$CmpTask;)V

    const/4 v0, 0x0

    return-object v0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/netflix/falkor/CachedModelProxy;->access$402(J)J

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "CachedModelProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseFalkorResponse: current merge time - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/netflix/falkor/CachedModelProxy;->access$400()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->this$1:Lcom/netflix/falkor/CachedModelProxy$CmpTask;

    iget-object v1, v1, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;->this$1:Lcom/netflix/falkor/CachedModelProxy$CmpTask;

    iget-object v2, v2, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-static {v2}, Lcom/netflix/falkor/CachedModelProxy;->access$500(Lcom/netflix/falkor/CachedModelProxy;)Lcom/netflix/falkor/BranchNode;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/netflix/falkor/CachedModelProxy;->access$600(Lcom/netflix/falkor/CachedModelProxy;Lcom/google/gson/JsonObject;Lcom/netflix/falkor/BranchNode;)V

    goto :goto_0
.end method

.method protected parsedResponseCanBeNull()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected shouldMaterializeRequest()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
