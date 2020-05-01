.class public Lorg/xbill/DNS/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# static fields
.field private static final defaultMaxEntries:I = 0xc350


# instance fields
.field private data:Lorg/xbill/DNS/Cache$CacheMap;

.field private dclass:I

.field private maxcache:I

.field private maxncache:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Cache;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    iput v0, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    iput p1, p0, Lorg/xbill/DNS/Cache;->dclass:I

    new-instance v0, Lorg/xbill/DNS/Cache$CacheMap;

    const v1, 0xc350

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Cache$CacheMap;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    iput v0, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    new-instance v0, Lorg/xbill/DNS/Cache$CacheMap;

    const v1, 0xc350

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Cache$CacheMap;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    new-instance v0, Lorg/xbill/DNS/Master;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Master;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lorg/xbill/DNS/Master;->nextRecord()Lorg/xbill/DNS/Record;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/xbill/DNS/Cache;->addRecord(Lorg/xbill/DNS/Record;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(JJ)I
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lorg/xbill/DNS/Cache;->limitExpire(JJ)I

    move-result v0

    return v0
.end method

.method private declared-synchronized addElement(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Cache$Element;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1, p2}, Lorg/xbill/DNS/Cache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {p2}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v3

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Cache$Element;

    invoke-interface {v1}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-interface {v0, v2, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    check-cast v0, Lorg/xbill/DNS/Cache$Element;

    invoke-interface {v0}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v1

    if-ne v1, v3, :cond_4

    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1, p2}, Lorg/xbill/DNS/Cache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1, v1}, Lorg/xbill/DNS/Cache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized allElements(Ljava/lang/Object;)[Lorg/xbill/DNS/Cache$Element;
    .locals 2

    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/xbill/DNS/Cache$Element;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xbill/DNS/Cache$Element;

    check-cast v0, [Lorg/xbill/DNS/Cache$Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    check-cast p1, Lorg/xbill/DNS/Cache$Element;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/xbill/DNS/Cache$Element;

    const/4 v1, 0x0

    aput-object p1, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
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

.method private declared-synchronized findElement(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Cache$Element;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Cache;->exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private findRecords(Lorg/xbill/DNS/Name;II)[Lorg/xbill/DNS/RRset;
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Lorg/xbill/DNS/Cache;->lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/SetResponse;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/xbill/DNS/SetResponse;->answers()[Lorg/xbill/DNS/RRset;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final getCred(IZ)I
    .locals 4

    const/4 v0, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x3

    if-ne p1, v2, :cond_2

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    if-nez p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "getCred: invalid section"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static limitExpire(JJ)I
    .locals 6

    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-ltz v0, :cond_0

    cmp-long v0, p2, p0

    if-gez v0, :cond_0

    move-wide p0, p2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    add-long/2addr v0, p0

    cmp-long v2, v0, v4

    if-ltz v2, :cond_1

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    :cond_1
    const v0, 0x7fffffff

    :goto_0
    return v0

    :cond_2
    long-to-int v0, v0

    goto :goto_0
.end method

.method private static markAdditional(Lorg/xbill/DNS/RRset;Ljava/util/Set;)V
    .locals 2

    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getAdditionalName()Lorg/xbill/DNS/Name;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getAdditionalName()Lorg/xbill/DNS/Name;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private declared-synchronized oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;
    .locals 4

    const/4 v1, 0x0

    monitor-enter p0

    const/16 v0, 0xff

    if-ne p3, v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "oneElement(ANY)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Cache$Element;

    invoke-interface {v0}, Lorg/xbill/DNS/Cache$Element;->getType()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-ne v3, p3, :cond_2

    :goto_1
    if-nez v0, :cond_4

    :cond_1
    :goto_2
    monitor-exit p0

    return-object v1

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    :try_start_2
    check-cast p2, Lorg/xbill/DNS/Cache$Element;

    invoke-interface {p2}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v0

    if-ne v0, p3, :cond_6

    move-object v0, p2

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Lorg/xbill/DNS/Cache$Element;->expired()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p1, p3}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V

    goto :goto_2

    :cond_5
    invoke-interface {v0, p4}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-ltz v2, :cond_1

    move-object v1, v0

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method private declared-synchronized removeElement(Lorg/xbill/DNS/Name;I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Cache$Element;

    invoke-interface {v1}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v1

    if-ne v1, p2, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    :try_start_2
    check-cast v0, Lorg/xbill/DNS/Cache$Element;

    invoke-interface {v0}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized removeName(Lorg/xbill/DNS/Name;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addMessage(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/SetResponse;
    .locals 18

    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v9

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string/jumbo v4, "verbosecache"

    invoke-static {v4}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v10

    if-eqz v9, :cond_0

    const/4 v4, 0x3

    if-ne v9, v4, :cond_1

    :cond_0
    if-nez v1, :cond_3

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return-object v2

    :cond_3
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v6

    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v7

    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v11

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Message;->getSectionRRsets(I)[Lorg/xbill/DNS/RRset;

    move-result-object v13

    const/4 v1, 0x0

    move v5, v1

    move-object v4, v6

    move-object v1, v2

    :goto_1
    array-length v2, v13

    if-ge v5, v2, :cond_1a

    aget-object v2, v13, v5

    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v2

    if-eq v2, v11, :cond_4

    move v2, v3

    move-object v3, v4

    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object v4, v3

    move v3, v2

    goto :goto_1

    :cond_4
    aget-object v2, v13, v5

    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v2

    aget-object v14, v13, v5

    invoke-virtual {v14}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v15

    if-eq v2, v7, :cond_5

    const/16 v16, 0xff

    move/from16 v0, v16

    if-ne v7, v0, :cond_8

    :cond_5
    invoke-virtual {v14, v4}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    aget-object v2, v13, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    const/4 v2, 0x1

    if-ne v4, v6, :cond_7

    if-nez v1, :cond_6

    new-instance v1, Lorg/xbill/DNS/SetResponse;

    const/4 v3, 0x6

    invoke-direct {v1, v3}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    :cond_6
    aget-object v3, v13, v5

    invoke-virtual {v1, v3}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V

    :cond_7
    aget-object v3, v13, v5

    invoke-static {v3, v12}, Lorg/xbill/DNS/Cache;->markAdditional(Lorg/xbill/DNS/RRset;Ljava/util/Set;)V

    move-object v3, v4

    goto :goto_2

    :cond_8
    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v2, v0, :cond_9

    invoke-virtual {v14, v4}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    aget-object v2, v13, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    if-ne v4, v6, :cond_19

    new-instance v1, Lorg/xbill/DNS/SetResponse;

    const/4 v2, 0x4

    aget-object v4, v13, v5

    invoke-direct {v1, v2, v4}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    move-object v2, v1

    :goto_3
    aget-object v1, v13, v5

    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/CNAMERecord;

    invoke-virtual {v1}, Lorg/xbill/DNS/CNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v1

    move-object/from16 v17, v2

    move v2, v3

    move-object v3, v1

    move-object/from16 v1, v17

    goto :goto_2

    :cond_9
    const/16 v16, 0x27

    move/from16 v0, v16

    if-ne v2, v0, :cond_18

    invoke-virtual {v4, v14}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v2

    if-eqz v2, :cond_18

    aget-object v2, v13, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    if-ne v4, v6, :cond_17

    new-instance v1, Lorg/xbill/DNS/SetResponse;

    const/4 v2, 0x5

    aget-object v14, v13, v5

    invoke-direct {v1, v2, v14}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    move-object v2, v1

    :goto_4
    aget-object v1, v13, v5

    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/DNAMERecord;

    :try_start_0
    invoke-virtual {v4, v1}, Lorg/xbill/DNS/Name;->fromDNAME(Lorg/xbill/DNS/DNAMERecord;)Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object/from16 v17, v2

    move v2, v3

    move-object v3, v1

    move-object/from16 v1, v17

    goto/16 :goto_2

    :catch_0
    move-exception v1

    :goto_5
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Message;->getSectionRRsets(I)[Lorg/xbill/DNS/RRset;

    move-result-object v11

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move/from16 v17, v1

    move-object v1, v5

    move-object v5, v6

    move/from16 v6, v17

    :goto_6
    array-length v13, v11

    if-ge v6, v13, :cond_c

    aget-object v13, v11, v6

    invoke-virtual {v13}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v13

    const/4 v14, 0x6

    if-ne v13, v14, :cond_b

    aget-object v13, v11, v6

    invoke-virtual {v13}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v13

    if-eqz v13, :cond_b

    aget-object v5, v11, v6

    :cond_a
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_b
    aget-object v13, v11, v6

    invoke-virtual {v13}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_a

    aget-object v13, v11, v6

    invoke-virtual {v13}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v13

    if-eqz v13, :cond_a

    aget-object v1, v11, v6

    goto :goto_7

    :cond_c
    if-nez v3, :cond_14

    const/4 v3, 0x3

    if-ne v9, v3, :cond_11

    const/4 v3, 0x0

    :goto_8
    const/4 v6, 0x3

    if-eq v9, v6, :cond_d

    if-nez v5, :cond_d

    if-nez v1, :cond_13

    :cond_d
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v8}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v6

    const/4 v1, 0x0

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/SOARecord;

    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v1, v6}, Lorg/xbill/DNS/Cache;->addNegative(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/SOARecord;I)V

    if-nez v2, :cond_f

    const/4 v1, 0x3

    if-ne v9, v1, :cond_12

    const/4 v1, 0x1

    :goto_9
    invoke-static {v1}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;

    move-result-object v2

    :cond_f
    :goto_a
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Message;->getSectionRRsets(I)[Lorg/xbill/DNS/RRset;

    move-result-object v3

    const/4 v1, 0x0

    :goto_b
    array-length v4, v3

    if-ge v1, v4, :cond_16

    aget-object v4, v3, v1

    invoke-virtual {v4}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_15

    const/16 v5, 0x1c

    if-eq v4, v5, :cond_15

    const/16 v5, 0x26

    if-eq v4, v5, :cond_15

    :cond_10
    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_11
    move v3, v7

    goto :goto_8

    :cond_12
    const/4 v1, 0x2

    goto :goto_9

    :cond_13
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    invoke-static {v1, v12}, Lorg/xbill/DNS/Cache;->markAdditional(Lorg/xbill/DNS/RRset;Ljava/util/Set;)V

    if-nez v2, :cond_f

    new-instance v2, Lorg/xbill/DNS/SetResponse;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    goto :goto_a

    :cond_14
    if-nez v9, :cond_f

    if-eqz v1, :cond_f

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    invoke-static {v1, v12}, Lorg/xbill/DNS/Cache;->markAdditional(Lorg/xbill/DNS/RRset;Ljava/util/Set;)V

    goto :goto_a

    :cond_15
    aget-object v4, v3, v1

    invoke-virtual {v4}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v4

    aget-object v5, v3, v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    goto :goto_c

    :cond_16
    if-eqz v10, :cond_2

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    move-object v2, v1

    goto/16 :goto_4

    :cond_18
    move v2, v3

    move-object v3, v4

    goto/16 :goto_2

    :cond_19
    move-object v2, v1

    goto/16 :goto_3

    :cond_1a
    move-object v2, v1

    goto/16 :goto_5
.end method

.method public declared-synchronized addNegative(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/SOARecord;I)V
    .locals 8

    const-wide/16 v4, 0x0

    monitor-enter p0

    if-eqz p3, :cond_3

    :try_start_0
    invoke-virtual {p3}, Lorg/xbill/DNS/SOARecord;->getTTL()J

    move-result-wide v0

    move-wide v2, v0

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/Cache;->findElement(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0, p4}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0, p4}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v1

    if-gtz v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    if-nez v0, :cond_0

    new-instance v1, Lorg/xbill/DNS/Cache$NegativeElement;

    iget v0, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    int-to-long v6, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/Cache$NegativeElement;-><init>(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/SOARecord;IJ)V

    invoke-direct {p0, p1, v1}, Lorg/xbill/DNS/Cache;->addElement(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Cache$Element;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-wide v2, v4

    goto :goto_0
.end method

.method public declared-synchronized addRRset(Lorg/xbill/DNS/RRset;I)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v4

    const/4 v0, 0x0

    invoke-direct {p0, v1, v4, v0}, Lorg/xbill/DNS/Cache;->findElement(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v0

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-direct {p0, v1, v4}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0, p2}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v2

    if-gtz v2, :cond_2

    const/4 v0, 0x0

    :cond_2
    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/xbill/DNS/Cache$CacheRRset;

    :goto_1
    invoke-direct {p0, v1, p1}, Lorg/xbill/DNS/Cache;->addElement(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Cache$Element;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    new-instance v0, Lorg/xbill/DNS/Cache$CacheRRset;

    iget v2, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    int-to-long v2, v2

    invoke-direct {v0, p1, p2, v2, v3}, Lorg/xbill/DNS/Cache$CacheRRset;-><init>(Lorg/xbill/DNS/RRset;IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p1, v0

    goto :goto_1
.end method

.method public declared-synchronized addRecord(Lorg/xbill/DNS/Record;ILjava/lang/Object;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/Type;->isRR(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0, v0, v1, p2}, Lorg/xbill/DNS/Cache;->findElement(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/xbill/DNS/Cache$CacheRRset;

    iget v1, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    int-to-long v2, v1

    invoke-direct {v0, p1, p2, v2, v3}, Lorg/xbill/DNS/Cache$CacheRRset;-><init>(Lorg/xbill/DNS/Record;IJ)V

    invoke-virtual {p0, v0, p2}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-interface {v0, p2}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheRRset;->addRR(Lorg/xbill/DNS/Record;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized clearCache()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0}, Lorg/xbill/DNS/Cache$CacheMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public findAnyRecords(Lorg/xbill/DNS/Name;I)[Lorg/xbill/DNS/RRset;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/Cache;->findRecords(Lorg/xbill/DNS/Name;II)[Lorg/xbill/DNS/RRset;

    move-result-object v0

    return-object v0
.end method

.method public findRecords(Lorg/xbill/DNS/Name;I)[Lorg/xbill/DNS/RRset;
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/Cache;->findRecords(Lorg/xbill/DNS/Name;II)[Lorg/xbill/DNS/RRset;

    move-result-object v0

    return-object v0
.end method

.method public flushName(Lorg/xbill/DNS/Name;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xbill/DNS/Cache;->removeName(Lorg/xbill/DNS/Name;)V

    return-void
.end method

.method public flushSet(Lorg/xbill/DNS/Name;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V

    return-void
.end method

.method public getDClass()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/Cache;->dclass:I

    return v0
.end method

.method public getMaxCache()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    return v0
.end method

.method public getMaxEntries()I
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0}, Lorg/xbill/DNS/Cache$CacheMap;->getMaxSize()I

    move-result v0

    return v0
.end method

.method public getMaxNCache()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    return v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0}, Lorg/xbill/DNS/Cache$CacheMap;->size()I

    move-result v0

    return v0
.end method

.method protected declared-synchronized lookup(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;
    .locals 11

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v7

    move v6, v7

    :goto_0
    const/4 v0, 0x1

    if-lt v6, v0, :cond_10

    const/4 v0, 0x1

    if-ne v6, v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    if-ne v6, v7, :cond_2

    const/4 v0, 0x1

    move v5, v0

    :goto_2
    if-eqz v1, :cond_3

    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    move-object v4, v0

    :goto_3
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5

    :cond_0
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    move v5, v0

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_4

    move-object v4, p1

    goto :goto_3

    :cond_4
    new-instance v0, Lorg/xbill/DNS/Name;

    sub-int v1, v7, v6

    invoke-direct {v0, p1, v1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    move-object v4, v0

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_a

    const/16 v0, 0xff

    if-ne p2, v0, :cond_a

    new-instance v2, Lorg/xbill/DNS/SetResponse;

    const/4 v0, 0x6

    invoke-direct {v2, v0}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    invoke-direct {p0, v8}, Lorg/xbill/DNS/Cache;->allElements(Ljava/lang/Object;)[Lorg/xbill/DNS/Cache$Element;

    move-result-object v9

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v3, v0

    :goto_4
    array-length v0, v9

    if-ge v3, v0, :cond_9

    aget-object v0, v9, v3

    invoke-interface {v0}, Lorg/xbill/DNS/Cache$Element;->expired()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v0}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v0

    invoke-direct {p0, v4, v0}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V

    move v0, v1

    :goto_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_4

    :cond_6
    instance-of v10, v0, Lorg/xbill/DNS/Cache$CacheRRset;

    if-nez v10, :cond_7

    move v0, v1

    goto :goto_5

    :cond_7
    invoke-interface {v0, p3}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v10

    if-gez v10, :cond_8

    move v0, v1

    goto :goto_5

    :cond_8
    check-cast v0, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-virtual {v2, v0}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v1, 0x1

    goto :goto_5

    :cond_9
    if-lez v1, :cond_e

    move-object v0, v2

    :goto_6
    monitor-exit p0

    return-object v0

    :cond_a
    if-eqz v5, :cond_d

    :try_start_1
    invoke-direct {p0, v4, v8, p2, p3}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v0

    if-eqz v0, :cond_b

    instance-of v1, v0, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v1, :cond_b

    new-instance v1, Lorg/xbill/DNS/SetResponse;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    check-cast v0, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V

    move-object v0, v1

    goto :goto_6

    :cond_b
    if-eqz v0, :cond_c

    new-instance v0, Lorg/xbill/DNS/SetResponse;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/xbill/DNS/SetResponse;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_c
    const/4 v0, 0x5

    :try_start_2
    invoke-direct {p0, v4, v8, v0, p3}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v0

    if-eqz v0, :cond_e

    instance-of v1, v0, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v1, :cond_e

    new-instance v1, Lorg/xbill/DNS/SetResponse;

    const/4 v2, 0x4

    check-cast v0, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-direct {v1, v2, v0}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    move-object v0, v1

    goto :goto_6

    :cond_d
    const/16 v0, 0x27

    invoke-direct {p0, v4, v8, v0, p3}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v0

    if-eqz v0, :cond_e

    instance-of v1, v0, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v1, :cond_e

    new-instance v1, Lorg/xbill/DNS/SetResponse;

    const/4 v2, 0x5

    check-cast v0, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-direct {v1, v2, v0}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    move-object v0, v1

    goto :goto_6

    :cond_e
    const/4 v0, 0x2

    invoke-direct {p0, v4, v8, v0, p3}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v0

    if-eqz v0, :cond_f

    instance-of v1, v0, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v1, :cond_f

    new-instance v1, Lorg/xbill/DNS/SetResponse;

    const/4 v2, 0x3

    check-cast v0, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-direct {v1, v2, v0}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    move-object v0, v1

    goto :goto_6

    :cond_f
    if-eqz v5, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v4, v8, v0, p3}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    goto :goto_6

    :cond_10
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_6
.end method

.method public lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lorg/xbill/DNS/Cache;->lookup(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    return-object v0
.end method

.method public setMaxCache(I)V
    .locals 0

    iput p1, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    return-void
.end method

.method public setMaxEntries(I)V
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->setMaxSize(I)V

    return-void
.end method

.method public setMaxNCache(I)V
    .locals 0

    iput p1, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0}, Lorg/xbill/DNS/Cache$CacheMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Cache;->allElements(Ljava/lang/Object;)[Lorg/xbill/DNS/Cache$Element;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string/jumbo v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
