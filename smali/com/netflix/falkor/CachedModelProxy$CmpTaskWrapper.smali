.class final Lcom/netflix/falkor/CachedModelProxy$CmpTaskWrapper;
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
.field private final taskDetails:Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;

.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;


# direct methods
.method private constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 1221
    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTaskWrapper;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    .line 1222
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    .line 1223
    iput-object p2, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTaskWrapper;->taskDetails:Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;

    .line 1224
    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V
    .locals 0

    .prologue
    .line 1218
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/falkor/CachedModelProxy$CmpTaskWrapper;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 1
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
    .line 1228
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTaskWrapper;->taskDetails:Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;

    invoke-interface {v0, p1}, Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;->buildPqlList(Ljava/util/List;)V

    .line 1229
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTaskWrapper;->taskDetails:Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;

    invoke-interface {v0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;->callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1239
    return-void
.end method

.method protected customHandleResponse(Lcom/google/gson/JsonObject;)V
    .locals 1

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTaskWrapper;->taskDetails:Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;

    invoke-interface {v0, p1}, Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;->customHandleResponse(Lcom/google/gson/JsonObject;)V

    .line 1278
    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 2

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTaskWrapper;->taskDetails:Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTaskWrapper;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;->fetchResultsAndCallbackForSuccess(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V

    .line 1234
    return-void
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
    .line 1243
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTaskWrapper;->taskDetails:Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;

    invoke-interface {v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;->getOptionalRequestParams()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected shouldCollapseMissingPql()Z
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTaskWrapper;->taskDetails:Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;

    invoke-interface {v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;->shouldCollapseMissingPql()Z

    move-result v0

    return v0
.end method

.method protected shouldCustomHandleResponse()Z
    .locals 1

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTaskWrapper;->taskDetails:Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;

    invoke-interface {v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;->shouldCustomHandleResponse()Z

    move-result v0

    return v0
.end method

.method protected shouldSkipCache()Z
    .locals 1

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTaskWrapper;->taskDetails:Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;

    invoke-interface {v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;->shouldSkipCache()Z

    move-result v0

    return v0
.end method

.method protected shouldUseAuthorization()Z
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTaskWrapper;->taskDetails:Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;

    invoke-interface {v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;->shouldUseAuthorization()Z

    move-result v0

    return v0
.end method

.method protected shouldUseCacheOnly()Z
    .locals 1

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTaskWrapper;->taskDetails:Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;

    invoke-interface {v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;->shouldUseCacheOnly()Z

    move-result v0

    return v0
.end method

.method protected shouldUseCallMethod()Z
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$CmpTaskWrapper;->taskDetails:Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;

    invoke-interface {v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;->shouldUseCallMethod()Z

    move-result v0

    return v0
.end method
