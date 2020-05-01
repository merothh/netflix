.class public Lcom/netflix/falkor/CachedModelProxy;
.super Ljava/lang/Object;
.source "CachedModelProxy.java"

# interfaces
.implements Lcom/netflix/falkor/ModelProxy;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/netflix/falkor/BranchNode;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/netflix/falkor/ModelProxy",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final ACTION_NOTIFY_OF_RATINGS_CHANGE:Ljava/lang/String; = "com.netflix.falkor.ACTION_NOTIFY_OF_RATINGS_CHANGE"

.field private static final BB_CURR_EPISODE_PQL:Lcom/netflix/falkor/PQL;

.field private static final BB_VIDEO_LEAF_PQL:Lcom/netflix/falkor/PQL;

.field private static final CW_CURR_EPISODE_PQL:Lcom/netflix/falkor/PQL;

.field private static final CW_VIDEO_LEAF_PQL:Lcom/netflix/falkor/PQL;

.field private static final ENABLE_LOG_TIMING:Z = false

.field public static final EXTRA_USER_RATING:Ljava/lang/String; = "extra_user_rating"

.field public static final EXTRA_VIDEO_ID:Ljava/lang/String; = "extra_video_id"

.field private static final FETCH_EPISODES_LEAF_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;"
        }
    .end annotation
.end field

.field public static final FETCH_EPISODES_REQUEST_BATCH_SIZE:I = 0x28

.field private static FORCE_CMP_TO_LOCAL_CACHE:Z = false

.field private static final FROM_SEASON:I = 0x0

.field private static final JSON_VALUE:Ljava/lang/String; = "value"

.field private static final MAX_KIDS_CHARACTER_GALLERY_VIDEOS:I = 0x64

.field public static final MAX_SEARCH_RESULTS_PER_SECTION_INDEX:I = 0x13

.field private static final MAX_VIDEO_DETAILS_SIMILARS_COUNT:I = 0xc

.field private static final MS_SUFFIX:Ljava/lang/String; = "ms"

.field private static final NEWLINE:Ljava/lang/String; = "\n"

.field private static final ORIGINALS_BILLBOARDS_ENABLED:Z = true

.field private static final PREFETCH_BILLBOARD_VIDEO_INDEX:I = 0x9

.field private static final REQUEST_PARAM_KEY:Ljava/lang/String; = "param"

.field private static final REQUEST_PATH_SUFFIX_KEY:Ljava/lang/String; = "pathSuffix"

.field private static final SEARCH_LEAF_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;"
        }
    .end annotation
.end field

.field private static final SEARCH_RESULT_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CachedModelProxy"

.field private static final TAG_TIMING:Ljava/lang/String; = "CachedModelProxy_Timing"

.field private static final TO_SEASON:I = 0x63

.field private static sLastWriteTimeMS:J


# instance fields
.field private final jsonParser:Lcom/google/gson/JsonParser;

.field private lastPrefetchFromVideo:I

.field private lastPrefetchToVideo:I

.field private final mainHandler:Landroid/os/Handler;

.field private final root:Lcom/netflix/falkor/BranchNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final serviceProvider:Lcom/netflix/falkor/ServiceProvider;

