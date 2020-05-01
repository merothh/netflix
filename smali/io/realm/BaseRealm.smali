.class abstract Lio/realm/BaseRealm;
.super Ljava/lang/Object;
.source "BaseRealm.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static volatile applicationContext:Landroid/content/Context;

.field static final asyncTaskExecutor:Lio/realm/internal/async/RealmThreadPoolExecutor;

.field public static final objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;


# instance fields
.field protected configuration:Lio/realm/RealmConfiguration;

.field handlerController:Lio/realm/HandlerController;

.field schema:Lio/realm/RealmSchema;

.field protected sharedRealm:Lio/realm/internal/SharedRealm;

.field final threadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lio/realm/internal/async/RealmThreadPoolExecutor;->newDefaultExecutor()Lio/realm/internal/async/RealmThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lio/realm/BaseRealm;->asyncTaskExecutor:Lio/realm/internal/async/RealmThreadPoolExecutor;

    .line 732
    new-instance v0, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-direct {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;-><init>()V

    sput-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    return-void
.end method

.method protected constructor <init>(Lio/realm/RealmConfiguration;)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/BaseRealm;->threadId:J

    .line 79
    iput-object p1, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    .line 81
    new-instance v0, Lio/realm/HandlerController;

    invoke-direct {v0, p0}, Lio/realm/HandlerController;-><init>(Lio/realm/BaseRealm;)V

    iput-object v0, p0, Lio/realm/BaseRealm;->handlerController:Lio/realm/HandlerController;

    .line 82
    new-instance v1, Lio/realm/AndroidNotifier;

    iget-object v0, p0, Lio/realm/BaseRealm;->handlerController:Lio/realm/HandlerController;

    invoke-direct {v1, v0}, Lio/realm/AndroidNotifier;-><init>(Lio/realm/HandlerController;)V

    instance-of v0, p0, Lio/realm/Realm;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v1, v0}, Lio/realm/internal/SharedRealm;->getInstance(Lio/realm/RealmConfiguration;Lio/realm/internal/RealmNotifier;Lio/realm/internal/SharedRealm$SchemaVersionListener;)Lio/realm/internal/SharedRealm;

    move-result-object v0

    iput-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    .line 90
    new-instance v0, Lio/realm/RealmSchema;

    invoke-direct {v0, p0}, Lio/realm/RealmSchema;-><init>(Lio/realm/BaseRealm;)V

    iput-object v0, p0, Lio/realm/BaseRealm;->schema:Lio/realm/RealmSchema;

    .line 92
    iget-object v0, p0, Lio/realm/BaseRealm;->handlerController:Lio/realm/HandlerController;

    invoke-virtual {v0}, Lio/realm/HandlerController;->isAutoRefreshAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/realm/BaseRealm;->setAutoRefresh(Z)V

    .line 95
    :cond_0
    return-void

    .line 82
    :cond_1
    new-instance v0, Lio/realm/BaseRealm$1;

    invoke-direct {v0, p0}, Lio/realm/BaseRealm$1;-><init>(Lio/realm/BaseRealm;)V

    goto :goto_0
.end method

.method static deleteRealm(Lio/realm/RealmConfiguration;)Z
    .locals 2

    .prologue
    .line 560
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 561
    new-instance v1, Lio/realm/BaseRealm$3;

    invoke-direct {v1, p0, v0}, Lio/realm/BaseRealm$3;-><init>(Lio/realm/RealmConfiguration;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-static {p0, v1}, Lio/realm/RealmCache;->invokeWithGlobalRefCount(Lio/realm/RealmConfiguration;Lio/realm/RealmCache$Callback;)V

    .line 575
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected static migrateRealm(Lio/realm/RealmConfiguration;Lio/realm/RealmMigration;Lio/realm/BaseRealm$MigrationCallback;Lio/realm/exceptions/RealmMigrationNeededException;)V
    .locals 3

    .prologue
    .line 608
    if-nez p0, :cond_0

    .line 609
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "RealmConfiguration must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getMigration()Lio/realm/RealmMigration;

    move-result-object v0

    if-nez v0, :cond_1

    .line 612
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "RealmMigration must be provided"

    invoke-direct {v0, v1, v2, p3}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 615
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 617
    new-instance v1, Lio/realm/BaseRealm$4;

    invoke-direct {v1, p0, v0, p1, p2}, Lio/realm/BaseRealm$4;-><init>(Lio/realm/RealmConfiguration;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/realm/RealmMigration;Lio/realm/BaseRealm$MigrationCallback;)V

    invoke-static {p0, v1}, Lio/realm/RealmCache;->invokeWithGlobalRefCount(Lio/realm/RealmConfiguration;Lio/realm/RealmCache$Callback;)V

    .line 654
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 655
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot migrate a Realm file which doesn\'t exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 656
    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 658
    :cond_2
    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 328
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->beginTransaction()V

    .line 329
    return-void
.end method

.method public cancelTransaction()V
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 370
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->cancelTransaction()V

    .line 371
    return-void
.end method

.method protected checkIfValid()V
    .locals 4

    .prologue
    .line 377
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This Realm instance has already been closed, making it unusable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_1
    iget-wide v0, p0, Lio/realm/BaseRealm;->threadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 383
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_2
    return-void
.end method

.method public close()V
    .locals 4

    .prologue
    .line 450
    iget-wide v0, p0, Lio/realm/BaseRealm;->threadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 451
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Realm access from incorrect thread. Realm instance can only be closed on the thread it was created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_0
    invoke-static {p0}, Lio/realm/RealmCache;->release(Lio/realm/BaseRealm;)V

    .line 455
    return-void
.end method

.method public commitTransaction()V
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/realm/BaseRealm;->commitTransaction(Z)V

    .line 339
    return-void
.end method

.method commitTransaction(Z)V
    .locals 4

    .prologue
    .line 348
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 349
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->commitTransaction()V

    .line 350
    iget-object v0, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->isSyncConfiguration()Z

    move-result v0

    invoke-static {v0}, Lio/realm/internal/ObjectServerFacade;->getFacade(Z)Lio/realm/internal/ObjectServerFacade;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    iget-object v2, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    .line 351
    invoke-virtual {v2}, Lio/realm/internal/SharedRealm;->getLastSnapshotVersion()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/ObjectServerFacade;->notifyCommit(Lio/realm/RealmConfiguration;J)V

    .line 355
    if-eqz p1, :cond_0

    .line 356
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v0, v0, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    invoke-interface {v0}, Lio/realm/internal/RealmNotifier;->notifyCommitByLocalThread()V

    .line 358
    :cond_0
    return-void
.end method

.method public deleteAll()V
    .locals 3

    .prologue
    .line 550
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 551
    iget-object v0, p0, Lio/realm/BaseRealm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v0}, Lio/realm/RealmSchema;->getAll()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmObjectSchema;

    .line 552
    iget-object v2, p0, Lio/realm/BaseRealm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v0}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/realm/RealmSchema;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->clear()V

    goto :goto_0

    .line 554
    :cond_0
    return-void
