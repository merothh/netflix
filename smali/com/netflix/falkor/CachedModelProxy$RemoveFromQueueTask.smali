.class Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;
.super Lcom/netflix/falkor/CachedModelProxy$CmpTask;
.source "CachedModelProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/falkor/CachedModelProxy",
        "<TT;>.CmpTask;"
    }
.end annotation


# instance fields
.field private final iqLomoId:Ljava/lang/String;

.field private final iqLomoIndex:Ljava/lang/String;

.field private final isIqLomoValid:Z

.field private final lolomoId:Ljava/lang/String;

.field private final messageToken:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;

.field private final type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private final videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 3227
    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    .line 3228
    const/4 v0, 0x0

    invoke-direct {p0, p1, p8, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    .line 3230
    iput-object p2, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->videoId:Ljava/lang/String;

    .line 3231
    iput-object p3, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 3232
    iput-object p4, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->lolomoId:Ljava/lang/String;

    .line 3233
    iput-object p5, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->iqLomoId:Ljava/lang/String;

    .line 3234
    iput-object p6, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->iqLomoIndex:Ljava/lang/String;

    .line 3235
    iput-object p7, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->messageToken:Ljava/lang/String;

    .line 3237
    invoke-static {p5}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->isIqLomoValid:Z

    .line 3238
    return-void
.end method

.method private doDebugValidation()V
    .locals 0

    .prologue
    .line 3282
    return-void
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3242
    iget-boolean v0, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->isIqLomoValid:Z

    if-eqz v0, :cond_0

    .line 3243
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "lolomos"

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->lolomoId:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string/jumbo v1, "remove"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3248
    :goto_0
    return-void

    .line 3246
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->videoId:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string/jumbo v1, "removeFromQueue"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 3335
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NOT_IN_QUEUE:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_0

    .line 3336
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Remove from queue failed - video was not in queue"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    const v1, 0x7f0801c2

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3343
    :goto_0
    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->displayedError:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-static {p2, v0, v1}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createUIError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v0

    .line 3344
    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v1}, Lcom/netflix/falkor/CachedModelProxy;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportRemoveFromQueueActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 3346
    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onQueueRemove(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 3347
    return-void

    .line 3340
    :cond_0
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Remove from queue failed - general error"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    const v1, 0x7f080179

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3320
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Remove from queue was successful"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3321
    iget-boolean v0, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->isIqLomoValid:Z

    if-eqz v0, :cond_0

    .line 3322
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "lists"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->iqLomoId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->access$2500(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/falkor/PQL;)V

    .line 3324
    :cond_0
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->videoId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v4}, Lcom/netflix/falkor/CachedModelProxy;->access$3100(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Z)V

    .line 3326
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->sendIqRefreshBrodcast(Landroid/content/Context;)V

    .line 3327
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportRemoveFromQueueActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 3329
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onQueueRemove(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 3330
    return-void
.end method

.method protected getOptionalRequestParams()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/DataUtil$StringPair;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3259
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3260
    iget-boolean v1, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->isIqLomoValid:Z

    if-eqz v1, :cond_0

    .line 3261
    invoke-direct {p0}, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->doDebugValidation()V

    .line 3263
    const-string/jumbo v1, "[\'%s\',\'%s\']"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->videoId:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3264
    const-string/jumbo v2, "[{\'from\':%d,\'to\':%d}, \'summary\']"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-static {v4}, Lcom/netflix/falkor/CachedModelProxy;->access$2900(Lcom/netflix/falkor/CachedModelProxy;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-static {v4}, Lcom/netflix/falkor/CachedModelProxy;->access$3000(Lcom/netflix/falkor/CachedModelProxy;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3265
    const-string/jumbo v3, "[\'summary\']"

    .line 3267
    new-instance v4, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v5, "param"

    iget-object v6, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->iqLomoIndex:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3268
    new-instance v4, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v5, "param"

    invoke-virtual {p0, v1}, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3269
    new-instance v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v4, "pathSuffix"

    invoke-virtual {p0, v2}, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3270
    new-instance v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v2, "pathSuffix"

    invoke-virtual {p0, v3}, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3273
    :cond_0
    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->messageToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3274
    new-instance v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v2, "signature"

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->messageToken:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3277
    :cond_1
    return-object v0
.end method

.method protected handleJsonError(Lcom/google/gson/JsonObject;)Lcom/android/volley/VolleyError;
    .locals 2

    .prologue
    .line 3309
    const-string/jumbo v0, "CachedModelProxy"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getErrorMessage(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3310
    invoke-static {v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->isNotInQueue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3311
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NOT_IN_QUEUE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 3314
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected shouldUseCallMethod()Z
    .locals 1

    .prologue
    .line 3252
    const/4 v0, 0x1

    return v0
.end method
