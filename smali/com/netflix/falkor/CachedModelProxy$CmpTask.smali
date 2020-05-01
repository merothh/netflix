.class abstract Lcom/netflix/falkor/CachedModelProxy$CmpTask;
.super Ljava/lang/Object;
.source "CachedModelProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

.field private getResult:Lcom/netflix/falkor/CachedModelProxy$GetResult;

.field private isAllDataLocalToCache:Z

.field private final taskStartTime:J

.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;


# direct methods
.method private constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 787
    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->taskStartTime:J

    .line 788
    iput-object p2, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    .line 789
    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V
    .locals 0

    .prologue
    .line 779
    invoke-direct {p0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/falkor/CachedModelProxy$CmpTask;)V
    .locals 0

    .prologue
    .line 779
    invoke-direct {p0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->handleSuccess()V

    return-void
.end method

.method static synthetic access$800(Lcom/netflix/falkor/CachedModelProxy$CmpTask;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/falkor/CachedModelProxy$CmpTask;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 779
    invoke-direct {p0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->handleFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private createRequest(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)",
            "Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;"
        }
    .end annotation

    .prologue
    .line 945
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    const-string/jumbo v0, "CachedModelProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Creating remote request for task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with pqls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_0
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v1}, Lcom/netflix/falkor/CachedModelProxy;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/netflix/falkor/CachedModelProxy$CmpTask$1;-><init>(Lcom/netflix/falkor/CachedModelProxy$CmpTask;Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method private doTask()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 812
    .line 816
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 817
    invoke-virtual {p0, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->buildPqlList(Ljava/util/List;)V

    .line 824
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->shouldSkipCache()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->shouldUseCallMethod()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->shouldCustomHandleResponse()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 825
    :cond_0
    sget-boolean v1, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v1, :cond_1

    .line 826
    const-string/jumbo v1, "CachedModelProxy"

    const-string/jumbo v2, "Short-cutting to remote execution..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_1
    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->createRequest(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/falkor/CachedModelProxy;->access$100(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;)V

    .line 871
    :goto_0
    return-void

    .line 836
    :cond_2
    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v1, v0}, Lcom/netflix/falkor/CachedModelProxy;->get(Ljava/util/Collection;)Lcom/netflix/falkor/CachedModelProxy$GetResult;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->getResult:Lcom/netflix/falkor/CachedModelProxy$GetResult;

    .line 837
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->getResult:Lcom/netflix/falkor/CachedModelProxy$GetResult;

    const-string/jumbo v1, "CachedModelProxy"

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy$GetResult;->printPaths(Ljava/lang/String;)V

    .line 844
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->getResult:Lcom/netflix/falkor/CachedModelProxy$GetResult;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy$GetResult;->hasMissingPaths()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->shouldUseCacheOnly()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/netflix/falkor/CachedModelProxy;->access$200()Z

    move-result v0

    if-nez v0, :cond_4

    .line 845
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->getResult:Lcom/netflix/falkor/CachedModelProxy$GetResult;

    iget-object v1, v1, Lcom/netflix/falkor/CachedModelProxy$GetResult;->missingPqls:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 846
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->shouldCollapseMissingPql()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 850
    invoke-static {v0}, Lcom/netflix/falkor/PQL;->collapse(Ljava/util/List;)V

    .line 857
    sget-boolean v1, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v1, :cond_3

    .line 858
    const-string/jumbo v1, "CachedModelProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Collapsed paths to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_3
    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->createRequest(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/falkor/CachedModelProxy;->access$100(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;)V

    goto :goto_0

    .line 864
    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 865
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "%s: No missing paths found - all data is local to cache. shouldUseCacheOnly(): %b, FORCE_CMP_TO_LOCAL_CACHE: %b"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 866
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->shouldUseCacheOnly()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {}, Lcom/netflix/falkor/CachedModelProxy;->access$200()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 865
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_5
    iput-boolean v5, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->isAllDataLocalToCache:Z

    .line 869
    invoke-direct {p0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->handleSuccess()V

    goto/16 :goto_0
.end method

.method private handleFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1124
    invoke-virtual {p0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1131
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1132
    const-string/jumbo v0, "CachedModelProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Called back for failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :cond_0
    return-void
.end method

.method private handleSuccess()V
    .locals 3

    .prologue
    .line 1095
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1097
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-static {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->access$000(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    .line 1098
    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->getResult:Lcom/netflix/falkor/CachedModelProxy$GetResult;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->shouldUseCallMethod()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->shouldCustomHandleResponse()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->shouldSkipCache()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1099
    const-string/jumbo v1, "CachedModelProxy"

    const-string/jumbo v2, "GetResult is null - shouldn\'t happen - forcing failure"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->INTERNAL_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-direct {p0, v0, v1}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->handleFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1121
    :cond_0
    :goto_0
    return-void

    .line 1109
    :cond_1
    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->getResult:Lcom/netflix/falkor/CachedModelProxy$GetResult;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V

    .line 1118
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    const-string/jumbo v0, "CachedModelProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Results fetched - called back for success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected abstract buildPqlList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method protected customHandleResponse(Lcom/google/gson/JsonObject;)V
    .locals 0

    .prologue
    .line 937
    return-void
.end method

.method protected abstract fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
.end method

.method protected getOptionalRequestParams()Ljava/util/List;
    .locals 1
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
    .line 877
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPriorityOverride()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 890
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleJsonError(Lcom/google/gson/JsonObject;)Lcom/android/volley/VolleyError;
    .locals 3

    .prologue
    .line 1141
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error found in json response - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "CachedModelProxy"

    invoke-static {p1, v2}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getErrorMessage(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected isAllDataLocalToCache()Z
    .locals 1

    .prologue
    .line 920
    iget-boolean v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->isAllDataLocalToCache:Z

    return v0
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 793
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 794
    sget-boolean v0, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 795
    const-string/jumbo v0, "CachedModelProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "running "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/LogUtils;->logCurrentThreadName(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->doTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    :goto_0
    return-void

    .line 801
    :catch_0
    move-exception v0

    .line 802
    const-string/jumbo v1, "CachedModelProxy"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 804
    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->INTERNAL_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 805
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->setDisplayMessage(Z)V

    .line 806
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->setMessage(Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-static {v0, v2}, Lcom/netflix/falkor/CachedModelProxy;->access$000(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;->handleFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method protected shouldCollapseMissingPql()Z
    .locals 1

    .prologue
    .line 881
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldCustomHandleResponse()Z
    .locals 1

    .prologue
    .line 929
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldDumpCacheToDiskUponMerge()Z
    .locals 1

    .prologue
    .line 916
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldDumpHttpResponseToDisk()Z
    .locals 1

    .prologue
    .line 909
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldSkipCache()Z
    .locals 1

    .prologue
    .line 902
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldUseAuthorization()Z
    .locals 1

    .prologue
    .line 894
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldUseCacheOnly()Z
    .locals 1

    .prologue
    .line 898
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldUseCallMethod()Z
    .locals 1

    .prologue
    .line 885
    const/4 v0, 0x0

    return v0
.end method

.method protected urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 940
    invoke-static {p1}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
