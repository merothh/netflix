.class public Lcom/ibm/icu/impl/ICUService;
.super Lcom/ibm/icu/impl/ICUNotifier;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/ICUService$ServiceListener;,
        Lcom/ibm/icu/impl/ICUService$LocaleRef;,
        Lcom/ibm/icu/impl/ICUService$CacheEntry;,
        Lcom/ibm/icu/impl/ICUService$Factory;,
        Lcom/ibm/icu/impl/ICUService$Key;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/ICUService$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private defaultSize:I

.field private dnref:Lcom/ibm/icu/impl/ICUService$LocaleRef;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/impl/ICUService$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final factoryLock:Lcom/ibm/icu/impl/ICURWLock;

.field private idcache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/ICUService$Factory;",
            ">;"
        }
    .end annotation
.end field

.field protected final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "service"

    .line 107
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 103
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUNotifier;-><init>()V

    .line 120
    new-instance v0, Lcom/ibm/icu/impl/ICURWLock;

    invoke-direct {v0}, Lcom/ibm/icu/impl/ICURWLock;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    const/4 v0, 0x0

    .line 131
    iput v0, p0, Lcom/ibm/icu/impl/ICUService;->defaultSize:I

    const-string v0, ""

    .line 104
    iput-object v0, p0, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUNotifier;-><init>()V

    .line 120
    new-instance v0, Lcom/ibm/icu/impl/ICURWLock;

    invoke-direct {v0}, Lcom/ibm/icu/impl/ICURWLock;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    const/4 v0, 0x0

    .line 131
    iput v0, p0, Lcom/ibm/icu/impl/ICUService;->defaultSize:I

    .line 112
    iput-object p1, p0, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected clearCaches()V
    .locals 1

    const/4 v0, 0x0

    .line 899
    iput-object v0, p0, Lcom/ibm/icu/impl/ICUService;->cache:Ljava/util/Map;

    .line 900
    iput-object v0, p0, Lcom/ibm/icu/impl/ICUService;->idcache:Ljava/util/Map;

    .line 901
    iput-object v0, p0, Lcom/ibm/icu/impl/ICUService;->dnref:Lcom/ibm/icu/impl/ICUService$LocaleRef;

    return-void
.end method

.method protected clearServiceCache()V
    .locals 1

    const/4 v0, 0x0

    .line 911
    iput-object v0, p0, Lcom/ibm/icu/impl/ICUService;->cache:Ljava/util/Map;

    return-void
.end method

