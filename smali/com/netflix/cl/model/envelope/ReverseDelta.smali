.class public Lcom/netflix/cl/model/envelope/ReverseDelta;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private operations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/cl/model/envelope/Operation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/cl/model/envelope/ReverseDelta;->operations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lcom/netflix/cl/model/envelope/Operation;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 26
    monitor-exit p0

    return-void

    .line 29
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/cl/model/envelope/ReverseDelta;->operations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addItself(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 6

    .line 34
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 35
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 36
    iget-object v1, p0, Lcom/netflix/cl/model/envelope/ReverseDelta;->operations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/cl/model/envelope/Operation;

    .line 38
    instance-of v3, v2, Lcom/netflix/cl/model/envelope/SimpleOperation;

    if-eqz v3, :cond_0

    .line 39
    check-cast v2, Lcom/netflix/cl/model/envelope/SimpleOperation;

    invoke-interface {v2, v0}, Lcom/netflix/cl/model/envelope/SimpleOperation;->addItself(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    goto :goto_0

    .line 40
    :cond_0
    instance-of v3, v2, Lcom/netflix/cl/model/envelope/ComplexOperation;

    if-eqz v3, :cond_1

    .line 41
    check-cast v2, Lcom/netflix/cl/model/envelope/ComplexOperation;

    .line 42
    invoke-virtual {v2}, Lcom/netflix/cl/model/envelope/ComplexOperation;->toJsonArray()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "Not supported operation implementation: %s"

    invoke-interface {v3, v2, v4}, Lcom/netflix/cl/Platform$LocalLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object p1
.end method
