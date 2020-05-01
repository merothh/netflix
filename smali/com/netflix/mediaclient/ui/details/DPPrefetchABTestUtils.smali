.class public final Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;
.super Ljava/lang/Object;
.source "DPPrefetchABTestUtils.java"


# static fields
.field private static final CELL_FIVE_PREFETCH_COUNT:I = 0x3

.field private static final CELL_FOUR_PREFETCH_COUNT:I = 0x1

.field public static final DP_PREFETCH_REQUEST_LATCH_TIMEOUT_MS:I = 0x4e20

.field public static final DP_TTI_COMPLETION_REASON_PARAM_KEY:Ljava/lang/String; = "reason"

.field public static final PARAM_KEY_IS_FROM_CACHE:Ljava/lang/String; = "isFromCache"

.field private static final TAG:Ljava/lang/String; = "DPPrefetchABTestUtils"

.field private static volatile pendingDetailsRequestsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile pendingDetailsRequestsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToPendingDetailsRequest(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsSet:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsSet:Ljava/util/Set;

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static isInTest(Landroid/content/Context;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getDPPrefetchABTestConfig(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInputValid(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/ServiceManager;",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "DPPrefetchABTestUtils"

    const-string/jumbo v2, "isInputValid: videos list is empty"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->isInTest(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string/jumbo v1, "DPPrefetchABTestUtils"

    const-string/jumbo v2, "isInputValid: manager not ready or not in AB test"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static latchToPendingRequestsIfExists(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsMap:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsMap:Ljava/util/Map;

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "DPPrefetchABTestUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Waiting on prefetch DP response for videoId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Events;->DP_PREFETCH_REQUEST_IN_FLIGHT_EVENT:Lcom/netflix/mediaclient/service/logging/perf/Events;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->logEvent(Lcom/netflix/mediaclient/service/logging/perf/Events;Ljava/util/Map;)V

    const-wide/16 v2, 0x4e20

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    const-string/jumbo v0, "DPPrefetchABTestUtils"

    const-string/jumbo v1, "latchToPendingRequestsIfExists: latch timed out"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsMap:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v0, "DPPrefetchABTestUtils"

    const-string/jumbo v1, "latchToPendingRequestsIfExists: latch interrupted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method

.method public static prefetchDPForLomoRow(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/ServiceManager;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;I)V"
        }
    .end annotation

    invoke-static {p0, p2}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->isInputValid(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CHARACTERS:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne v0, v1, :cond_1

    :cond_0
    const-string/jumbo v0, "DPPrefetchABTestUtils"

    const-string/jumbo v1, "Lomo is null or type characters"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getDPPrefetchABTestConfig(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils$2;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_1
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v1

    sget-object v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_THREE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v2

    if-lt v1, v2, :cond_3

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CONTINUE_WATCHING:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-eq v1, v2, :cond_2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->BILLBOARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne v1, v2, :cond_3

    :cond_2
    move v0, p3

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "DPPrefetchABTestUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prefetchDPForLomoRow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " max videos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {p0, p2, v0}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchVideoListDetails(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;I)V

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static prefetchDPForSearch(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/ServiceManager;",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->isInputValid(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchVideoListDetails(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;I)V

    goto :goto_0
.end method

.method public static prefetchDPForSimilars(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/ServiceManager;",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->isInputValid(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils$2;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getDPPrefetchABTestConfig(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchVideoListDetails(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;I)V

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static prefetchVideoListDetails(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/ServiceManager;",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;I)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->isInputValid(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils$1;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils$1;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->prefetchVideoListDetails(Ljava/util/List;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method public static removeFromPendingDetailsRequest(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsSet:Ljava/util/Set;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "DPPrefetchABTestUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received prefetch DP response for videoId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static reportDPMetadataFetchedEvent(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    const/4 v0, 0x0

    instance-of v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->wasAllDataLocalToCache()Z

    move-result v0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Events;->DP_METADATA_FETCHED_EVENT:Lcom/netflix/mediaclient/service/logging/perf/Events;

    const-string/jumbo v3, "isFromCache"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->logEvent(Lcom/netflix/mediaclient/service/logging/perf/Events;Ljava/util/Map;)V

    return-void
.end method
