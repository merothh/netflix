.class public Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;
.super Ljava/lang/Object;
.source "NfManifestCache.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/manifest/NfManifestCacheInterface;


# static fields
.field private static final DEFAULT_MANIFEST_COUNT:I = 0x14

.field private static final DEFAULT_MANIFEST_COUNT_LOWMEM:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAbortedMovies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

.field private mCachedManifestCount:I

.field private mCallbackHandler:Landroid/os/Handler;

.field private mManifestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifest;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMovies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;",
            ">;"
        }
    .end annotation
.end field

.field private mPriorityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifest;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkHandler:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/os/Looper;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Z)V
    .locals 3

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x14

    iput v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCachedManifestCount:I

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mManifestMap:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mAbortedMovies:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mPendingMovies:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mPriorityList:Ljava/util/List;

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCallbackHandler:Landroid/os/Handler;

    .line 76
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    .line 78
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "NfManifestCacheWorkerThread"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mWorkerThread:Landroid/os/HandlerThread;

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 81
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mWorkHandler:Landroid/os/Handler;

    .line 82
    if-eqz p4, :cond_0

    .line 83
    const/16 v0, 0xa

    iput v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCachedManifestCount:I

    .line 85
    :cond_0
    const-wide/32 v0, 0x44aa200

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->configureManifestLife(J)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mAbortedMovies:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->purgeManifestCache()V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->processPrefetchFailure(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->processPrefetchResponse(Ljava/util/List;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mManifestMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->notifyFetchManifestResult(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->fetchManifest(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->prepareManifests(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mPendingMovies:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mPriorityList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->processManifestResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method private fetchManifest(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V
    .locals 6

    .prologue
    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mPendingMovies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;

    .line 183
    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;->addCallback(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V

    .line 185
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fetchManifests is pending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;->STANDARD:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;

    new-instance v3, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;

    invoke-direct {v3, p0, p1, p2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;-><init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->fetchManifests([Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    goto :goto_0
.end method

.method private notifyFetchManifestResult(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;-><init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 343
    return-void
.end method

.method private prepareManifests(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/Triple",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Lcom/netflix/mediaclient/ui/common/PlayContext;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 220
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 221
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/Triple;

    .line 222
    iget-object v1, v0, Lcom/netflix/mediaclient/util/Triple;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 225
    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mPendingMovies:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 226
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    sget-object v4, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "skip pending movie manifest "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_1
    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mPendingMovies:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;

    .line 230
    iget-object v0, v0, Lcom/netflix/mediaclient/util/Triple;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;->updatePriority(I)V

    goto :goto_0

    .line 232
    :cond_2
    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mManifestMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 233
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 234
    sget-object v4, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "skip cached movie manifest"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_3
    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mManifestMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    .line 237
    iget-object v0, v0, Lcom/netflix/mediaclient/util/Triple;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->setPriority(I)V

    goto/16 :goto_0

    .line 240
    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mPendingMovies:Ljava/util/Map;

    new-instance v5, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;

    iget-object v0, v0, Lcom/netflix/mediaclient/util/Triple;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x0

    invoke-direct {v5, p0, v0, v6}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;-><init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;ILcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "will prepare for movie "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 246
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 247
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "prepare does need fetch manifest"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :goto_1
    return-void

    .line 250
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 251
    const/4 v0, 0x0

    .line 252
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 253
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    move v1, v2

    .line 254
    goto :goto_2

    .line 256
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;->PREFETCH:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;

    new-instance v2, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8;

    invoke-direct {v2, p0, v3}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8;-><init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/util/List;)V

    invoke-virtual {v0, v4, v1, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->fetchManifests([Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    goto :goto_1
.end method

.method private processManifestResponse(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 289
    invoke-static {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->parseManifestResponse(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 290
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    .line 291
    if-nez v0, :cond_1

    .line 292
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "M-CACHE, processManifestResponse has error"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 297
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mManifestMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getMovieId()Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mPriorityList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    sget-object v2, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "M-CACHE, add "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getMovieId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 303
    :cond_2
    return-void
.end method

.method private processPendingMovieList(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mPendingMovies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;

    .line 311
    if-eqz v0, :cond_0

    .line 312
    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;->access$1300(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;)Ljava/util/List;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_0

    .line 314
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;

    .line 315
    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->notifyFetchManifestResult(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V

    goto :goto_0

    .line 319
    :cond_0
    return-void
.end method

.method private processPrefetchFailure(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 306
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->processPendingMovieList(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V

    goto :goto_0

    .line 308
    :cond_0
    return-void
.end method

.method private processPrefetchResponse(Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 278
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->processManifestResponse(Lorg/json/JSONObject;)V

    .line 279
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 280
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mManifestMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    .line 281
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mPendingMovies:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;

    .line 282
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;->getmPriority()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->setPriority(I)V

    .line 285
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->processPendingMovieList(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V

    goto :goto_0

    .line 287
    :cond_1
    return-void
.end method

.method private purgeManifestCache()V
    .locals 8

    .prologue
    .line 345
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mPriorityList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 346
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mPriorityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCachedManifestCount:I

    sub-int v2, v0, v1

    .line 347
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "M-CACHE, now has "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mManifestMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", excessive entries "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mPriorityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 352
    const/4 v0, 0x0

    move v1, v0

    .line 353
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 354
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    .line 355
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getRemainLife()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    if-ge v1, v2, :cond_3

    .line 356
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 357
    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mManifestMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getMovieId()Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 359
    sget-object v4, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "M-CACHE, remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getMovieId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 365
    goto :goto_0

    .line 366
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 367
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "M-CACHE, now has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mManifestMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_4
    return-void
.end method


# virtual methods
.method public abort(Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$3;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$3;-><init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/lang/Long;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method

.method public clearAll()V
    .locals 2

    .prologue
    .line 152
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "clear all manifest"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$5;-><init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$6;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$6;-><init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    return-void
.end method

.method public getManifestAsync(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V
    .locals 3

    .prologue
    .line 90
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getManifestAsync for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$1;-><init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/lang/Long;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;-><init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    return-void
.end method

.method public onBackgroundTrimMem()V
    .locals 0

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->clearAll()V

    .line 177
    return-void
.end method

.method public prepare(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/Triple",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Lcom/netflix/mediaclient/ui/common/PlayContext;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 132
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 133
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "prepare has list contains no movie"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "prepare movies"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/Triple;

    .line 139
    sget-object v2, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "movieId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/netflix/mediaclient/util/Triple;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", priority = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/netflix/mediaclient/util/Triple;->second:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$4;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$4;-><init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 172
    return-void
.end method
