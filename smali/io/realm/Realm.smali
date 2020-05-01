.class public final Lio/realm/Realm;
.super Lio/realm/BaseRealm;
.source "Realm.java"


# static fields
.field private static defaultConfiguration:Lio/realm/RealmConfiguration;


# direct methods
.method constructor <init>(Lio/realm/RealmConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/realm/BaseRealm;-><init>(Lio/realm/RealmConfiguration;)V

    return-void
.end method

.method private checkHasPrimaryKey(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->hasPrimaryKey()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "A RealmObject with no @PrimaryKey cannot be updated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private checkNotNullObject(Lio/realm/RealmModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null objects cannot be copied into Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private copyOrUpdate(Lio/realm/RealmModel;ZLjava/util/Map;)Lio/realm/RealmModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lio/realm/internal/RealmProxyMediator;->copyOrUpdate(Lio/realm/Realm;Lio/realm/RealmModel;ZLjava/util/Map;)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method static createAndValidate(Lio/realm/RealmConfiguration;[Lio/realm/internal/ColumnIndices;)Lio/realm/Realm;
    .locals 12

    const-wide/16 v10, -0x1

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v0, Lio/realm/Realm;

    invoke-direct {v0, p0}, Lio/realm/Realm;-><init>(Lio/realm/RealmConfiguration;)V

    invoke-virtual {v0}, Lio/realm/Realm;->getVersion()J

    move-result-wide v2

    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getSchemaVersion()J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lio/realm/RealmCache;->findColumnIndices([Lio/realm/internal/ColumnIndices;J)Lio/realm/internal/ColumnIndices;

    move-result-object v1

    cmp-long v6, v2, v10

    if-eqz v6, :cond_0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lio/realm/Realm;->doClose()V

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "Realm on disk need to migrate from v%s to v%s"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v6, v2, v10

    if-eqz v6, :cond_1

    cmp-long v6, v4, v2

    if-gez v6, :cond_1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lio/realm/Realm;->doClose()V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Realm on disk is newer than the one specified: v%s vs. v%s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v9

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez v1, :cond_2

    :try_start_0
    invoke-static {v0}, Lio/realm/Realm;->initializeRealm(Lio/realm/Realm;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Lio/realm/Realm;->doClose()V

    throw v1

    :cond_2
    iget-object v2, v0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v1}, Lio/realm/internal/ColumnIndices;->clone()Lio/realm/internal/ColumnIndices;

    move-result-object v1

    iput-object v1, v2, Lio/realm/RealmSchema;->columnIndices:Lio/realm/internal/ColumnIndices;

    goto :goto_0
.end method

.method static createInstance(Lio/realm/RealmConfiguration;[Lio/realm/internal/ColumnIndices;)Lio/realm/Realm;
    .locals 3

    :try_start_0
    invoke-static {p0, p1}, Lio/realm/Realm;->createAndValidate(Lio/realm/RealmConfiguration;[Lio/realm/internal/ColumnIndices;)Lio/realm/Realm;
    :try_end_0
    .catch Lio/realm/exceptions/RealmMigrationNeededException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->shouldDeleteRealmIfMigrationNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lio/realm/Realm;->deleteRealm(Lio/realm/RealmConfiguration;)Z

    :goto_1
    invoke-static {p0, p1}, Lio/realm/Realm;->createAndValidate(Lio/realm/RealmConfiguration;[Lio/realm/internal/ColumnIndices;)Lio/realm/Realm;

    move-result-object v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {p0, v0}, Lio/realm/Realm;->migrateRealm(Lio/realm/RealmConfiguration;Lio/realm/exceptions/RealmMigrationNeededException;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Lio/realm/exceptions/RealmFileException;

    sget-object v2, Lio/realm/exceptions/RealmFileException$Kind;->NOT_FOUND:Lio/realm/exceptions/RealmFileException$Kind;

    invoke-direct {v1, v2, v0}, Lio/realm/exceptions/RealmFileException;-><init>(Lio/realm/exceptions/RealmFileException$Kind;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static deleteRealm(Lio/realm/RealmConfiguration;)Z
    .locals 1

    invoke-static {p0}, Lio/realm/BaseRealm;->deleteRealm(Lio/realm/RealmConfiguration;)Z

    move-result v0

    return v0
.end method

.method public static getDefaultModule()Ljava/lang/Object;
    .locals 5

    const-string/jumbo v1, "io.realm.DefaultRealmModule"

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Lio/realm/exceptions/RealmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not create an instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    new-instance v2, Lio/realm/exceptions/RealmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not create an instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v0

    new-instance v2, Lio/realm/exceptions/RealmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not create an instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A non-null RealmConfiguration must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-class v0, Lio/realm/Realm;

    invoke-static {p0, v0}, Lio/realm/RealmCache;->createRealmOrGetFromCache(Lio/realm/RealmConfiguration;Ljava/lang/Class;)Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 3

    const-class v1, Lio/realm/Realm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lio/realm/BaseRealm;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Non-null context required."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    invoke-static {p0}, Lio/realm/internal/RealmCore;->loadLibrary(Landroid/content/Context;)V

    new-instance v0, Lio/realm/log/AndroidLogger;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Lio/realm/log/AndroidLogger;-><init>(I)V

    invoke-static {v0}, Lio/realm/log/RealmLog;->add(Lio/realm/log/Logger;)V

    new-instance v0, Lio/realm/RealmConfiguration$Builder;

    invoke-direct {v0, p0}, Lio/realm/RealmConfiguration$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lio/realm/RealmConfiguration$Builder;->build()Lio/realm/RealmConfiguration;

    move-result-object v0

    sput-object v0, Lio/realm/Realm;->defaultConfiguration:Lio/realm/RealmConfiguration;

    invoke-static {}, Lio/realm/internal/ObjectServerFacade;->getSyncFacadeIfPossible()Lio/realm/internal/ObjectServerFacade;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/realm/internal/ObjectServerFacade;->init(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lio/realm/BaseRealm;->applicationContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v1

    return-void
.end method

.method private static initializeRealm(Lio/realm/Realm;)V
    .locals 14

    invoke-virtual {p0}, Lio/realm/Realm;->getVersion()J

    move-result-wide v4

    const/4 v1, 0x0

    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->isSyncConfiguration()Z

    move-result v6

    if-nez v6, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lio/realm/Realm;->beginTransaction()V

    const-wide/16 v2, -0x1

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaVersion()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lio/realm/Realm;->setVersion(J)V

    :cond_0
    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/RealmProxyMediator;->getModelClasses()Ljava/util/Set;

    move-result-object v3

    new-instance v7, Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(I)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lio/realm/RealmSchema;

    invoke-direct {v9}, Lio/realm/RealmSchema;-><init>()V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-wide/16 v12, -0x1

    cmp-long v11, v4, v12

    if-nez v11, :cond_1

    if-nez v6, :cond_1

    iget-object v11, p0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v2, v0, v11}, Lio/realm/internal/RealmProxyMediator;->createTable(Ljava/lang/Class;Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;

    :cond_1
    if-eqz v6, :cond_3

    invoke-virtual {v2, v0, v9}, Lio/realm/internal/RealmProxyMediator;->createRealmObjectSchema(Ljava/lang/Class;Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-nez v6, :cond_2

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lio/realm/Realm;->commitTransaction(Z)V

    :cond_2
    :goto_1
    throw v0

    :cond_3
    :try_start_1
    iget-object v11, p0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/SharedRealm;

    const/4 v12, 0x0

    invoke-virtual {v2, v0, v11, v12}, Lio/realm/internal/RealmProxyMediator;->validateTable(Ljava/lang/Class;Lio/realm/internal/SharedRealm;Z)Lio/realm/internal/ColumnInfo;

    move-result-object v11

    invoke-interface {v7, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    if-eqz v6, :cond_5

    new-instance v0, Lio/realm/RealmSchema;

    invoke-direct {v0, v8}, Lio/realm/RealmSchema;-><init>(Ljava/util/ArrayList;)V

    iget-object v8, p0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v8, v0, v4, v5}, Lio/realm/internal/SharedRealm;->updateSchema(Lio/realm/RealmSchema;J)V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iget-object v8, p0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/SharedRealm;

    const/4 v9, 0x0

    invoke-virtual {v2, v0, v8, v9}, Lio/realm/internal/RealmProxyMediator;->validateTable(Ljava/lang/Class;Lio/realm/internal/SharedRealm;Z)Lio/realm/internal/ColumnInfo;

    move-result-object v8

    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    new-instance v8, Lio/realm/internal/ColumnIndices;

    const-wide/16 v2, -0x1

    cmp-long v2, v4, v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v2}, Lio/realm/RealmConfiguration;->getSchemaVersion()J

    move-result-wide v2

    :goto_3
    invoke-direct {v8, v2, v3, v7}, Lio/realm/internal/ColumnIndices;-><init>(JLjava/util/Map;)V

    iput-object v8, v0, Lio/realm/RealmSchema;->columnIndices:Lio/realm/internal/ColumnIndices;

    const-wide/16 v2, -0x1

    cmp-long v0, v4, v2

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getInitialDataTransaction()Lio/realm/Realm$Transaction;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz v6, :cond_9

    invoke-virtual {p0, v0}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    new-instance v0, Lio/realm/Realm$1;

    invoke-direct {v0}, Lio/realm/Realm$1;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_4
    if-nez v6, :cond_7

    if-eqz v1, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/realm/Realm;->commitTransaction(Z)V

    :cond_7
    :goto_5
    return-void

    :cond_8
    move-wide v2, v4

    goto :goto_3

    :cond_9
    :try_start_2
    invoke-interface {v0, p0}, Lio/realm/Realm$Transaction;->execute(Lio/realm/Realm;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Lio/realm/Realm;->cancelTransaction()V

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Lio/realm/Realm;->cancelTransaction()V

    goto :goto_1
.end method

.method private static migrateRealm(Lio/realm/RealmConfiguration;Lio/realm/exceptions/RealmMigrationNeededException;)V
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lio/realm/Realm$3;

    invoke-direct {v1}, Lio/realm/Realm$3;-><init>()V

    invoke-static {p0, v0, v1, p1}, Lio/realm/BaseRealm;->migrateRealm(Lio/realm/RealmConfiguration;Lio/realm/RealmMigration;Lio/realm/BaseRealm$MigrationCallback;Lio/realm/exceptions/RealmMigrationNeededException;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic beginTransaction()V
    .locals 0

    invoke-super {p0}, Lio/realm/BaseRealm;->beginTransaction()V

    return-void
.end method

.method public bridge synthetic cancelTransaction()V
    .locals 0

    invoke-super {p0}, Lio/realm/BaseRealm;->cancelTransaction()V

    return-void
.end method

.method public bridge synthetic close()V
    .locals 0

    invoke-super {p0}, Lio/realm/BaseRealm;->close()V

    return-void
.end method

.method public bridge synthetic commitTransaction()V
    .locals 0

    invoke-super {p0}, Lio/realm/BaseRealm;->commitTransaction()V

    return-void
.end method

.method public copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)TE;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/realm/Realm;->checkNotNullObject(Lio/realm/RealmModel;)V

    const/4 v0, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lio/realm/Realm;->copyOrUpdate(Lio/realm/RealmModel;ZLjava/util/Map;)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method public copyToRealmOrUpdate(Lio/realm/RealmModel;)Lio/realm/RealmModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)TE;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/realm/Realm;->checkNotNullObject(Lio/realm/RealmModel;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/realm/Realm;->checkHasPrimaryKey(Ljava/lang/Class;)V

    const/4 v0, 0x1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lio/realm/Realm;->copyOrUpdate(Lio/realm/RealmModel;ZLjava/util/Map;)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method public createObject(Ljava/lang/Class;Ljava/lang/Object;)Lio/realm/RealmModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    const/4 v0, 0x1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/realm/internal/Table;->addEmptyRowWithPrimaryKey(Ljava/lang/Object;)J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/realm/Realm;->get(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->hasPrimaryKey()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lio/realm/exceptions/RealmException;

    const-string/jumbo v2, "\'%s\' has a primary key, use \'createObject(Class<E>, Object)\' instead."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Table;->tableNameToClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v0}, Lio/realm/internal/Table;->addEmptyRow()J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lio/realm/Realm;->get(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deleteAll()V
    .locals 0

    invoke-super {p0}, Lio/realm/BaseRealm;->deleteAll()V

    return-void
.end method

.method public executeTransaction(Lio/realm/Realm$Transaction;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Transaction should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lio/realm/Realm;->beginTransaction()V

    :try_start_0
    invoke-interface {p1, p0}, Lio/realm/Realm$Transaction;->execute(Lio/realm/Realm;)V

    invoke-virtual {p0}, Lio/realm/Realm;->commitTransaction()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lio/realm/Realm;->isInTransaction()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lio/realm/Realm;->cancelTransaction()V

    :goto_0
    throw v0

    :cond_1
    const-string/jumbo v1, "Could not cancel transaction, not currently in a transaction."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public executeTransactionAsync(Lio/realm/Realm$Transaction;)Lio/realm/RealmAsyncTask;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;
    .locals 7

    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Transaction should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lio/realm/Realm;->hasValidNotifier()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Your Realm is opened from a thread without a Looper and you provided a callback, we need a Handler to invoke your callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v2

    sget-object v6, Lio/realm/Realm;->asyncTaskExecutor:Lio/realm/internal/async/RealmThreadPoolExecutor;

    new-instance v0, Lio/realm/Realm$2;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/realm/Realm$2;-><init>(Lio/realm/Realm;Lio/realm/RealmConfiguration;Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)V

    invoke-virtual {v6, v0}, Lio/realm/internal/async/RealmThreadPoolExecutor;->submitTransaction(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    new-instance v1, Lio/realm/internal/async/RealmAsyncTaskImpl;

    sget-object v2, Lio/realm/Realm;->asyncTaskExecutor:Lio/realm/internal/async/RealmThreadPoolExecutor;

    invoke-direct {v1, v0, v2}, Lio/realm/internal/async/RealmAsyncTaskImpl;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-object v1
.end method

.method public bridge synthetic getConfiguration()Lio/realm/RealmConfiguration;
    .locals 1

    invoke-super {p0}, Lio/realm/BaseRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPath()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTable(Ljava/lang/Class;)Lio/realm/internal/Table;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;)",
            "Lio/realm/internal/Table;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVersion()J
    .locals 2

    invoke-super {p0}, Lio/realm/BaseRealm;->getVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic isClosed()Z
    .locals 1

    invoke-super {p0}, Lio/realm/BaseRealm;->isClosed()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInTransaction()Z
    .locals 1

    invoke-super {p0}, Lio/realm/BaseRealm;->isInTransaction()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setAutoRefresh(Z)V
    .locals 0

    invoke-super {p0, p1}, Lio/realm/BaseRealm;->setAutoRefresh(Z)V

    return-void
.end method

.method updateSchemaCache([Lio/realm/internal/ColumnIndices;)Lio/realm/internal/ColumnIndices;
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->getSchemaVersion()J

    move-result-wide v2

    iget-object v0, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    iget-object v0, v0, Lio/realm/RealmSchema;->columnIndices:Lio/realm/internal/ColumnIndices;

    invoke-virtual {v0}, Lio/realm/internal/ColumnIndices;->getSchemaVersion()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v4

    invoke-static {p1, v2, v3}, Lio/realm/RealmCache;->findColumnIndices([Lio/realm/internal/ColumnIndices;J)Lio/realm/internal/ColumnIndices;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {v4}, Lio/realm/internal/RealmProxyMediator;->getModelClasses()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iget-object v6, p0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/SharedRealm;

    const/4 v7, 0x1

    invoke-virtual {v4, v0, v6, v7}, Lio/realm/internal/RealmProxyMediator;->validateTable(Ljava/lang/Class;Lio/realm/internal/SharedRealm;Z)Lio/realm/internal/ColumnInfo;

    move-result-object v6

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lio/realm/exceptions/RealmMigrationNeededException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    new-instance v0, Lio/realm/internal/ColumnIndices;

    invoke-direct {v0, v2, v3, v1}, Lio/realm/internal/ColumnIndices;-><init>(JLjava/util/Map;)V

    move-object v1, v0

    :cond_2
    iget-object v2, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    iget-object v2, v2, Lio/realm/RealmSchema;->columnIndices:Lio/realm/internal/ColumnIndices;

    invoke-virtual {v2, v0, v4}, Lio/realm/internal/ColumnIndices;->copyFrom(Lio/realm/internal/ColumnIndices;Lio/realm/internal/RealmProxyMediator;)V

    goto :goto_0
.end method

.method public where(Ljava/lang/Class;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lio/realm/RealmQuery",
            "<TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    invoke-static {p0, p1}, Lio/realm/RealmQuery;->createQuery(Lio/realm/Realm;Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method