.method public getKey(Lcom/ibm/icu/impl/ICUService$Key;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 368
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/impl/ICUService;->getKey(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getKey(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 387
    invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/impl/ICUService;->getKey(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getKey(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    .line 394
    iget-object v3, v1, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 395
    invoke-virtual/range {p0 .. p2}, Lcom/ibm/icu/impl/ICUService;->handleDefault(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 398
    :cond_0
    sget-boolean v3, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/ICUService$Key;->canonicalID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_1b

    .line 406
    :try_start_0
    iget-object v3, v1, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v3}, Lcom/ibm/icu/impl/ICURWLock;->acquireRead()V

    .line 408
    iget-object v3, v1, Lcom/ibm/icu/impl/ICUService;->cache:Ljava/util/Map;

    if-nez v3, :cond_3

    .line 410
    sget-boolean v3, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " cache was empty"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 413
    :cond_2
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :cond_3
    const/4 v4, 0x0

    .line 423
    iget-object v5, v1, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eqz v2, :cond_7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_5

    .line 427
    iget-object v9, v1, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-ne v2, v9, :cond_4

    add-int/2addr v8, v6

    goto :goto_1

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_6

    move-object v9, v4

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_2

    .line 433
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Factory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "not registered with service: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v9, v4

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    :goto_2
    const/4 v10, 0x0

    .line 440
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/ICUService$Key;->currentDescriptor()Ljava/lang/String;

    move-result-object v11

    .line 441
    sget-boolean v12, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v12, :cond_8

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v2, 0x1

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] looking for: "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v2, v14

    .line 442
    :cond_8
    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ibm/icu/impl/ICUService$CacheEntry;

    if-eqz v12, :cond_a

    .line 444
    sget-boolean v2, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v2, :cond_9

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " found with descriptor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    move v4, v10

    goto/16 :goto_5

    .line 447
    :cond_a
    sget-boolean v10, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v10, :cond_b

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "did not find: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " in cache"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b
    move v10, v8

    :goto_4
    if-ge v10, v5, :cond_f

    .line 458
    iget-object v13, v1, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    add-int/lit8 v14, v10, 0x1

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ibm/icu/impl/ICUService$Factory;

    .line 459
    sget-boolean v13, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v13, :cond_c

    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "trying factory["

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v14, -0x1

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 460
    :cond_c
    invoke-interface {v10, v0, v1}, Lcom/ibm/icu/impl/ICUService$Factory;->create(Lcom/ibm/icu/impl/ICUService$Key;Lcom/ibm/icu/impl/ICUService;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 462
    new-instance v12, Lcom/ibm/icu/impl/ICUService$CacheEntry;

    invoke-direct {v12, v11, v7}, Lcom/ibm/icu/impl/ICUService$CacheEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 463
    sget-boolean v2, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v2, :cond_11

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " factory supported: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", caching"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 466
    :cond_d
    sget-boolean v7, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v7, :cond_e

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "factory did not support: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_e
    move v10, v14

    goto :goto_4

    :cond_f
    if-nez v9, :cond_10

    .line 476
    new-instance v7, Ljava/util/ArrayList;

    const/4 v9, 0x5

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v9, v7

    .line 478
    :cond_10
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/ICUService$Key;->fallback()Z

    move-result v7

    if-nez v7, :cond_1a

    :cond_11
    :goto_5
    if-eqz v12, :cond_19

    if-eqz v4, :cond_15

    .line 484
    sget-boolean v0, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "\'"

    if-eqz v0, :cond_12

    :try_start_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caching \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v12, Lcom/ibm/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 485
    :cond_12
    iget-object v0, v12, Lcom/ibm/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    invoke-interface {v3, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_14

    .line 487
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 488
    sget-boolean v5, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v5, :cond_13

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " adding descriptor: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' for actual: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v12, Lcom/ibm/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 490
    :cond_13
    invoke-interface {v3, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 497
    :cond_14
    iput-object v3, v1, Lcom/ibm/icu/impl/ICUService;->cache:Ljava/util/Map;

    :cond_15
    if-eqz p2, :cond_17

    .line 502
    iget-object v0, v12, Lcom/ibm/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    .line 503
    iget-object v0, v12, Lcom/ibm/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    aput-object v0, p2, v7

    goto :goto_7

    :cond_16
    const/4 v7, 0x0

    .line 505
    iget-object v0, v12, Lcom/ibm/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    aput-object v0, p2, v7

    .line 509
    :cond_17
    :goto_7
    sget-boolean v0, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v0, :cond_18

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found in service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 511
    :cond_18
    iget-object v0, v12, Lcom/ibm/icu/impl/ICUService$CacheEntry;->service:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    iget-object v2, v1, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/ICURWLock;->releaseRead()V

    return-object v0

    :cond_19
    iget-object v2, v1, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/ICURWLock;->releaseRead()V

    goto :goto_8

    :cond_1a
    move v10, v4

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    iget-object v2, v1, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/ICURWLock;->releaseRead()V

    throw v0

    .line 519
    :cond_1b
    :goto_8
    sget-boolean v2, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v2, :cond_1c

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not found in service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 521
    :cond_1c
    invoke-virtual/range {p0 .. p2}, Lcom/ibm/icu/impl/ICUService;->handleDefault(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected handleDefault(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isDefault()Z
    .locals 2

    .line 868
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/ibm/icu/impl/ICUService;->defaultSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected markDefault()V
    .locals 1

    .line 876
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/ICUService;->defaultSize:I

    return-void
.end method

.method protected notifyListener(Ljava/util/EventListener;)V
    .locals 0

    .line 941
    check-cast p1, Lcom/ibm/icu/impl/ICUService$ServiceListener;

    invoke-interface {p1, p0}, Lcom/ibm/icu/impl/ICUService$ServiceListener;->serviceChanged(Lcom/ibm/icu/impl/ICUService;)V

    return-void
.end method

.method public final registerFactory(Lcom/ibm/icu/impl/ICUService$Factory;)Lcom/ibm/icu/impl/ICUService$Factory;
    .locals 2

    if-eqz p1, :cond_0

    .line 797
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICURWLock;->acquireWrite()V

    .line 798
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 799
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUService;->clearCaches()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICURWLock;->releaseWrite()V

    .line 804
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUService;->notifyChanged()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 802
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICURWLock;->releaseWrite()V

    throw p1

    .line 794
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
