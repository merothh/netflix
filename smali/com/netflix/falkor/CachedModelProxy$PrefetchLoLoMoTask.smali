.class Lcom/netflix/falkor/CachedModelProxy$PrefetchLoLoMoTask;
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
.field private final includeExtraCharacters:Z

.field private final includeKubrick:Z

.field private final skipCache:Z

.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;

.field private final toBBVideo:I

.field private final toCWVideo:I

.field private final toLomo:I

.field private final toVideo:I


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;IIIIZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 1292
    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchLoLoMoTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    .line 1293
    const/4 v0, 0x0

    invoke-direct {p0, p1, p9, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    .line 1294
    iput p2, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchLoLoMoTask;->toLomo:I

    .line 1295
    iput p3, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchLoLoMoTask;->toVideo:I

    .line 1296
    iput p4, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchLoLoMoTask;->toCWVideo:I

    .line 1297
    iput p5, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchLoLoMoTask;->toBBVideo:I

    .line 1298
    iput-boolean p6, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchLoLoMoTask;->includeExtraCharacters:Z

    .line 1299
    iput-boolean p7, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchLoLoMoTask;->includeKubrick:Z

    .line 1300
    iput-boolean p8, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchLoLoMoTask;->skipCache:Z

    .line 1301
    return-void
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 8
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
    const/4 v3, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1310
    new-array v0, v7, [Ljava/lang/Object;

    const-string/jumbo v1, "lolomo"

    aput-object v1, v0, v4

    iget v1, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchLoLoMoTask;->toLomo:I

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "summary"

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1311
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v0, "lolomo"

    aput-object v0, v1, v4

    iget v0, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchLoLoMoTask;->toLomo:I

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v0

    aput-object v0, v1, v5

    iget v0, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchLoLoMoTask;->toVideo:I

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v0

    aput-object v0, v1, v6

    iget-boolean v0, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchLoLoMoTask;->includeKubrick:Z

    if-eqz v0, :cond_1

    new-array v0, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "summary"

    aput-object v2, v0, v4

    const-string/jumbo v2, "kubrick"

    aput-object v2, v0, v5

    const-string/jumbo v2, "rating"

    aput-object v2, v0, v6

    .line 1312
    invoke-static {v0}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    aput-object v0, v1, v7

    .line 1311
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1314
    iget v0, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchLoLoMoTask;->toCWVideo:I

    invoke-static {p1, v4, v0}, Lcom/netflix/falkor/CachedModelProxy;->access$1100(Ljava/util/List;II)V

    .line 1315
    iget v0, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchLoLoMoTask;->toBBVideo:I

    invoke-static {p1, v4, v0}, Lcom/netflix/falkor/CachedModelProxy;->access$1200(Ljava/util/List;II)V

    .line 1317
    iget-boolean v0, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchLoLoMoTask;->includeExtraCharacters:Z

    if-eqz v0, :cond_0

    .line 1318
    iget v0, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchLoLoMoTask;->toVideo:I

    add-int/lit8 v0, v0, 0x1

    .line 1319
    iget v1, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchLoLoMoTask;->toVideo:I

    add-int/2addr v1, v0

    .line 1320
    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "lolomo"

    aput-object v3, v2, v4

    const-string/jumbo v3, "characters"

    aput-object v3, v2, v5

    invoke-static {v0, v1}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v0

    aput-object v0, v2, v6

    const-string/jumbo v0, "summary"

    aput-object v0, v2, v7

    invoke-static {v2}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1322
    :cond_0
    return-void

    .line 1312
    :cond_1
    const-string/jumbo v0, "summary"

    goto :goto_0
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 1342
    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1343
    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 3

    .prologue
    .line 1335
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy$PrefetchLoLoMoTask;->isAllDataLocalToCache()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;Z)V

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1337
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchLoLoMoTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchLoLoMoTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v1}, Lcom/netflix/falkor/CachedModelProxy;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->access$1300(Lcom/netflix/falkor/CachedModelProxy;Landroid/content/Context;)V

    .line 1338
    return-void
.end method

.method protected getOptionalRequestParams()Ljava/util/List;
    .locals 4
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
    .line 1326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1327
    invoke-static {}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->getOnRampLatch()Lcom/netflix/mediaclient/ui/signup/OnRampActivity$Latch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$Latch;->getValueAndLatch()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1328
    new-instance v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v2, "isFirstLolomoAfterOnRamp"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1330
    :cond_0
    return-object v0
.end method

.method protected shouldSkipCache()Z
    .locals 1

    .prologue
    .line 1305
    iget-boolean v0, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchLoLoMoTask;->skipCache:Z

    return v0
.end method
