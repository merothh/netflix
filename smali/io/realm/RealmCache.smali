.class final Lio/realm/RealmCache;
.super Ljava/lang/Object;
.source "RealmCache.java"


# static fields
.field private static cachesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/realm/RealmCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final configuration:Lio/realm/RealmConfiguration;

.field private final refAndCountMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lio/realm/RealmCache$RealmCacheType;",
            "Lio/realm/RealmCache$RefAndCount;",
            ">;"
        }
    .end annotation
.end field

.field private final typedColumnIndicesArray:[Lio/realm/internal/ColumnIndices;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/realm/RealmCache;->cachesMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lio/realm/RealmConfiguration;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lio/realm/internal/ColumnIndices;

    iput-object v0, p0, Lio/realm/RealmCache;->typedColumnIndicesArray:[Lio/realm/internal/ColumnIndices;

    iput-object p1, p0, Lio/realm/RealmCache;->configuration:Lio/realm/RealmConfiguration;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lio/realm/RealmCache$RealmCacheType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lio/realm/RealmCache;->refAndCountMap:Ljava/util/EnumMap;

    invoke-static {}, Lio/realm/RealmCache$RealmCacheType;->values()[Lio/realm/RealmCache$RealmCacheType;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Lio/realm/RealmCache;->refAndCountMap:Ljava/util/EnumMap;

    new-instance v5, Lio/realm/RealmCache$RefAndCount;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lio/realm/RealmCache$RefAndCount;-><init>(Lio/realm/RealmCache$1;)V

    invoke-virtual {v4, v3, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static copyAssetFileIfNeeded(Lio/realm/RealmConfiguration;)V
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->hasAssetFile()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getRealmDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getRealmFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getAssetFile()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    if-nez v1, :cond_4

    :try_start_1
    new-instance v0, Lio/realm/exceptions/RealmFileException;

    sget-object v3, Lio/realm/exceptions/RealmFileException$Kind;->ACCESS_ERROR:Lio/realm/exceptions/RealmFileException$Kind;

    const-string/jumbo v4, "Invalid input stream to asset file."

    invoke-direct {v0, v3, v4}, Lio/realm/exceptions/RealmFileException;-><init>(Lio/realm/exceptions/RealmFileException$Kind;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :catch_0
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    :goto_0
    :try_start_2
    new-instance v4, Lio/realm/exceptions/RealmFileException;

    sget-object v5, Lio/realm/exceptions/RealmFileException$Kind;->ACCESS_ERROR:Lio/realm/exceptions/RealmFileException$Kind;

    const-string/jumbo v6, "Could not resolve the path to the Realm asset file."

    invoke-direct {v4, v5, v6, v0}, Lio/realm/exceptions/RealmFileException;-><init>(Lio/realm/exceptions/RealmFileException$Kind;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_3
    :goto_3
    throw v0

    :cond_4
    :try_start_5
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/16 v0, 0x1000

    :try_start_6
    new-array v0, v0, [B

    :goto_4
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_5

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_8

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-object v1, v2

    :goto_5
    if-eqz v3, :cond_6

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_6
    :goto_6
    if-eqz v1, :cond_0

    new-instance v0, Lio/realm/exceptions/RealmFileException;

    sget-object v2, Lio/realm/exceptions/RealmFileException$Kind;->ACCESS_ERROR:Lio/realm/exceptions/RealmFileException$Kind;

    invoke-direct {v0, v2, v1}, Lio/realm/exceptions/RealmFileException;-><init>(Lio/realm/exceptions/RealmFileException$Kind;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception v2

    move-object v1, v2

    goto :goto_5

    :catch_3
    move-exception v0

    if-nez v1, :cond_7

    :goto_7
    move-object v1, v0

    goto :goto_6

    :catch_4
    move-exception v1

    if-nez v2, :cond_3

    goto :goto_3

    :catch_5
    move-exception v2

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    goto :goto_1

    :catch_6
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_7

    :cond_8
    move-object v1, v2

    goto :goto_5
.end method

.method static declared-synchronized createRealmOrGetFromCache(Lio/realm/RealmConfiguration;Ljava/lang/Class;)Lio/realm/BaseRealm;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/BaseRealm;",
            ">(",
            "Lio/realm/RealmConfiguration;",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v1, 0x0

    const-class v5, Lio/realm/RealmCache;

    monitor-enter v5

    :try_start_0
    sget-object v0, Lio/realm/RealmCache;->cachesMap:Ljava/util/Map;

    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmCache;

    if-nez v0, :cond_7

    new-instance v0, Lio/realm/RealmCache;

    invoke-direct {v0, p0}, Lio/realm/RealmCache;-><init>(Lio/realm/RealmConfiguration;)V

    invoke-static {p0}, Lio/realm/RealmCache;->copyAssetFileIfNeeded(Lio/realm/RealmConfiguration;)V

    move-object v3, v0

    move v2, v1

    :goto_0
    iget-object v0, v3, Lio/realm/RealmCache;->refAndCountMap:Ljava/util/EnumMap;

    invoke-static {p1}, Lio/realm/RealmCache$RealmCacheType;->valueOf(Ljava/lang/Class;)Lio/realm/RealmCache$RealmCacheType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmCache$RefAndCount;

    invoke-static {v0}, Lio/realm/RealmCache$RefAndCount;->access$100(Lio/realm/RealmCache$RefAndCount;)I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lio/realm/internal/SharedRealm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/internal/SharedRealm;

    move-result-object v1

    invoke-static {v1}, Lio/realm/internal/Table;->primaryKeyTableNeedsMigration(Lio/realm/internal/SharedRealm;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lio/realm/internal/SharedRealm;->beginTransaction()V

    invoke-static {v1}, Lio/realm/internal/Table;->migratePrimaryKeyTableIfNeeded(Lio/realm/internal/SharedRealm;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v1}, Lio/realm/internal/SharedRealm;->commitTransaction()V

    :cond_0
    :goto_1
    invoke-virtual {v1}, Lio/realm/internal/SharedRealm;->close()V

    :cond_1
    invoke-static {v0}, Lio/realm/RealmCache$RefAndCount;->access$200(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    const-class v1, Lio/realm/Realm;

    if-ne p1, v1, :cond_9

    iget-object v1, v3, Lio/realm/RealmCache;->typedColumnIndicesArray:[Lio/realm/internal/ColumnIndices;

    invoke-static {p0, v1}, Lio/realm/Realm;->createInstance(Lio/realm/RealmConfiguration;[Lio/realm/internal/ColumnIndices;)Lio/realm/Realm;

    move-result-object v1

    :goto_2
    if-nez v2, :cond_2

    sget-object v2, Lio/realm/RealmCache;->cachesMap:Ljava/util/Map;

    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v0}, Lio/realm/RealmCache$RefAndCount;->access$200(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-static {v0}, Lio/realm/RealmCache$RefAndCount;->access$300(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    invoke-static {v0}, Lio/realm/RealmCache$RefAndCount;->access$300(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_5

    const-class v2, Lio/realm/Realm;

    if-ne p1, v2, :cond_4

    invoke-static {v0}, Lio/realm/RealmCache$RefAndCount;->access$100(Lio/realm/RealmCache$RefAndCount;)I

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0}, Lio/realm/RealmCache$RefAndCount;->access$200(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/BaseRealm;

    iget-object v3, v3, Lio/realm/RealmCache;->typedColumnIndicesArray:[Lio/realm/internal/ColumnIndices;

    iget-object v2, v2, Lio/realm/BaseRealm;->schema:Lio/realm/RealmSchema;

    iget-object v2, v2, Lio/realm/RealmSchema;->columnIndices:Lio/realm/internal/ColumnIndices;

    invoke-virtual {v2}, Lio/realm/internal/ColumnIndices;->clone()Lio/realm/internal/ColumnIndices;

    move-result-object v2

    invoke-static {v3, v2}, Lio/realm/RealmCache;->storeColumnIndices([Lio/realm/internal/ColumnIndices;Lio/realm/internal/ColumnIndices;)I

    :cond_4
    invoke-static {v0}, Lio/realm/RealmCache$RefAndCount;->access$108(Lio/realm/RealmCache$RefAndCount;)I

    :cond_5
    invoke-static {v0}, Lio/realm/RealmCache$RefAndCount;->access$300(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-static {v0}, Lio/realm/RealmCache$RefAndCount;->access$200(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/BaseRealm;

    invoke-static {v0}, Lio/realm/RealmCache$RefAndCount;->access$100(Lio/realm/RealmCache$RefAndCount;)I

    move-result v0

    if-ne v0, v4, :cond_6

    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->isSyncConfiguration()Z

    move-result v0

    invoke-static {v0}, Lio/realm/internal/ObjectServerFacade;->getFacade(Z)Lio/realm/internal/ObjectServerFacade;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/realm/internal/ObjectServerFacade;->realmOpened(Lio/realm/RealmConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit v5

    return-object v1

    :cond_7
    :try_start_1
    invoke-direct {v0, p0}, Lio/realm/RealmCache;->validateConfiguration(Lio/realm/RealmConfiguration;)V

    move-object v3, v0

    move v2, v4

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v1}, Lio/realm/internal/SharedRealm;->cancelTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_9
    :try_start_2
    const-class v1, Lio/realm/DynamicRealm;

    if-ne p1, v1, :cond_a

    invoke-static {p0}, Lio/realm/DynamicRealm;->createInstance(Lio/realm/RealmConfiguration;)Lio/realm/DynamicRealm;

    move-result-object v1

    goto/16 :goto_2

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The type of Realm class must be Realm or DynamicRealm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static findColumnIndices([Lio/realm/internal/ColumnIndices;J)Lio/realm/internal/ColumnIndices;
    .locals 5

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    aget-object v0, p0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/realm/internal/ColumnIndices;->getSchemaVersion()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static declared-synchronized invokeWithGlobalRefCount(Lio/realm/RealmConfiguration;Lio/realm/RealmCache$Callback;)V
    .locals 8

    const/4 v1, 0x0

    const-class v4, Lio/realm/RealmCache;

    monitor-enter v4

    :try_start_0
    sget-object v0, Lio/realm/RealmCache;->cachesMap:Ljava/util/Map;

    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lio/realm/RealmCache$Callback;->onResult(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v4

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lio/realm/RealmCache$RealmCacheType;->values()[Lio/realm/RealmCache$RealmCacheType;

    move-result-object v5

    array-length v6, v5

    move v2, v1

    move v3, v1

    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v1, v5, v2

    iget-object v7, v0, Lio/realm/RealmCache;->refAndCountMap:Ljava/util/EnumMap;

    invoke-virtual {v7, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmCache$RefAndCount;

    invoke-static {v1}, Lio/realm/RealmCache$RefAndCount;->access$100(Lio/realm/RealmCache$RefAndCount;)I

    move-result v1

    add-int/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v3}, Lio/realm/RealmCache$Callback;->onResult(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method static declared-synchronized release(Lio/realm/BaseRealm;)V
    .locals 10

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-class v4, Lio/realm/RealmCache;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lio/realm/RealmCache;->cachesMap:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmCache;

    if-eqz v0, :cond_7

    iget-object v1, v0, Lio/realm/RealmCache;->refAndCountMap:Ljava/util/EnumMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lio/realm/RealmCache$RealmCacheType;->valueOf(Ljava/lang/Class;)Lio/realm/RealmCache$RealmCacheType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmCache$RefAndCount;

    invoke-static {v1}, Lio/realm/RealmCache$RefAndCount;->access$300(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object v9, v1

    move-object v1, v2

    move-object v2, v9

    :goto_0
    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gtz v6, :cond_2

    const-string/jumbo v0, "%s has been closed already."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v4

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v2}, Lio/realm/RealmCache$RefAndCount;->access$300(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-static {v2}, Lio/realm/RealmCache$RefAndCount;->access$200(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-static {v2}, Lio/realm/RealmCache$RefAndCount;->access$110(Lio/realm/RealmCache$RefAndCount;)I

    invoke-static {v2}, Lio/realm/RealmCache$RefAndCount;->access$100(Lio/realm/RealmCache$RefAndCount;)I

    move-result v1

    if-gez v1, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Global reference counter of Realm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " got corrupted."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_3
    :try_start_2
    instance-of v1, p0, Lio/realm/Realm;

    if-eqz v1, :cond_4

    invoke-static {v2}, Lio/realm/RealmCache$RefAndCount;->access$100(Lio/realm/RealmCache$RefAndCount;)I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lio/realm/RealmCache;->typedColumnIndicesArray:[Lio/realm/internal/ColumnIndices;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    invoke-static {}, Lio/realm/RealmCache$RealmCacheType;->values()[Lio/realm/RealmCache$RealmCacheType;

    move-result-object v6

    array-length v7, v6

    move v2, v3

    :goto_2
    if-ge v2, v7, :cond_5

    aget-object v1, v6, v2

    iget-object v8, v0, Lio/realm/RealmCache;->refAndCountMap:Ljava/util/EnumMap;

    invoke-virtual {v8, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmCache$RefAndCount;

    invoke-static {v1}, Lio/realm/RealmCache$RefAndCount;->access$100(Lio/realm/RealmCache$RefAndCount;)I

    move-result v1

    add-int/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lio/realm/BaseRealm;->doClose()V

    if-nez v3, :cond_1

    sget-object v0, Lio/realm/RealmCache;->cachesMap:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lio/realm/BaseRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->isSyncConfiguration()Z

    move-result v0

    invoke-static {v0}, Lio/realm/internal/ObjectServerFacade;->getFacade(Z)Lio/realm/internal/ObjectServerFacade;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/BaseRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/realm/internal/ObjectServerFacade;->realmClosed(Lio/realm/RealmConfiguration;)V

    goto/16 :goto_1

    :cond_6
    invoke-static {v2}, Lio/realm/RealmCache$RefAndCount;->access$300(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :cond_7
    move-object v2, v1

    goto/16 :goto_0
.end method

.method private static storeColumnIndices([Lio/realm/internal/ColumnIndices;Lio/realm/internal/ColumnIndices;)I
    .locals 8

    const-wide v2, 0x7fffffffffffffffL

    const/4 v0, -0x1

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    aget-object v4, p0, v1

    if-nez v4, :cond_0

    aput-object p1, p0, v1

    :goto_1
    return v1

    :cond_0
    aget-object v4, p0, v1

    invoke-virtual {v4}, Lio/realm/internal/ColumnIndices;->getSchemaVersion()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-gtz v5, :cond_1

    invoke-virtual {v4}, Lio/realm/internal/ColumnIndices;->getSchemaVersion()J

    move-result-wide v2

    move v0, v1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    aput-object p1, p0, v0

    move v1, v0

    goto :goto_1
.end method

.method static declared-synchronized updateSchemaCache(Lio/realm/Realm;)V
    .locals 4

    const-class v2, Lio/realm/RealmCache;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lio/realm/RealmCache;->cachesMap:Ljava/util/Map;

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    iget-object v1, v0, Lio/realm/RealmCache;->refAndCountMap:Ljava/util/EnumMap;

    sget-object v3, Lio/realm/RealmCache$RealmCacheType;->TYPED_REALM:Lio/realm/RealmCache$RealmCacheType;

    invoke-virtual {v1, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmCache$RefAndCount;

    invoke-static {v1}, Lio/realm/RealmCache$RefAndCount;->access$200(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lio/realm/RealmCache;->typedColumnIndicesArray:[Lio/realm/internal/ColumnIndices;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->updateSchemaCache([Lio/realm/internal/ColumnIndices;)Lio/realm/internal/ColumnIndices;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lio/realm/RealmCache;->storeColumnIndices([Lio/realm/internal/ColumnIndices;Lio/realm/internal/ColumnIndices;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private validateConfiguration(Lio/realm/RealmConfiguration;)V
    .locals 4

    iget-object v0, p0, Lio/realm/RealmCache;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0, p1}, Lio/realm/RealmConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/realm/RealmCache;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getEncryptionKey()[B

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/RealmConfiguration;->getEncryptionKey()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Wrong key used to decrypt Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lio/realm/RealmConfiguration;->getMigration()Lio/realm/RealmMigration;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmCache;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getMigration()Lio/realm/RealmMigration;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Configurations cannot be different if used to open the same file. The most likely cause is that equals() and hashCode() are not overridden in the migration class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/RealmConfiguration;->getMigration()Lio/realm/RealmMigration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Configurations cannot be different if used to open the same file. \nCached configuration: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmCache;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n\nNew configuration: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
