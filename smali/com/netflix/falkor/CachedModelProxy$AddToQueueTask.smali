.class Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;
.super Lcom/netflix/falkor/CachedModelProxy$CmpTask;
.source "CachedModelProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/falkor/CachedModelProxy",
        "<TT;>.CmpTask;"
    }
.end annotation


# static fields
.field private static final PARAM:Ljava/lang/String; = "param"

.field private static final SUFFIX:Ljava/lang/String; = "pathSuffix"


# instance fields
.field private final includeKubrick:Z

.field private final iqLomoId:Ljava/lang/String;

.field private final iqLomoIndex:Ljava/lang/String;

.field private final isIqLomoValid:Z

.field private final lolomoId:Ljava/lang/String;

.field private final messageToken:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;

.field private final trackId:Ljava/lang/String;

.field private final type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private final videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p10, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    iput-object p2, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->videoId:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object p4, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->lolomoId:Ljava/lang/String;

    iput-object p5, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->iqLomoId:Ljava/lang/String;

    iput-object p6, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->iqLomoIndex:Ljava/lang/String;

    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->trackId:Ljava/lang/String;

    iput-object p9, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->messageToken:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->includeKubrick:Z

    invoke-static {p5}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->isIqLomoValid:Z

    return-void
.end method

.method private doDebugValidation()V
    .locals 0

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

    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->isIqLomoValid:Z

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "lolomos"

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->lolomoId:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string/jumbo v1, "add"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->videoId:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string/jumbo v1, "addToQueue"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->ALREADY_IN_QUEUE:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Add to queue failed - video already in queue"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    const v1, 0x7f080232

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->displayedError:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-static {p2, v0, v1}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createUIError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v1}, Lcom/netflix/falkor/CachedModelProxy;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportAddToQueueActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;)V

    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onQueueAdd(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    :cond_0
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Add to queue failed - general error"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    const v1, 0x7f080176

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v3, "Add to queue was successful"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->lolomoId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->isIqLomoValid:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->isIqLomoValid:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "lists"

    aput-object v5, v4, v2

    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->iqLomoId:Ljava/lang/String;

    aput-object v2, v4, v1

    invoke-static {v4}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netflix/falkor/CachedModelProxy;->access$2500(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/falkor/PQL;)V

    :cond_0
    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v4, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->videoId:Ljava/lang/String;

    invoke-static {v2, v3, v4, v1}, Lcom/netflix/falkor/CachedModelProxy;->access$3100(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v1}, Lcom/netflix/falkor/CachedModelProxy;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->sendIqRefreshBrodcast(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v1}, Lcom/netflix/falkor/CachedModelProxy;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v1, v2, v6, v6}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportAddToQueueActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;)V

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onQueueAdd(Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz v0, :cond_1

    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "addToQueue new user case"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getFalkorAgent()Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->refreshLolomo()V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method protected getOptionalRequestParams()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/DataUtil$StringPair;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v0, 0x8

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-boolean v0, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->isIqLomoValid:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->doDebugValidation()V

    const-string/jumbo v0, "\'%s\'"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->iqLomoId:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "[\'%s\',\'%s\']"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->videoId:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "[{\'from\':%d,\'to\':%d}, %s]"

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-static {v0}, Lcom/netflix/falkor/CachedModelProxy;->access$2900(Lcom/netflix/falkor/CachedModelProxy;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-static {v0}, Lcom/netflix/falkor/CachedModelProxy;->access$3000(Lcom/netflix/falkor/CachedModelProxy;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    iget-boolean v0, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->includeKubrick:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "[\'summary\', \'kubrick\']"

    :goto_0
    aput-object v0, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "[\'summary\']"

    new-instance v5, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v6, "param"

    invoke-virtual {p0, v2}, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v6, v2}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v5, "param"

    iget-object v6, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->iqLomoIndex:Ljava/lang/String;

    invoke-direct {v2, v5, v6}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v5, "param"

    invoke-virtual {p0, v3}, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v3, "param"

    iget-object v5, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->trackId:Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v3, "pathSuffix"

    invoke-virtual {p0, v0}, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v2, "pathSuffix"

    invoke-virtual {p0, v4}, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->messageToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v2, "signature"

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->messageToken:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v1

    :cond_1
    const-string/jumbo v0, "\'summary\'"

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v2, "param"

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;->trackId:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected handleJsonError(Lcom/google/gson/JsonObject;)Lcom/android/volley/VolleyError;
    .locals 2

    const-string/jumbo v0, "CachedModelProxy"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getErrorMessage(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->isAlreadyInQueue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Video already in queue"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->ALREADY_IN_QUEUE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->wasRequestNotValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Add to Queue Request not valid"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NOT_VALID:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected shouldUseCallMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
