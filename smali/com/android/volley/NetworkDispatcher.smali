.class public Lcom/android/volley/NetworkDispatcher;
.super Ljava/lang/Thread;
.source "NetworkDispatcher.java"


# static fields
.field private static sListener:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/volley/NetworkDispatcher$NetworkDispatcherListener;",
            "Lcom/android/volley/NetworkDispatcher$NetworkDispatcherListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCache:Lcom/android/volley/Cache;

.field private final mDelivery:Lcom/android/volley/ResponseDelivery;

.field private final mNetwork:Lcom/android/volley/Network;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/volley/NetworkDispatcher;->sListener:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Network;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request;",
            ">;",
            "Lcom/android/volley/Network;",
            "Lcom/android/volley/Cache;",
            "Lcom/android/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    const-string/jumbo v0, "NetworkDispatcher"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    .line 69
    iput-object p1, p0, Lcom/android/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 70
    iput-object p2, p0, Lcom/android/volley/NetworkDispatcher;->mNetwork:Lcom/android/volley/Network;

    .line 71
    iput-object p3, p0, Lcom/android/volley/NetworkDispatcher;->mCache:Lcom/android/volley/Cache;

    .line 72
    iput-object p4, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    .line 73
    return-void
.end method

.method private notifyOnFinished(Lcom/android/volley/Request;)V
    .locals 2

    .prologue
    .line 168
    sget-object v0, Lcom/android/volley/NetworkDispatcher;->sListener:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/NetworkDispatcher$NetworkDispatcherListener;

    .line 169
    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0, p1}, Lcom/android/volley/NetworkDispatcher$NetworkDispatcherListener;->onCompleted(Lcom/android/volley/Request;)V

    goto :goto_0

    .line 173
    :cond_1
    return-void
.end method

.method private notifyOnStarted(Lcom/android/volley/Request;)V
    .locals 2

    .prologue
    .line 160
    sget-object v0, Lcom/android/volley/NetworkDispatcher;->sListener:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/NetworkDispatcher$NetworkDispatcherListener;

    .line 161
    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0, p1}, Lcom/android/volley/NetworkDispatcher$NetworkDispatcherListener;->onStarted(Lcom/android/volley/Request;)V

    goto :goto_0

    .line 165
    :cond_1
    return-void
.end method

.method private parseAndDeliverNetworkError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p1, p2}, Lcom/android/volley/Request;->parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v1, p1, v0}, Lcom/android/volley/ResponseDelivery;->postError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 178
    return-void
.end method


# virtual methods
.method public quit()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    .line 81
    invoke-virtual {p0}, Lcom/android/volley/NetworkDispatcher;->interrupt()V

    .line 82
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 86
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 91
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :try_start_1
    const-string/jumbo v1, "network-queue-take"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    const-string/jumbo v1, "network-discard-cancelled"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/volley/VolleyError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    invoke-direct {p0, v0}, Lcom/android/volley/NetworkDispatcher;->notifyOnFinished(Lcom/android/volley/Request;)V

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 94
    iget-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    if-eqz v0, :cond_0

    .line 95
    return-void

    .line 110
    :cond_1
    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/volley/NetworkDispatcher;->notifyOnStarted(Lcom/android/volley/Request;)V

    .line 113
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_2

    .line 114
    invoke-virtual {v0}, Lcom/android/volley/Request;->getTrafficStatsTag()I

    move-result v1

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 118
    :cond_2
    invoke-virtual {v0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    invoke-virtual {v0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/volley/toolbox/VolleyFileUtils;->readFileUrlToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 120
    new-instance v1, Lcom/android/volley/NetworkResponse;

    const/16 v3, 0xc8

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    .line 125
    :goto_1
    const-string/jumbo v2, "network-http-complete"

    invoke-virtual {v0, v2}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 129
    iget-boolean v2, v1, Lcom/android/volley/NetworkResponse;->notModified:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/android/volley/Request;->hasHadResponseDelivered()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 130
    const-string/jumbo v1, "not-modified"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/volley/VolleyError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    invoke-direct {p0, v0}, Lcom/android/volley/NetworkDispatcher;->notifyOnFinished(Lcom/android/volley/Request;)V

    goto :goto_0

    .line 123
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/android/volley/NetworkDispatcher;->mNetwork:Lcom/android/volley/Network;

    invoke-interface {v1, v0}, Lcom/android/volley/Network;->performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;

    move-result-object v1

    goto :goto_1

    .line 135
    :cond_4
    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v1

    .line 136
    const-string/jumbo v2, "network-parse-complete"

    invoke-virtual {v0, v2}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Lcom/android/volley/Request;->shouldCache()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    if-eqz v2, :cond_5

    .line 141
    iget-object v2, p0, Lcom/android/volley/NetworkDispatcher;->mCache:Lcom/android/volley/Cache;

    invoke-virtual {v0}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    invoke-interface {v2, v3, v4}, Lcom/android/volley/Cache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    .line 142
    const-string/jumbo v2, "network-cache-written"

    invoke-virtual {v0, v2}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 146
    :cond_5
    invoke-virtual {v0}, Lcom/android/volley/Request;->markDelivered()V

    .line 147
    iget-object v2, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v2, v0, v1}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;)V
    :try_end_3
    .catch Lcom/android/volley/VolleyError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    invoke-direct {p0, v0}, Lcom/android/volley/NetworkDispatcher;->notifyOnFinished(Lcom/android/volley/Request;)V

    goto/16 :goto_0

    .line 148
    :catch_1
    move-exception v1

    .line 149
    :try_start_4
    invoke-direct {p0, v0, v1}, Lcom/android/volley/NetworkDispatcher;->parseAndDeliverNetworkError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 154
    invoke-direct {p0, v0}, Lcom/android/volley/NetworkDispatcher;->notifyOnFinished(Lcom/android/volley/Request;)V

    goto/16 :goto_0

    .line 150
    :catch_2
    move-exception v1

    .line 151
    :try_start_5
    const-string/jumbo v2, "Unhandled exception %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v2, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    new-instance v3, Lcom/android/volley/VolleyError;

    invoke-direct {v3, v1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v0, v3}, Lcom/android/volley/ResponseDelivery;->postError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 154
    invoke-direct {p0, v0}, Lcom/android/volley/NetworkDispatcher;->notifyOnFinished(Lcom/android/volley/Request;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/android/volley/NetworkDispatcher;->notifyOnFinished(Lcom/android/volley/Request;)V

    throw v1
.end method