.end method

.method doClose()V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->close()V

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    .line 465
    :cond_0
    iget-object v0, p0, Lio/realm/BaseRealm;->schema:Lio/realm/RealmSchema;

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lio/realm/BaseRealm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v0}, Lio/realm/RealmSchema;->close()V

    .line 468
    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 667
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 668
    const-string/jumbo v0, "Remember to call close() on all Realm instances. Realm %s is being finalized without being closed, this can lead to running out of native memory."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    .line 670
    invoke-virtual {v3}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 668
    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 673
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 674
    return-void
.end method

.method get(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/RealmModel;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;JZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    .prologue
    .line 509
    iget-object v0, p0, Lio/realm/BaseRealm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 510
    invoke-virtual {v0, p2, p3}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    .line 511
    iget-object v0, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseRealm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v1, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    move-object v1, p1

    move-object v2, p0

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/RealmProxyMediator;->newInstance(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    move-object v0, v1

    .line 513
    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 514
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->setTableVersion$realm()V

    .line 515
    return-object v1
.end method

.method get(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/RealmModel;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            "J)TE;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-wide/16 v8, -0x1

    .line 521
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 522
    :goto_0
    if-eqz v1, :cond_2

    iget-object v0, p0, Lio/realm/BaseRealm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v0, p2}, Lio/realm/RealmSchema;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    move-object v2, v0

    .line 525
    :goto_1
    if-eqz v1, :cond_4

    .line 527
    new-instance v1, Lio/realm/DynamicRealmObject;

    cmp-long v0, p3, v8

    if-eqz v0, :cond_3

    .line 528
    invoke-virtual {v2, p3, p4}, Lio/realm/internal/Table;->getCheckedRow(J)Lio/realm/internal/CheckedRow;

    move-result-object v0

    :goto_2
    invoke-direct {v1, p0, v0}, Lio/realm/DynamicRealmObject;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/Row;)V

    :goto_3
    move-object v0, v1

    .line 536
    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 537
    cmp-long v2, p3, v8

    if-eqz v2, :cond_0

    .line 538
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->setTableVersion$realm()V

    .line 541
    :cond_0
    return-object v1

    :cond_1
    move v1, v5

    .line 521
    goto :goto_0

    .line 522
    :cond_2
    iget-object v0, p0, Lio/realm/BaseRealm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 528
    :cond_3
    sget-object v0, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    goto :goto_2

    .line 531
    :cond_4
    iget-object v0, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v0

    cmp-long v1, p3, v8

    if-eqz v1, :cond_5

    .line 532
    invoke-virtual {v2, p3, p4}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    :goto_4
    iget-object v1, p0, Lio/realm/BaseRealm;->schema:Lio/realm/RealmSchema;

    .line 533
    invoke-virtual {v1, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, p1

    move-object v2, p0

    .line 531
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/RealmProxyMediator;->newInstance(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    goto :goto_3

    .line 532
    :cond_5
    sget-object v3, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    goto :goto_4
.end method

.method public getConfiguration()Lio/realm/RealmConfiguration;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->getSchemaVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method hasValidNotifier()Z
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v0, v0, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v0, v0, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    invoke-interface {v0}, Lio/realm/internal/RealmNotifier;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 4

    .prologue
    .line 477
    iget-wide v0, p0, Lio/realm/BaseRealm;->threadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 478
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_0
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInTransaction()Z
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 130
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->isInTransaction()Z

    move-result v0

    return v0
.end method

.method public setAutoRefresh(Z)V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 110
    iget-object v0, p0, Lio/realm/BaseRealm;->handlerController:Lio/realm/HandlerController;

    invoke-virtual {v0}, Lio/realm/HandlerController;->checkCanBeAutoRefreshed()V

    .line 111
    iget-object v0, p0, Lio/realm/BaseRealm;->handlerController:Lio/realm/HandlerController;

    invoke-virtual {v0, p1}, Lio/realm/HandlerController;->setAutoRefresh(Z)V

    .line 112
    return-void
.end method

.method setVersion(J)V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/SharedRealm;->setSchemaVersion(J)V

    .line 497
    return-void
.end method