.field private final webClient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 166
    sput-boolean v4, Lcom/netflix/falkor/CachedModelProxy;->FORCE_CMP_TO_LOCAL_CACHE:Z

    .line 2634
    new-array v0, v7, [Ljava/lang/Object;

    const-string/jumbo v1, "videos"

    aput-object v1, v0, v4

    const-string/jumbo v1, "people"

    aput-object v1, v0, v5

    const-string/jumbo v1, "suggestions"

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/netflix/falkor/CachedModelProxy;->SEARCH_RESULT_TYPES:Ljava/util/List;

    .line 2635
    new-array v0, v6, [Ljava/lang/Object;

    const-string/jumbo v1, "summary"

    aput-object v1, v0, v4

    const-string/jumbo v1, "searchTitle"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/netflix/falkor/CachedModelProxy;->SEARCH_LEAF_TYPES:Ljava/util/List;

    .line 2636
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "summary"

    aput-object v1, v0, v4

    const-string/jumbo v1, "detail"

    aput-object v1, v0, v5

    const-string/jumbo v1, "bookmark"

    aput-object v1, v0, v6

    const-string/jumbo v1, "offlineAvailable"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/netflix/falkor/CachedModelProxy;->FETCH_EPISODES_LEAF_TYPES:Ljava/util/List;

    .line 3727
    new-array v0, v5, [Ljava/lang/Object;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "summary"

    aput-object v2, v1, v4

    const-string/jumbo v2, "detail"

    aput-object v2, v1, v5

    const-string/jumbo v2, "rating"

    aput-object v2, v1, v6

    const-string/jumbo v2, "inQueue"

    aput-object v2, v1, v7

    const-string/jumbo v2, "bookmark"

    aput-object v2, v1, v3

    const/4 v2, 0x5

    const-string/jumbo v3, "offlineAvailable"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "cleanBoxart"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    sput-object v0, Lcom/netflix/falkor/CachedModelProxy;->CW_VIDEO_LEAF_PQL:Lcom/netflix/falkor/PQL;

    .line 3728
    new-array v0, v7, [Ljava/lang/Object;

    const-string/jumbo v1, "episodes"

    aput-object v1, v0, v4

    const-string/jumbo v1, "current"

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "detail"

    aput-object v2, v1, v4

    const-string/jumbo v2, "bookmark"

    aput-object v2, v1, v5

    const-string/jumbo v2, "offlineAvailable"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    sput-object v0, Lcom/netflix/falkor/CachedModelProxy;->CW_CURR_EPISODE_PQL:Lcom/netflix/falkor/PQL;

    .line 3729
    sget-object v0, Lcom/netflix/falkor/CachedModelProxy;->CW_VIDEO_LEAF_PQL:Lcom/netflix/falkor/PQL;

    sput-object v0, Lcom/netflix/falkor/CachedModelProxy;->BB_VIDEO_LEAF_PQL:Lcom/netflix/falkor/PQL;

    .line 3730
    sget-object v0, Lcom/netflix/falkor/CachedModelProxy;->CW_CURR_EPISODE_PQL:Lcom/netflix/falkor/PQL;

    sput-object v0, Lcom/netflix/falkor/CachedModelProxy;->BB_CURR_EPISODE_PQL:Lcom/netflix/falkor/PQL;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/falkor/ServiceProvider;Lcom/netflix/falkor/BranchNode;Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/ServiceProvider;",
            "TT;",
            "Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;",
            ")V"
        }
    .end annotation

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    iput-object v0, p0, Lcom/netflix/falkor/CachedModelProxy;->jsonParser:Lcom/google/gson/JsonParser;

    .line 224
    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy;->serviceProvider:Lcom/netflix/falkor/ServiceProvider;

    .line 225
    iput-object p2, p0, Lcom/netflix/falkor/CachedModelProxy;->root:Lcom/netflix/falkor/BranchNode;

    .line 226
    iput-object p3, p0, Lcom/netflix/falkor/CachedModelProxy;->webClient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    .line 227
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/falkor/CachedModelProxy;->mainHandler:Landroid/os/Handler;

    .line 228
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/netflix/falkor/CachedModelProxy;->createHandlerWrapper(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/netflix/falkor/CachedModelProxy;->executeRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;)V

    return-void
.end method

.method static synthetic access$1100(Ljava/util/List;II)V
    .locals 0

    .prologue
    .line 156
    invoke-static {p0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->buildCwPql(Ljava/util/List;II)V

    return-void
.end method

.method static synthetic access$1200(Ljava/util/List;II)V
    .locals 0

    .prologue
    .line 156
    invoke-static {p0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->buildBillboardPql(Ljava/util/List;II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/netflix/falkor/CachedModelProxy;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/netflix/falkor/CachedModelProxy;->sendDetailPageReloadBroadcast(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/netflix/falkor/CachedModelProxy;Ljava/util/Collection;)Ljava/util/List;
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/netflix/falkor/CachedModelProxy;->getLists(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Landroid/util/Pair;
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLomoByType(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()Lcom/netflix/falkor/PQL;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/netflix/falkor/CachedModelProxy;->CW_CURR_EPISODE_PQL:Lcom/netflix/falkor/PQL;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/netflix/falkor/CachedModelProxy;)Ljava/util/List;
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/netflix/falkor/CachedModelProxy;->getGenreList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/falkor/PQL;)Lcom/netflix/model/branches/FalkorObject;
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/netflix/falkor/CachedModelProxy;->getVideo(Lcom/netflix/falkor/PQL;)Lcom/netflix/model/branches/FalkorObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 156
    invoke-static {p0, p1}, Lcom/netflix/falkor/CachedModelProxy;->buildMovieDetailsPQLs(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 156
    sget-boolean v0, Lcom/netflix/falkor/CachedModelProxy;->FORCE_CMP_TO_LOCAL_CACHE:Z

    return v0
.end method

.method static synthetic access$2000(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZZ)V
    .locals 0

    .prologue
    .line 156
    invoke-static/range {p0 .. p5}, Lcom/netflix/falkor/CachedModelProxy;->buildShowDetailsPQL(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method static synthetic access$2100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/falkor/PQL;
    .locals 1

    .prologue
    .line 156
    invoke-static {p0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->buildScenePql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300()Lcom/netflix/falkor/PQL;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/netflix/falkor/CachedModelProxy;->CW_VIDEO_LEAF_PQL:Lcom/netflix/falkor/PQL;

    return-object v0
.end method

.method static synthetic access$2400(Ljava/util/List;)Lcom/netflix/falkor/PQL;
    .locals 1

    .prologue
    .line 156
    invoke-static {p0}, Lcom/netflix/falkor/CachedModelProxy;->getSeasonsPQL(Ljava/util/List;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/falkor/PQL;)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/netflix/falkor/CachedModelProxy;->invalidate(Lcom/netflix/falkor/PQL;)V

    return-void
.end method

.method static synthetic access$2600()Ljava/util/List;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/netflix/falkor/CachedModelProxy;->FETCH_EPISODES_LEAF_TYPES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2700()Ljava/util/List;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/netflix/falkor/CachedModelProxy;->SEARCH_RESULT_TYPES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2800()Ljava/util/List;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/netflix/falkor/CachedModelProxy;->SEARCH_LEAF_TYPES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/netflix/falkor/CachedModelProxy;)I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/netflix/falkor/CachedModelProxy;->lastPrefetchFromVideo:I

    return v0
.end method

.method static synthetic access$300(Lcom/netflix/falkor/CachedModelProxy;)Lcom/google/gson/JsonParser;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy;->jsonParser:Lcom/google/gson/JsonParser;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/netflix/falkor/CachedModelProxy;)I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/netflix/falkor/CachedModelProxy;->lastPrefetchToVideo:I

    return v0
.end method

.method static synthetic access$3100(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/falkor/CachedModelProxy;->updateInQueueStatus(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400()J
    .locals 2

    .prologue
    .line 156
    sget-wide v0, Lcom/netflix/falkor/CachedModelProxy;->sLastWriteTimeMS:J

    return-wide v0
.end method

.method static synthetic access$402(J)J
    .locals 0

    .prologue
    .line 156
    sput-wide p0, Lcom/netflix/falkor/CachedModelProxy;->sLastWriteTimeMS:J

    return-wide p0
.end method

.method static synthetic access$500(Lcom/netflix/falkor/CachedModelProxy;)Lcom/netflix/falkor/BranchNode;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy;->root:Lcom/netflix/falkor/BranchNode;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/falkor/CachedModelProxy;Lcom/google/gson/JsonObject;Lcom/netflix/falkor/BranchNode;)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->merge(Lcom/google/gson/JsonObject;Lcom/netflix/falkor/BranchNode;)V

    return-void
.end method

.method private static buildBillboardPql(Ljava/util/List;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3738
    sget-object v0, Lcom/netflix/falkor/CachedModelProxy;->BB_VIDEO_LEAF_PQL:Lcom/netflix/falkor/PQL;

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "lolomo"

    aput-object v2, v1, v3

    const-string/jumbo v2, "billboard"

    aput-object v2, v1, v4

    const-string/jumbo v2, "videoEvidence"

    aput-object v2, v1, v5

    invoke-static {p1, p2}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/PQL;->prepend(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3739
    sget-object v0, Lcom/netflix/falkor/CachedModelProxy;->BB_CURR_EPISODE_PQL:Lcom/netflix/falkor/PQL;

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "lolomo"

    aput-object v2, v1, v3

    const-string/jumbo v2, "billboard"

    aput-object v2, v1, v4

    const-string/jumbo v2, "videoEvidence"

    aput-object v2, v1, v5

    invoke-static {p1, p2}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/PQL;->prepend(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3741
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "lolomo"

    aput-object v1, v0, v3

    const-string/jumbo v1, "billboard"

    aput-object v1, v0, v4

    const-string/jumbo v1, "billboardData"

    aput-object v1, v0, v5

    invoke-static {p1, p2}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v6

    const-string/jumbo v1, "billboardSummary"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3742
    return-void
.end method

.method private static buildCwPql(Ljava/util/List;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3733
    sget-object v0, Lcom/netflix/falkor/CachedModelProxy;->CW_VIDEO_LEAF_PQL:Lcom/netflix/falkor/PQL;

    new-array v1, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "lolomo"

    aput-object v2, v1, v3

    const-string/jumbo v2, "continueWatching"

    aput-object v2, v1, v4

    invoke-static {p1, p2}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/PQL;->prepend(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3734
    sget-object v0, Lcom/netflix/falkor/CachedModelProxy;->CW_CURR_EPISODE_PQL:Lcom/netflix/falkor/PQL;

    new-array v1, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "lolomo"

    aput-object v2, v1, v3

    const-string/jumbo v2, "continueWatching"

    aput-object v2, v1, v4

    invoke-static {p1, p2}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/PQL;->prepend(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3735
    return-void
.end method

.method public static buildKidsCharacterVideoGalleryPql(Ljava/lang/String;)Lcom/netflix/falkor/PQL;
    .locals 3

    .prologue
    .line 3761
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "characters"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "gallery"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x64

    invoke-static {v2}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "summary"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    return-object v0
.end method

.method private static buildMovieDetailsPQLs(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1912
    new-array v0, v6, [Ljava/lang/Object;

    const-string/jumbo v1, "movies"

    aput-object v1, v0, v3

    aput-object p1, v0, v4

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "summary"

    aput-object v2, v1, v3

    const-string/jumbo v2, "detail"

    aput-object v2, v1, v4

    const-string/jumbo v2, "rating"

    aput-object v2, v1, v5

    const-string/jumbo v2, "inQueue"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string/jumbo v3, "bookmark"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "offlineAvailable"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "evidence"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "defaultTrailer"

    aput-object v3, v1, v2

    .line 1913
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v5

    .line 1912
    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1914
    invoke-static {v4, p1}, Lcom/netflix/falkor/CachedModelProxy;->buildVideoSimsPql(ZLjava/util/List;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1915
    invoke-static {v4, p1}, Lcom/netflix/falkor/CachedModelProxy;->buildVideoSimsSummaryPql(ZLjava/util/List;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1916
    return-void
.end method

.method private static buildScenePql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/falkor/PQL;
    .locals 3

    .prologue
    .line 3757
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "scenes"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "summary"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    return-object v0
.end method

.method private static buildShowDetailsPQL(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZZ)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1919
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1920
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "summary"

    aput-object v2, v1, v3

    const-string/jumbo v2, "detail"

    aput-object v2, v1, v4

    const-string/jumbo v2, "rating"

    aput-object v2, v1, v5

    const-string/jumbo v2, "inQueue"

    aput-object v2, v1, v6

    const-string/jumbo v2, "defaultTrailer"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1921
    if-eqz p4, :cond_0

    .line 1922
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "kubrick"

    aput-object v2, v1, v3

    const-string/jumbo v2, "heroImgs"

    aput-object v2, v1, v4

    const-string/jumbo v2, "evidence"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1924
    :cond_0
    new-array v1, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "shows"

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1926
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "shows"

    aput-object v1, v0, v3

    aput-object p1, v0, v4

    const-string/jumbo v1, "episodes"

    aput-object v1, v0, v5

    const-string/jumbo v1, "current"

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "detail"

    aput-object v2, v1, v3

    const-string/jumbo v2, "bookmark"

    aput-object v2, v1, v4

    const-string/jumbo v2, "offlineAvailable"

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1929
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1930
    new-array v0, v6, [Ljava/lang/Object;

    const-string/jumbo v1, "episodes"

    aput-object v1, v0, v3

    aput-object p2, v0, v4

    new-array v1, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "detail"

    aput-object v2, v1, v3

    const-string/jumbo v2, "bookmark"

    aput-object v2, v1, v4

    const-string/jumbo v2, "offlineAvailable"

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1933
    :cond_1
    invoke-static {v3, p1}, Lcom/netflix/falkor/CachedModelProxy;->buildVideoSimsPql(ZLjava/util/List;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1934
    invoke-static {v3, p1}, Lcom/netflix/falkor/CachedModelProxy;->buildVideoSimsSummaryPql(ZLjava/util/List;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1936
    if-eqz p3, :cond_2

    .line 1937
    invoke-static {p1}, Lcom/netflix/falkor/CachedModelProxy;->getSeasonsPQL(Ljava/util/List;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1940
    :cond_2
    if-eqz p5, :cond_3

    .line 1941
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "shows"

    aput-object v1, v0, v3

    aput-object p1, v0, v4

    const-string/jumbo v1, "seasons"

    aput-object v1, v0, v5

    const-string/jumbo v1, "current"

    aput-object v1, v0, v6

    const-string/jumbo v1, "episodes"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x27

    invoke-static {v3, v2}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/falkor/CachedModelProxy;->FETCH_EPISODES_LEAF_TYPES:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1943
    :cond_3
    return-void
.end method

.method public static buildVideoSimsPql(ZLjava/lang/String;)Lcom/netflix/falkor/PQL;
    .locals 3

    .prologue
    .line 3745
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "movies"

    :goto_0
    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const/4 v0, 0x2

    const-string/jumbo v2, "similars"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const/16 v2, 0xb

    .line 3747
    invoke-static {v2}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string/jumbo v2, "summary"

    aput-object v2, v1, v0

    .line 3745
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "shows"

    goto :goto_0
.end method

.method private static buildVideoSimsPql(ZLjava/util/List;)Lcom/netflix/falkor/PQL;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/falkor/PQL;"
        }
    .end annotation

    .prologue
    .line 1951
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "movies"

    :goto_0
    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const/4 v0, 0x2

    const-string/jumbo v2, "similars"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const/16 v2, 0xb

    .line 1953
    invoke-static {v2}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string/jumbo v2, "summary"

    aput-object v2, v1, v0

    .line 1951
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "shows"

    goto :goto_0
.end method

.method private static buildVideoSimsSummaryPql(ZLjava/lang/String;)Lcom/netflix/falkor/PQL;
    .locals 3

    .prologue
    .line 3751
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "movies"

    :goto_0
    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const/4 v0, 0x2

    const-string/jumbo v2, "similars"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string/jumbo v2, "summary"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "shows"

    goto :goto_0
.end method

.method private static buildVideoSimsSummaryPql(ZLjava/util/List;)Lcom/netflix/falkor/PQL;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/falkor/PQL;"
        }
    .end annotation

    .prologue
    .line 1957
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "movies"

    :goto_0
    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const/4 v0, 0x2

    const-string/jumbo v2, "similars"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string/jumbo v2, "summary"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "shows"

    goto :goto_0
.end method

.method private createHandlerWrapper(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;
    .locals 2

    .prologue
    .line 521
    new-instance v0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy;->mainHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;-><init>(Landroid/os/Handler;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-object v0
.end method

.method private doDumpCacheToDiskRecursive(Ljava/lang/StringBuilder;Lcom/netflix/falkor/BranchNode;IZ)V
    .locals 5

    .prologue
    .line 4185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4186
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    .line 4187
    add-int/lit8 v0, p3, -0x1

    if-ne v1, v0, :cond_0

    const-string/jumbo v0, " |-"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4186
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4187
    :cond_0
    const-string/jumbo v0, " | "

    goto :goto_1

    .line 4190
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4192
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Lcom/netflix/falkor/BranchNode;->getKeys()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4193
    if-eqz p4, :cond_2

    .line 4194
    new-instance v1, Lcom/netflix/mediaclient/util/AlphanumComparator;

    invoke-direct {v1}, Lcom/netflix/mediaclient/util/AlphanumComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4196
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4197
    invoke-interface {p2, v0}, Lcom/netflix/falkor/BranchNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 4198
    instance-of v4, v1, Lcom/netflix/falkor/Ref;

    if-eqz v4, :cond_4

    .line 4199
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " -> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v1

    check-cast v0, Lcom/netflix/falkor/Ref;

    invoke-virtual {v0}, Lcom/netflix/falkor/Ref;->getRefPath()Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4208
    :goto_3
    instance-of v0, v1, Lcom/netflix/falkor/BranchNode;

    if-eqz v0, :cond_3

    .line 4209
    check-cast v1, Lcom/netflix/falkor/BranchNode;

    add-int/lit8 v0, p3, 0x1

    const/4 v4, 0x1

    invoke-direct {p0, p1, v1, v0, v4}, Lcom/netflix/falkor/CachedModelProxy;->doDumpCacheToDiskRecursive(Ljava/lang/StringBuilder;Lcom/netflix/falkor/BranchNode;IZ)V

    goto :goto_2

    .line 4201
    :cond_4
    instance-of v4, v1, Lcom/netflix/falkor/Sentinel;

    if-eqz v4, :cond_5

    .line 4202
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " -> [sentinel]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 4205
    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 4212
    :cond_6
    return-void
.end method

.method private dumpCacheToDisk(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4174
    const-string/jumbo v1, "==START OF CACHE=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4175
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4176
    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy;->root:Lcom/netflix/falkor/BranchNode;

    invoke-direct {p0, v0, v1, v3, v3}, Lcom/netflix/falkor/CachedModelProxy;->doDumpCacheToDiskRecursive(Ljava/lang/StringBuilder;Lcom/netflix/falkor/BranchNode;IZ)V

    .line 4178
    :cond_0
    const-string/jumbo v1, "==END OF CACHE=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4179
    const-string/jumbo v1, "CachedModelProxy"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/netflix/mediaclient/util/FileUtils;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4180
    return-void
.end method

.method private executeRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 509
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy;->webClient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->GRAPH:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)V

    .line 510
    return-void
.end method

.method private declared-synchronized get(Lcom/netflix/falkor/PQL;Ljava/lang/Object;ILcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 6

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v1, :cond_0

    .line 246
    const-string/jumbo v1, "CachedModelProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get from path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 252
    if-ge p3, v1, :cond_2

    if-nez p2, :cond_2

    .line 253
    iget-object v1, p4, Lcom/netflix/falkor/CachedModelProxy$GetResult;->missingPqls:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 255
    :cond_2
    if-ne p3, v1, :cond_4

    .line 256
    if-eqz p2, :cond_3

    .line 257
    :try_start_1
    iget-object v1, p4, Lcom/netflix/falkor/CachedModelProxy$GetResult;->foundPqls:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 259
    :cond_3
    :try_start_2
    iget-object v1, p4, Lcom/netflix/falkor/CachedModelProxy$GetResult;->missingPqls:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    :cond_4
    if-le p3, v1, :cond_5

    .line 263
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Offset is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 267
    :cond_5
    instance-of v1, p2, Lcom/netflix/falkor/Ref;

    if-eqz v1, :cond_8

    .line 268
    check-cast p2, Lcom/netflix/falkor/Ref;

    .line 269
    invoke-virtual {p2}, Lcom/netflix/falkor/Ref;->getHardValue()Ljava/lang/Object;

    move-result-object v1

    .line 270
    if-eqz v1, :cond_6

    .line 271
    invoke-virtual {p2}, Lcom/netflix/falkor/Ref;->getRefPath()Lcom/netflix/falkor/PQL;

    move-result-object v2

    invoke-virtual {p1, p3}, Lcom/netflix/falkor/PQL;->slice(I)Lcom/netflix/falkor/PQL;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/falkor/PQL;->append(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;

    move-result-object v2

    .line 273
    invoke-virtual {p2}, Lcom/netflix/falkor/Ref;->getRefPath()Lcom/netflix/falkor/PQL;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 271
    invoke-direct {p0, v2, v1, v3, p4}, Lcom/netflix/falkor/CachedModelProxy;->get(Lcom/netflix/falkor/PQL;Ljava/lang/Object;ILcom/netflix/falkor/CachedModelProxy$GetResult;)V

    goto :goto_0

    .line 276
    :cond_6
    invoke-virtual {p2}, Lcom/netflix/falkor/Ref;->getRefPath()Lcom/netflix/falkor/PQL;

    move-result-object v1

    if-nez v1, :cond_7

    .line 277
    sget-boolean v1, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v1, :cond_1

    .line 278
    const-string/jumbo v1, "CachedModelProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ref path is null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/netflix/falkor/Ref;->getPath()Lcom/netflix/falkor/PQL;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 281
    :cond_7
    invoke-virtual {p2}, Lcom/netflix/falkor/Ref;->getRefPath()Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {p1, p3}, Lcom/netflix/falkor/PQL;->slice(I)Lcom/netflix/falkor/PQL;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/falkor/PQL;->append(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy;->root:Lcom/netflix/falkor/BranchNode;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, p4}, Lcom/netflix/falkor/CachedModelProxy;->get(Lcom/netflix/falkor/PQL;Ljava/lang/Object;ILcom/netflix/falkor/CachedModelProxy$GetResult;)V

    goto/16 :goto_0

    .line 288
    :cond_8
    instance-of v1, p2, Ljava/lang/Exception;

    if-nez v1, :cond_9

    instance-of v1, p2, Lcom/netflix/falkor/Undefined;

    if-eqz v1, :cond_a

    .line 289
    :cond_9
    iget-object v1, p4, Lcom/netflix/falkor/CachedModelProxy$GetResult;->ignoredPqls:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 293
    :cond_a
    move-object v0, p2

    check-cast v0, Lcom/netflix/falkor/BranchNode;

    move-object v1, v0

    .line 294
    invoke-virtual {p1}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 298
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_f

    .line 299
    check-cast v2, Ljava/util/List;

    .line 301
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 302
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_e

    .line 303
    check-cast v2, Ljava/util/Map;

    .line 305
    const-string/jumbo v3, "from"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 306
    const-string/jumbo v5, "to"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 308
    if-nez v3, :cond_c

    .line 309
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 312
    :cond_c
    if-nez v2, :cond_d

    .line 313
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No \'to\' param"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    :cond_d
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v3, v5, :cond_b

    .line 317
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, p3, v5}, Lcom/netflix/falkor/PQL;->replaceKeySegment(ILjava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v5

    invoke-direct {p0, v5, p2, p3, p4}, Lcom/netflix/falkor/CachedModelProxy;->get(Lcom/netflix/falkor/PQL;Ljava/lang/Object;ILcom/netflix/falkor/CachedModelProxy$GetResult;)V

    .line 316
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 320
    :cond_e
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/netflix/falkor/BranchNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, p3, 0x1

    invoke-direct {p0, p1, v2, v3, p4}, Lcom/netflix/falkor/CachedModelProxy;->get(Lcom/netflix/falkor/PQL;Ljava/lang/Object;ILcom/netflix/falkor/CachedModelProxy$GetResult;)V

    goto :goto_1

    .line 323
    :cond_f
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_12

    .line 324
    check-cast v2, Ljava/util/Map;

    .line 326
    const-string/jumbo v1, "from"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 327
    const-string/jumbo v3, "to"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 329
    if-nez v1, :cond_10

    .line 330
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 333
    :cond_10
    if-nez v2, :cond_11

    .line 334
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No \'to\' param"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 337
    :cond_11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v1, v3, :cond_1

    .line 338
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p3, v3}, Lcom/netflix/falkor/PQL;->replaceKeySegment(ILjava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3, p4}, Lcom/netflix/falkor/CachedModelProxy;->get(Lcom/netflix/falkor/PQL;Ljava/lang/Object;ILcom/netflix/falkor/CachedModelProxy$GetResult;)V

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 341
    :cond_12
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/netflix/falkor/BranchNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    invoke-direct {p0, p1, v1, v2, p4}, Lcom/netflix/falkor/CachedModelProxy;->get(Lcom/netflix/falkor/PQL;Ljava/lang/Object;ILcom/netflix/falkor/CachedModelProxy$GetResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized getCurrLomoByType(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 580
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "lolomo"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/Ref;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    if-nez v0, :cond_0

    move-object v0, v3

    .line 598
    :goto_0
    monitor-exit p0

    return-object v0

    .line 585
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/netflix/falkor/Ref;->getRefPath()Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/falkor/BranchMap;

    .line 586
    if-nez v1, :cond_1

    move-object v0, v3

    .line 587
    goto :goto_0

    .line 590
    :cond_1
    invoke-virtual {v1}, Lcom/netflix/falkor/BranchMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 591
    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 592
    invoke-virtual {v0}, Lcom/netflix/falkor/Ref;->getRefPath()Lcom/netflix/falkor/PQL;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "summary"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/netflix/falkor/PQL;->append(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 593
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v5

    if-ne v5, p1, :cond_2

    .line 594
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-object v0, v3

    .line 598
    goto :goto_0
.end method

.method private getCurrLomoInfo(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Lcom/netflix/mediaclient/util/DataUtil$StringPair;
    .locals 5

    .prologue
    .line 563
    invoke-direct {p0, p1}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLomoByType(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Landroid/util/Pair;

    move-result-object v2

    .line 564
    if-nez v2, :cond_1

    const/4 v0, 0x0

    move-object v1, v0

    .line 565
    :goto_0
    if-nez v2, :cond_2

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 566
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 567
    const-string/jumbo v2, "CachedModelProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Got curr lomo ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", list index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", lomo type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_0
    new-instance v2, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    invoke-direct {v2, v1, v0}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 564
    :cond_1
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 565
    :cond_2
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_1
.end method

.method private getGenreList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 627
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "genreList"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v0

    .line 628
    if-eqz v0, :cond_0

    .line 629
    check-cast v0, Lcom/netflix/falkor/Sentinel;

    invoke-virtual {v0}, Lcom/netflix/falkor/Sentinel;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 631
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLastWriteTimeToCacheMS()J
    .locals 2

    .prologue
    .line 212
    sget-wide v0, Lcom/netflix/falkor/CachedModelProxy;->sLastWriteTimeMS:J

    return-wide v0
.end method

.method private declared-synchronized getLists(Ljava/util/Collection;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "LT::Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)",
            "Ljava/util/List",
            "<T",
            "LT;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    monitor-enter p0

    const/4 v3, 0x0

    .line 603
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 604
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PQL;

    .line 605
    invoke-virtual {v0}, Lcom/netflix/falkor/PQL;->explode()Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 606
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PQL;

    .line 607
    invoke-virtual {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v1

    .line 608
    instance-of v2, v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    if-eqz v2, :cond_4

    .line 609
    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 610
    add-int/lit8 v2, v3, 0x1

    invoke-interface {v1, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->setListPos(I)V

    .line 611
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    sget-boolean v3, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v3, :cond_1

    .line 613
    const-string/jumbo v3, "CachedModelProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "got lomo - pql: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, ", lomo: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, ", order: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getListPos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v2

    :goto_1
    move v3, v0

    .line 616
    goto :goto_0

    .line 619
    :cond_2
    sget-boolean v0, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v0, :cond_3

    .line 620
    const-string/jumbo v0, "CachedModelProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Lomos size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    :cond_3
    monitor-exit p0

    return-object v4

    .line 602
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method private static getSeasonsPQL(Ljava/util/List;)Lcom/netflix/falkor/PQL;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/falkor/PQL;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1947
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "shows"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "seasons"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x63

    invoke-static {v3, v2}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "detail"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getVideo(Lcom/netflix/falkor/PQL;)Lcom/netflix/model/branches/FalkorObject;
    .locals 5

    .prologue
    .line 709
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/falkor/PQL;->explode()Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 710
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PQL;

    .line 711
    invoke-virtual {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v1

    .line 712
    instance-of v3, v1, Lcom/netflix/model/branches/FalkorObject;

    if-eqz v3, :cond_0

    .line 713
    check-cast v1, Lcom/netflix/model/branches/FalkorObject;

    .line 714
    sget-boolean v2, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v2, :cond_1

    .line 715
    const-string/jumbo v2, "CachedModelProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "got video - pql: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", video: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v1

    .line 721
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 722
    const-string/jumbo v0, "CachedModelProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Couldn\'t find video in cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 725
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 709
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized invalidate(Lcom/netflix/falkor/PQL;)V
    .locals 5

    .prologue
    .line 402
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/falkor/PQL;->getNumKeySegments()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/netflix/falkor/PQL;->slice(II)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v0

    .line 403
    if-nez v0, :cond_1

    .line 404
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    const-string/jumbo v0, "CachedModelProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t invalidate node because it is null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 407
    :cond_1
    :try_start_1
    instance-of v1, v0, Lcom/netflix/falkor/BranchNode;

    if-eqz v1, :cond_3

    .line 408
    invoke-virtual {p1}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/falkor/PQL;->getNumKeySegments()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 409
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 410
    const-string/jumbo v2, "CachedModelProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalidating at BranchNode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", node key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_2
    check-cast v0, Lcom/netflix/falkor/BranchNode;

    invoke-interface {v0, v1}, Lcom/netflix/falkor/BranchNode;->remove(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 413
    :cond_3
    :try_start_2
    instance-of v1, v0, Lcom/netflix/falkor/Ref;

    if-eqz v1, :cond_5

    .line 414
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 415
    const-string/jumbo v1, "CachedModelProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalidating ref path for pql: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_4
    check-cast v0, Lcom/netflix/falkor/Ref;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/Ref;->setRefPath(Lcom/netflix/falkor/PQL;)V

    goto :goto_0

    .line 419
    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    const-string/jumbo v1, "CachedModelProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Don\'t know how to invalidate node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", pql: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private launchTask(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 513
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    const-string/jumbo v0, "CachedModelProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Launching task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    .line 518
    return-void
.end method

.method private declared-synchronized merge(Lcom/google/gson/JsonObject;Lcom/netflix/falkor/BranchNode;)V
    .locals 8

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 427
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 428
    invoke-interface {p2, v2}, Lcom/netflix/falkor/BranchNode;->getOrCreate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 430
    instance-of v3, v4, Lcom/netflix/falkor/Sentinel;

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonElement;

    invoke-static {v3}, Lcom/netflix/mediaclient/util/JsonUtils;->isNull(Lcom/google/gson/JsonElement;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 431
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 432
    const-string/jumbo v3, "CachedModelProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Found sentinel at key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", will replace with json data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_1
    move-object v0, v4

    check-cast v0, Lcom/netflix/falkor/Sentinel;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/netflix/falkor/Sentinel;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 437
    :goto_1
    sget-boolean v4, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v4, :cond_2

    .line 438
    const-string/jumbo v4, "CachedModelProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Curr node: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", merging: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_2
    instance-of v4, v3, Lcom/netflix/falkor/BranchNode;

    if-eqz v4, :cond_3

    .line 443
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    move-object v0, v3

    check-cast v0, Lcom/netflix/falkor/BranchNode;

    move-object v1, v0

    invoke-direct {p0, v2, v1}, Lcom/netflix/falkor/CachedModelProxy;->merge(Lcom/google/gson/JsonObject;Lcom/netflix/falkor/BranchNode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 426
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 444
    :cond_3
    :try_start_1
    instance-of v4, v3, Lcom/netflix/falkor/Ref;

    if-eqz v4, :cond_8

    .line 445
    check-cast v3, Lcom/netflix/falkor/Ref;

    .line 446
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    .line 447
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 448
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->fromJsonArray(Lcom/google/gson/JsonArray;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/netflix/falkor/Ref;->setRefPath(Lcom/netflix/falkor/PQL;)V

    goto/16 :goto_0

    .line 449
    :cond_4
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 450
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 451
    const-string/jumbo v4, "_sentinel"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 452
    sget-boolean v1, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v1, :cond_5

    .line 453
    const-string/jumbo v1, "CachedModelProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "key points to sentinel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/netflix/falkor/Undefined;->getInstance()Lcom/netflix/falkor/Undefined;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_5
    invoke-static {}, Lcom/netflix/falkor/Undefined;->getInstance()Lcom/netflix/falkor/Undefined;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/netflix/falkor/BranchNode;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 456
    :cond_6
    const-string/jumbo v3, "current"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 457
    sget-boolean v2, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v2, :cond_0

    .line 458
    const-string/jumbo v2, "CachedModelProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "json ref points to an ignored \'current\' object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 461
    :cond_7
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    const-string/jumbo v2, "CachedModelProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Don\'t know how to handle json: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 466
    :cond_8
    if-eqz v3, :cond_0

    .line 468
    instance-of v4, v3, Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;

    if-eqz v4, :cond_9

    .line 469
    check-cast v3, Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-interface {v3, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;->populate(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_0

    .line 471
    :cond_9
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 472
    const-string/jumbo v4, "CachedModelProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Creating duplicate Leaf object. JsonPopulator should be implemented by: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_a
    const-string/jumbo v4, "CachedModelProxy"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v4, v1, v3}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->createObjectFromJson(Ljava/lang/String;Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/netflix/falkor/BranchNode;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 478
    :cond_b
    monitor-exit p0

    return-void

    :cond_c
    move-object v3, v4

    goto/16 :goto_1
.end method

.method private sendDetailPageReloadBroadcast(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 3594
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.DETAIL_PAGE_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3595
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 3596
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Intent DETAIL_PAGE_REFRESH sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3597
    return-void
.end method

.method private declared-synchronized updateInQueueStatus(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 729
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "summary"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/branches/FalkorVideo;

    .line 730
    if-eqz v0, :cond_1

    .line 731
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 732
    const-string/jumbo v1, "CachedModelProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting cached inQueue value to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", for video: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_0
    const-string/jumbo v1, "inQueue"

    new-instance v2, Lcom/netflix/model/leafs/Video$InQueue;

    invoke-direct {v2, p3}, Lcom/netflix/model/leafs/Video$InQueue;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Lcom/netflix/model/branches/FalkorVideo;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    :cond_1
    monitor-exit p0

    return-void

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private write(Lcom/google/gson/Gson;Lcom/google/gson/stream/JsonWriter;)V
    .locals 1

    .prologue
    .line 4258
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy;->root:Lcom/netflix/falkor/BranchNode;

    invoke-static {p1, v0, p2}, Lcom/netflix/falkor/CachedModelProxy;->write(Lcom/google/gson/Gson;Ljava/lang/Object;Lcom/google/gson/stream/JsonWriter;)V

    .line 4259
    return-void
.end method

.method private static write(Lcom/google/gson/Gson;Ljava/lang/Object;Lcom/google/gson/stream/JsonWriter;)V
    .locals 6

    .prologue
    .line 4263
    instance-of v0, p1, Lcom/netflix/falkor/BranchNode;

    if-eqz v0, :cond_6

    .line 4264
    sget-boolean v0, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 4265
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "{"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4267
    :cond_0
    check-cast p1, Lcom/netflix/falkor/BranchNode;

    .line 4268
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    .line 4269
    invoke-interface {p1}, Lcom/netflix/falkor/BranchNode;->getKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4270
    invoke-interface {p1, v0}, Lcom/netflix/falkor/BranchNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 4271
    sget-boolean v3, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v3, :cond_2

    .line 4272
    const-string/jumbo v3, "CachedModelProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4274
    :cond_2
    invoke-static {v0}, Lcom/netflix/falkor/BranchNodeUtils;->shouldIgnoreKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4275
    sget-boolean v2, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v2, :cond_1

    .line 4276
    const-string/jumbo v2, "CachedModelProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ignoring key - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4280
    :cond_3
    invoke-virtual {p2, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 4281
    invoke-static {p0, v2, p2}, Lcom/netflix/falkor/CachedModelProxy;->write(Lcom/google/gson/Gson;Ljava/lang/Object;Lcom/google/gson/stream/JsonWriter;)V

    goto :goto_0

    .line 4283
    :cond_4
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    .line 4284
    sget-boolean v0, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v0, :cond_5

    .line 4285
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "}"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4336
    :cond_5
    :goto_1
    return-void

    .line 4288
    :cond_6
    instance-of v0, p1, Lcom/netflix/falkor/Ref;

    if-eqz v0, :cond_b

    .line 4289
    check-cast p1, Lcom/netflix/falkor/Ref;

    .line 4291
    invoke-virtual {p1}, Lcom/netflix/falkor/Ref;->getRefPath()Lcom/netflix/falkor/PQL;

    move-result-object v0

    .line 4292
    if-nez v0, :cond_8

    .line 4293
    sget-boolean v0, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v0, :cond_7

    .line 4294
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4296
    :cond_7
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_1

    .line 4299
    :cond_8
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    .line 4300
    sget-boolean v1, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v1, :cond_9

    .line 4301
    const-string/jumbo v1, "CachedModelProxy"

    const-string/jumbo v2, "["

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4303
    :cond_9
    invoke-virtual {v0}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4304
    invoke-static {p0, v1, p2}, Lcom/netflix/falkor/CachedModelProxy;->write(Lcom/google/gson/Gson;Ljava/lang/Object;Lcom/google/gson/stream/JsonWriter;)V

    goto :goto_2

    .line 4306
    :cond_a
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    .line 4307
    sget-boolean v0, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v0, :cond_5

    .line 4308
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "]"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4312
    :cond_b
    instance-of v0, p1, Lcom/netflix/falkor/Sentinel;

    if-eqz v0, :cond_e

    .line 4313
    check-cast p1, Lcom/netflix/falkor/Sentinel;

    .line 4314
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    .line 4315
    const-string/jumbo v0, "_sentinel"

    invoke-virtual {p2, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 4316
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    .line 4317
    invoke-virtual {p1}, Lcom/netflix/falkor/Sentinel;->getExpires()Ljava/util/Date;

    move-result-object v0

    .line 4318
    if-eqz v0, :cond_c

    .line 4319
    const-string/jumbo v1, "$expires"

    invoke-virtual {p2, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 4320
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 4323
    :cond_c
    invoke-virtual {p1}, Lcom/netflix/falkor/Sentinel;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 4324
    if-eqz v0, :cond_d

    .line 4325
    const-string/jumbo v1, "value"

    invoke-virtual {p2, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 4326
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/stream/JsonWriter;)V

    .line 4328
    :cond_d
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_1

    .line 4330
    :cond_e
    if-eqz p1, :cond_5

    .line 4331
    sget-boolean v0, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v0, :cond_f

    .line 4332
    const-string/jumbo v0, "CachedModelProxy"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4334
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/stream/JsonWriter;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public addToQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZLjava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 11

    .prologue
    .line 4020
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLolomoId()Ljava/lang/String;

    move-result-object v4

    .line 4021
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->INSTANT_QUEUE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLomoInfo(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    move-result-object v1

    .line 4022
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;

    iget-object v5, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v7, p3

    move v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/netflix/falkor/CachedModelProxy$AddToQueueTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 4030
    return-void
.end method

.method public deserializeStream(Ljava/io/Reader;)V
    .locals 2

    .prologue
    .line 4228
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    .line 4229
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    .line 4231
    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy;->root:Lcom/netflix/falkor/BranchNode;

    instance-of v1, v1, Lcom/netflix/falkor/BranchNode;

    if-eqz v1, :cond_0

    .line 4232
    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy;->root:Lcom/netflix/falkor/BranchNode;

    invoke-static {v1, v0}, Lcom/netflix/falkor/BranchNodeUtils;->merge(Lcom/netflix/falkor/BranchNode;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    .line 4234
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4235
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "deserializeStream: completed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4237
    :cond_1
    return-void
.end method

.method public doesCwExist()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4057
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLolomoId()Ljava/lang/String;

    move-result-object v0

    .line 4058
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CONTINUE_WATCHING:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-direct {p0, v2}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLomoInfo(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    move-result-object v2

    .line 4060
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4061
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v2, "CW doesn\'t exist - lolomoId is empty"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 4074
    :goto_0
    return v0

    .line 4065
    :cond_0
    iget-object v0, v2, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4066
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v2, "CW doesn\'t exist - lomo id is empty"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 4067
    goto :goto_0

    .line 4070
    :cond_1
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v2, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4071
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v2, "CW doesn\'t exist - lomo index is invalid"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 4072
    goto :goto_0

    .line 4074
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public doesDiscoveryRowExist()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4089
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLolomoId()Ljava/lang/String;

    move-result-object v0

    .line 4090
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->DISCOVERY_ROW:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-direct {p0, v2}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLomoInfo(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    move-result-object v2

    .line 4092
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4093
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v2, "Discovery doesn\'t exist - lolomoId is empty"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 4106
    :goto_0
    return v0

    .line 4097
    :cond_0
    iget-object v0, v2, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4098
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v2, "Discovery doesn\'t exist - lomo id is empty"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 4099
    goto :goto_0

    .line 4102
    :cond_1
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v2, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4103
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v2, "Discovery doesn\'t exist - lomo index is invalid"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 4104
    goto :goto_0

    .line 4106
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dumpCacheToDisk()V
    .locals 1

    .prologue
    .line 4169
    const-string/jumbo v0, "cache.txt"

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->dumpCacheToDisk(Ljava/lang/String;)V

    .line 4170
    return-void
.end method

.method public endBrowsePlaySession(JIIILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 9

    .prologue
    .line 3963
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$EndBrowsePlaySessionTask;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/netflix/falkor/CachedModelProxy$EndBrowsePlaySessionTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;JIIILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3964
    return-void
.end method

.method public fetchActorDetailsAndRelatedForTitle(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 3894
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchActorDetailsAndRelatedForTitle;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy$FetchActorDetailsAndRelatedForTitle;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3895
    return-void
.end method

.method public fetchAdvisories(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 4047
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4048
    if-eqz p2, :cond_0

    .line 4049
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->INTERNAL_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p2, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onAdvisoriesFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 4054
    :cond_0
    :goto_0
    return-void

    .line 4052
    :cond_1
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchAdvisoriesTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy$FetchAdvisoriesTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public fetchBBVideos(IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 6

    .prologue
    .line 3811
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchBillboardVideosTask;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/falkor/CachedModelProxy$FetchBillboardVideosTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3812
    return-void
.end method

.method public fetchCWVideos(IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 6

    .prologue
    .line 3815
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchCwVideosTask;

    if-eqz p3, :cond_0

    sget-object v4, Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;->FROM_CACHE_ONLY:Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;

    :goto_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/falkor/CachedModelProxy$FetchCwVideosTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;IILcom/netflix/falkor/CachedModelProxy$CmpTaskMode;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3817
    return-void

    .line 3815
    :cond_0
    sget-object v4, Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;->FROM_CACHE_OR_NETWORK:Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;

    goto :goto_0
.end method

.method public fetchCWVideosFromNetwork(IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 6

    .prologue
    .line 3820
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchCwVideosTask;

    sget-object v4, Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;->FROM_NETWORK:Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/falkor/CachedModelProxy$FetchCwVideosTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;IILcom/netflix/falkor/CachedModelProxy$CmpTaskMode;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3821
    return-void
.end method

.method public fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 3918
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchEpisodeDetailsTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netflix/falkor/CachedModelProxy$FetchEpisodeDetailsTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3919
    return-void
.end method

.method public fetchEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 7

    .prologue
    .line 3938
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchEpisodesTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/falkor/CachedModelProxy$FetchEpisodesTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3939
    return-void
.end method

.method public fetchGenreList(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 3870
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchGenreListTask;

    invoke-direct {v0, p0, p1}, Lcom/netflix/falkor/CachedModelProxy$FetchGenreListTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3871
    return-void
.end method

.method public fetchGenreLoLoMoSummary(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 3930
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchGenreLoLoMoSummaryTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy$FetchGenreLoLoMoSummaryTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3931
    return-void
.end method

.method public fetchGenres(Ljava/lang/String;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 6

    .prologue
    .line 3874
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchGenresTask;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/falkor/CachedModelProxy$FetchGenresTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3875
    return-void
.end method

.method public fetchIQVideos(IIZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 9

    .prologue
    .line 3828
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->INSTANT_QUEUE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLomoByType(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Landroid/util/Pair;

    move-result-object v1

    .line 3829
    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 3830
    :cond_0
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Asked to fetch IQ videos but no IQ lomo currently exists in cache!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3831
    const/4 v0, 0x0

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->NOT_VALID:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p5, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 3836
    :goto_0
    return-void

    .line 3835
    :cond_1
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchVideosTask;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    const/4 v7, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/netflix/falkor/CachedModelProxy$FetchVideosTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public fetchIQVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 9

    .prologue
    .line 3845
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->INSTANT_QUEUE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLomoInfo(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    move-result-object v1

    .line 3846
    if-nez v1, :cond_0

    .line 3847
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Asked to fetch IQ videos but no IQ lomo currently exists in cache!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3848
    const/4 v0, 0x0

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->NOT_VALID:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p6, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 3867
    :goto_0
    return-void

    .line 3852
    :cond_0
    iget-object v0, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3853
    sget-boolean v0, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v0, :cond_1

    .line 3854
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Requested IQ lomo ID and cached IQ lomo ID still match"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3866
    :cond_1
    :goto_1
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchVideosTask;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/netflix/falkor/CachedModelProxy$FetchVideosTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3858
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3859
    const-string/jumbo v2, "CachedModelProxy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Requested IQ videos for lomo id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " but cache IQ lomo id is: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3860
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v2, "Updating existing lomo IQ id to cache id value"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3862
    :cond_3
    iget-object v0, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->setId(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public fetchInteractiveVideoMoments(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 8

    .prologue
    .line 3971
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchInteractiveVideoMomentsTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/netflix/falkor/CachedModelProxy$FetchInteractiveVideoMomentsTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3972
    return-void
.end method

.method public fetchKidsCharacterDetails(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 3906
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchKidsCharacterDetailsTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy$FetchKidsCharacterDetailsTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3907
    return-void
.end method

.method public fetchLoMos(IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 3792
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchLoMosTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netflix/falkor/CachedModelProxy$FetchLoMosTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3793
    return-void
.end method

.method public fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 3882
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchMovieDetailsTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netflix/falkor/CachedModelProxy$FetchMovieDetailsTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3883
    return-void
.end method

.method public fetchNonMemberVideos(IZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 3807
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchNonMemberVideosTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netflix/falkor/CachedModelProxy$FetchNonMemberVideosTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;IZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3808
    return-void
.end method

.method public fetchNotifications(IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 6

    .prologue
    .line 3951
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3952
    return-void
.end method

.method public fetchOfflineGeoPlayability(Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3824
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchOfflineGeoPlayabilityTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy$FetchOfflineGeoPlayabilityTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3825
    return-void
.end method

.method public fetchPersonDetail(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3898
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonDetail;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netflix/falkor/CachedModelProxy$FetchPersonDetail;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3899
    return-void
.end method

.method public fetchPersonRelated(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 3902
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonRelated;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy$FetchPersonRelated;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3903
    return-void
.end method

.method public fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 6

    .prologue
    .line 3910
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchPostPlayVideosTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/falkor/CachedModelProxy$FetchPostPlayVideosTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3911
    return-void
.end method

.method public fetchScenePosition(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 6

    .prologue
    .line 3926
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchScenePositionTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/falkor/CachedModelProxy$FetchScenePositionTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3927
    return-void
.end method

.method public fetchSeasonDetails(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 3922
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchSeasonDetailsTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy$FetchSeasonDetailsTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3923
    return-void
.end method

.method public fetchSeasons(Ljava/lang/String;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 6

    .prologue
    .line 3934
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchSeasonsTask;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/falkor/CachedModelProxy$FetchSeasonsTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3935
    return-void
.end method

.method public fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 8

    .prologue
    .line 3890
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchShowDetailsTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/netflix/falkor/CachedModelProxy$FetchShowDetailsTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Ljava/lang/String;ZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3891
    return-void
.end method

.method public fetchSimilarVideos(Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;Ljava/lang/String;ILjava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 7

    .prologue
    .line 3947
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchSimilarVideosTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/falkor/CachedModelProxy$FetchSimilarVideosTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;Ljava/lang/String;ILjava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3948
    return-void
.end method

.method public fetchTask(Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 3767
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$CmpTaskWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/netflix/falkor/CachedModelProxy$CmpTaskWrapper;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3768
    return-void
.end method

.method public fetchVideoSummary(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 3878
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchVideoSummaryTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy$FetchVideoSummaryTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3879
    return-void
.end method

.method public fetchVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 9

    .prologue
    .line 3797
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->BILLBOARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3798
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchBillboardVideosTask;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/netflix/falkor/CachedModelProxy$FetchBillboardVideosTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3804
    :goto_0
    return-void

    .line 3799
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->DISCOVERY_ROW:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3800
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchDiscoveryVideosTask;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/netflix/falkor/CachedModelProxy$FetchDiscoveryVideosTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3802
    :cond_1
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchVideosTask;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/netflix/falkor/CachedModelProxy$FetchVideosTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public declared-synchronized flushCaches()V
    .locals 3

    .prologue
    .line 481
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Flushing caches..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/falkor/CachedModelProxy;->lastPrefetchFromVideo:I

    .line 486
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/falkor/CachedModelProxy;->lastPrefetchToVideo:I

    .line 488
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy;->root:Lcom/netflix/falkor/BranchNode;

    instance-of v0, v0, Ljava/io/Flushable;

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy;->root:Lcom/netflix/falkor/BranchNode;

    check-cast v0, Ljava/io/Flushable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    :try_start_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 492
    const-string/jumbo v1, "CachedModelProxy"

    const-string/jumbo v2, "Flushing root"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_1
    invoke-interface {v0}, Ljava/io/Flushable;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 495
    :catch_0
    move-exception v0

    .line 496
    :try_start_2
    const-string/jumbo v1, "CachedModelProxy"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public forceFetchFromLocalCache(Z)V
    .locals 5

    .prologue
    .line 4218
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "forcing CMP fetch behavior to useLocalCacheOnly:%b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4219
    sput-boolean p1, Lcom/netflix/falkor/CachedModelProxy;->FORCE_CMP_TO_LOCAL_CACHE:Z

    .line 4220
    return-void
.end method

.method public declared-synchronized get(Ljava/util/Collection;)Lcom/netflix/falkor/CachedModelProxy$GetResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)",
            "Lcom/netflix/falkor/CachedModelProxy$GetResult;"
        }
    .end annotation

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/netflix/falkor/CachedModelProxy$GetResult;

    invoke-direct {v1, p1}, Lcom/netflix/falkor/CachedModelProxy$GetResult;-><init>(Ljava/util/Collection;)V

    .line 237
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PQL;

    .line 238
    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy;->root:Lcom/netflix/falkor/BranchNode;

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4, v1}, Lcom/netflix/falkor/CachedModelProxy;->get(Lcom/netflix/falkor/PQL;Ljava/lang/Object;ILcom/netflix/falkor/CachedModelProxy$GetResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 240
    :cond_0
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized getAllItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lcom/netflix/model/branches/FalkorObject;",
            ">(",
            "Lcom/netflix/falkor/PQL;",
            ")",
            "Ljava/util/List",
            "<TI;>;"
        }
    .end annotation

    .prologue
    .line 675
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 676
    invoke-virtual {p1}, Lcom/netflix/falkor/PQL;->explode()Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 677
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PQL;

    .line 678
    invoke-virtual {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v1

    .line 679
    instance-of v4, v1, Lcom/netflix/model/branches/FalkorObject;

    if-eqz v4, :cond_0

    .line 680
    check-cast v1, Lcom/netflix/model/branches/FalkorObject;

    .line 681
    sget-boolean v4, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v4, :cond_1

    .line 682
    const-string/jumbo v4, "CachedModelProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "got falkor object - pql: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ", item: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 675
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 688
    :cond_2
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized getCurrLolomoId()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 541
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "lolomo"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/Ref;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    if-nez v0, :cond_0

    move-object v0, v1

    .line 551
    :goto_0
    monitor-exit p0

    return-object v0

    .line 546
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/netflix/falkor/Ref;->getRefPath()Lcom/netflix/falkor/PQL;

    move-result-object v0

    .line 547
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/falkor/PQL;->getNumKeySegments()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    :cond_1
    move-object v0, v1

    .line 548
    goto :goto_0

    .line 551
    :cond_2
    invoke-virtual {v0}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 541
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lcom/netflix/model/branches/FalkorObject;",
            ">(",
            "Lcom/netflix/falkor/PQL;",
            ")",
            "Ljava/util/List",
            "<TI;>;"
        }
    .end annotation

    .prologue
    .line 636
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getItemsAsList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getItemsAsList(Ljava/util/Collection;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lcom/netflix/model/branches/FalkorObject;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)",
            "Ljava/util/List",
            "<TI;>;"
        }
    .end annotation

    .prologue
    .line 641
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 642
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PQL;

    .line 643
    invoke-virtual {v0}, Lcom/netflix/falkor/PQL;->explode()Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 644
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PQL;

    .line 645
    invoke-virtual {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v1

    .line 646
    instance-of v5, v1, Lcom/netflix/model/branches/FalkorObject;

    if-eqz v5, :cond_1

    .line 647
    check-cast v1, Lcom/netflix/model/branches/FalkorObject;

    .line 648
    sget-boolean v5, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v5, :cond_2

    .line 649
    const-string/jumbo v5, "CachedModelProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "got falkor object - pql: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ", item: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 641
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 656
    :cond_3
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 657
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/branches/FalkorObject;

    .line 658
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 660
    :cond_4
    sget-boolean v0, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v0, :cond_5

    .line 661
    const-string/jumbo v0, "CachedModelProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Items size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
    :cond_5
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized getMementoAsSwatchAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Lcom/netflix/model/branches/MementoVideoSwatch;",
            ">(",
            "Lcom/netflix/falkor/PQL;",
            ")",
            "Ljava/util/List",
            "<TI;>;"
        }
    .end annotation

    .prologue
    .line 692
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 693
    invoke-virtual {p1}, Lcom/netflix/falkor/PQL;->explode()Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 694
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PQL;

    .line 695
    invoke-virtual {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v1

    .line 696
    instance-of v4, v1, Lcom/netflix/model/branches/MementoVideoSwatch;

    if-eqz v4, :cond_0

    .line 697
    check-cast v1, Lcom/netflix/model/branches/MementoVideoSwatch;

    .line 698
    sget-boolean v4, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v4, :cond_1

    .line 699
    const-string/jumbo v4, "CachedModelProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "got MementoVideoSwatch object - pql: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ", item: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 692
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 705
    :cond_2
    monitor-exit p0

    return-object v2
.end method

.method protected getService()Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy;->serviceProvider:Lcom/netflix/falkor/ServiceProvider;

    invoke-interface {v0}, Lcom/netflix/falkor/ServiceProvider;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method public getServiceProvider()Lcom/netflix/falkor/ServiceProvider;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy;->serviceProvider:Lcom/netflix/falkor/ServiceProvider;

    return-object v0
.end method

.method public declared-synchronized getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 350
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/falkor/PQL;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 351
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    const-string/jumbo v1, "CachedModelProxy"

    const-string/jumbo v2, "Empty pql - leaving getValue() early"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    :cond_1
    const/4 v1, 0x0

    .line 398
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v1

    .line 357
    :cond_3
    :try_start_1
    sget-boolean v1, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v1, :cond_4

    .line 358
    const-string/jumbo v1, "CachedModelProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getValue() pql: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_4
    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy;->root:Lcom/netflix/falkor/BranchNode;

    .line 361
    move-object v0, v2

    check-cast v0, Lcom/netflix/falkor/BranchNode;

    move-object v1, v0

    .line 363
    invoke-virtual {p1}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v5

    .line 364
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 366
    const/4 v3, 0x0

    move v4, v3

    move-object v3, v1

    move-object v1, v2

    :goto_1
    if-ge v4, v6, :cond_2

    .line 367
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 368
    if-nez v2, :cond_5

    move-object v2, v3

    .line 366
    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v2

    goto :goto_1

    .line 372
    :cond_5
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-interface {v3, v1}, Lcom/netflix/falkor/BranchNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 373
    sget-boolean v3, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v3, :cond_6

    .line 374
    const-string/jumbo v3, "CachedModelProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getValue() for key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, " currentValue: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_7

    const-string/jumbo v2, "null"

    :goto_3
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_6
    :goto_4
    instance-of v2, v1, Lcom/netflix/falkor/Ref;

    if-eqz v2, :cond_8

    .line 377
    check-cast v1, Lcom/netflix/falkor/Ref;

    .line 380
    add-int/lit8 v2, v6, -0x1

    if-eq v4, v2, :cond_2

    .line 384
    invoke-virtual {v1, p0}, Lcom/netflix/falkor/Ref;->getValue(Lcom/netflix/falkor/ModelProxy;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    .line 374
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 387
    :cond_8
    instance-of v2, v1, Lcom/netflix/model/branches/FalkorObject;

    if-eqz v2, :cond_9

    add-int/lit8 v2, v6, -0x2

    if-ge v4, v2, :cond_2

    .line 390
    :cond_9
    instance-of v2, v1, Lcom/netflix/falkor/BranchNode;

    if-eqz v2, :cond_a

    .line 391
    move-object v0, v1

    check-cast v0, Lcom/netflix/falkor/BranchNode;

    move-object v2, v0

    goto :goto_2

    .line 392
    :cond_a
    instance-of v2, v1, Ljava/lang/Exception;

    if-nez v2, :cond_2

    instance-of v2, v1, Lcom/netflix/falkor/Undefined;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    goto/16 :goto_0

    .line 350
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public invalidateEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 3

    .prologue
    .line 4165
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "episodes"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->invalidate(Lcom/netflix/falkor/PQL;)V

    .line 4166
    return-void
.end method

.method public logBillboardActivity(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            "Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4039
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$LogBillboardActivityTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netflix/falkor/CachedModelProxy$LogBillboardActivityTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 4040
    return-void
.end method

.method public logPostPlayImpression(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 6

    .prologue
    .line 3914
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$LogPostPlayImpression;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/falkor/CachedModelProxy$LogPostPlayImpression;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3915
    return-void
.end method

.method public markNotificationAsRead(Lcom/netflix/model/leafs/social/IrisNotificationSummary;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 3955
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$MarkNotificationAsReadTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy$MarkNotificationAsReadTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/model/leafs/social/IrisNotificationSummary;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3956
    return-void
.end method

.method public markNotificationsAsRead(Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/social/IrisNotificationSummary;",
            ">;",
            "Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3959
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$MarkNotificationAsReadTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy$MarkNotificationAsReadTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3960
    return-void
.end method

.method public prefetchGenreLoLoMo(Ljava/lang/String;IIIIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 7

    .prologue
    .line 3788
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$PrefetchGenreLoLoMoTask;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/netflix/falkor/CachedModelProxy$PrefetchGenreLoLoMoTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3789
    return-void
.end method

.method public prefetchLoLoMo(IIIIIIZZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 10

    .prologue
    .line 3774
    iput p3, p0, Lcom/netflix/falkor/CachedModelProxy;->lastPrefetchFromVideo:I

    .line 3775
    iput p4, p0, Lcom/netflix/falkor/CachedModelProxy;->lastPrefetchToVideo:I

    .line 3776
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$PrefetchLoLoMoTask;

    const/16 v5, 0x9

    move-object v1, p0

    move v2, p2

    move v3, p4

    move/from16 v4, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p10

    move-object/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Lcom/netflix/falkor/CachedModelProxy$PrefetchLoLoMoTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;IIIIZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3783
    return-void
.end method

.method public prefetchVideoListDetails(Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3886
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$PrefetchVideoListDetailsTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy$PrefetchVideoListDetailsTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3887
    return-void
.end method

.method public refreshCw()V
    .locals 4

    .prologue
    .line 4078
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy;->doesCwExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4079
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Can\'t refresh CW "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4086
    :goto_0
    return-void

    .line 4083
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLolomoId()Ljava/lang/String;

    move-result-object v2

    .line 4084
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CONTINUE_WATCHING:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLomoInfo(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    move-result-object v1

    .line 4085
    new-instance v3, Lcom/netflix/falkor/CachedModelProxy$RefreshCwTask;

    iget-object v0, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/netflix/falkor/CachedModelProxy$RefreshCwTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public refreshDiscoveryRow()V
    .locals 4

    .prologue
    .line 4110
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy;->doesDiscoveryRowExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4111
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Can\'t refresh Discovery "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4118
    :goto_0
    return-void

    .line 4115
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLolomoId()Ljava/lang/String;

    move-result-object v2

    .line 4116
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->DISCOVERY_ROW:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLomoInfo(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    move-result-object v1

    .line 4117
    new-instance v3, Lcom/netflix/falkor/CachedModelProxy$RefreshDiscoveryTask;

    iget-object v0, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/netflix/falkor/CachedModelProxy$RefreshDiscoveryTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public refreshIq()V
    .locals 4

    .prologue
    .line 4121
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLolomoId()Ljava/lang/String;

    move-result-object v2

    .line 4122
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->INSTANT_QUEUE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLomoInfo(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    move-result-object v1

    .line 4124
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4125
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Can\'t refresh IQ - lolomoId is empty"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4140
    :goto_0
    return-void

    .line 4129
    :cond_0
    iget-object v0, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4130
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Can\'t refresh IQ - lomo id is empty"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4134
    :cond_1
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4135
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Can\'t refresh IQ - lomo index is invalid"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4139
    :cond_2
    new-instance v3, Lcom/netflix/falkor/CachedModelProxy$RefreshIqTask;

    iget-object v0, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/netflix/falkor/CachedModelProxy$RefreshIqTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public refreshPopularTitlesLomo()V
    .locals 4

    .prologue
    .line 4143
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLolomoId()Ljava/lang/String;

    move-result-object v2

    .line 4144
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->POPULAR_TITLES:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLomoInfo(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    move-result-object v1

    .line 4146
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4147
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Can\'t refresh Popular Titles - lolomoId is empty"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4162
    :goto_0
    return-void

    .line 4151
    :cond_0
    iget-object v0, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4152
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Can\'t refresh Popular Titles - lomo id is empty"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4156
    :cond_1
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4157
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Can\'t refresh Popular Titles - lomo index is invalid"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4161
    :cond_2
    new-instance v3, Lcom/netflix/falkor/CachedModelProxy$RefreshPopularTitlesTask;

    iget-object v0, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/netflix/falkor/CachedModelProxy$RefreshPopularTitlesTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public removeFromQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 9

    .prologue
    .line 4033
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLolomoId()Ljava/lang/String;

    move-result-object v4

    .line 4034
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->INSTANT_QUEUE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLomoInfo(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    move-result-object v1

    .line 4035
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;

    iget-object v5, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/netflix/falkor/CachedModelProxy$RemoveFromQueueTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 4036
    return-void
.end method

.method public searchNetflix(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 3942
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$FetchSearchResultsTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy$FetchSearchResultsTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3943
    return-void
.end method

.method public serialize(Ljava/io/Writer;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4247
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 4248
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->enableComplexMapKeySerialization()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 4249
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 4250
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/GsonBuilder;->setVersion(D)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    new-instance v1, Lcom/netflix/falkor/CachedModelProxy$SuperclassExclusionStrategy;

    invoke-direct {v1, p0, v4}, Lcom/netflix/falkor/CachedModelProxy$SuperclassExclusionStrategy;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/falkor/CachedModelProxy$1;)V

    .line 4251
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->addSerializationExclusionStrategy(Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    new-instance v1, Lcom/netflix/falkor/CachedModelProxy$SuperclassExclusionStrategy;

    invoke-direct {v1, p0, v4}, Lcom/netflix/falkor/CachedModelProxy$SuperclassExclusionStrategy;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/falkor/CachedModelProxy$1;)V

    .line 4252
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->addDeserializationExclusionStrategy(Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 4253
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 4254
    new-instance v1, Lcom/google/gson/stream/JsonWriter;

    invoke-direct {v1, p1}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->write(Lcom/google/gson/Gson;Lcom/google/gson/stream/JsonWriter;)V

    .line 4255
    return-void
.end method

.method public setVideoRating(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 7

    .prologue
    .line 3967
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$SetVideoRatingTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/falkor/CachedModelProxy$SetVideoRatingTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 3968
    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 505
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CachedModelProxy cache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy;->root:Lcom/netflix/falkor/BranchNode;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateBookmarkPosition(Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3975
    if-nez p1, :cond_1

    .line 3976
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Can\'t update bookmark position - asset is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4017
    :cond_0
    :goto_0
    return-void

    .line 3980
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlaybackBookmark()I

    move-result v1

    .line 3981
    sget-boolean v0, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v0, :cond_2

    .line 3982
    const-string/jumbo v0, "CachedModelProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Updating video positions for asset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", playable bookmark: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3985
    :cond_2
    if-gtz v1, :cond_3

    .line 3986
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3987
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "updateBookmarkPosition - bookmarkPos <= 0"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3992
    :cond_3
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3993
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "asset with null playableId, asset:%s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3997
    :cond_4
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v2, v4

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    const/4 v0, 0x2

    const-string/jumbo v3, "bookmark"

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    .line 3998
    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getVideo(Lcom/netflix/falkor/PQL;)Lcom/netflix/model/branches/FalkorObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/branches/FalkorVideo;

    .line 4000
    if-nez v0, :cond_6

    .line 4001
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4002
    const-string/jumbo v0, "CachedModelProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBookmarkPosition - video is null, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3997
    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 4007
    :cond_6
    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getBookmark()Lcom/netflix/model/leafs/Video$Bookmark;

    move-result-object v0

    .line 4008
    if-nez v0, :cond_7

    .line 4009
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4010
    const-string/jumbo v0, "CachedModelProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBookmarkPosition - bookmark is null, video id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4015
    :cond_7
    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/Video$Bookmark;->setBookmarkPosition(I)V

    .line 4016
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/model/leafs/Video$Bookmark;->setLastModified(J)V

    goto/16 :goto_0
.end method

.method public updateExpiredContentAdvisoryStatus(Ljava/lang/String;Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;)V
    .locals 1

    .prologue
    .line 4043
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$UpdateExpiryAdvisoryStatusTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy$UpdateExpiryAdvisoryStatusTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 4044
    return-void
.end method
