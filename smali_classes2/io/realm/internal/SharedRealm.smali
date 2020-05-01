.class public final Lio/realm/internal/SharedRealm;
.super Ljava/lang/Object;
.source "SharedRealm.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private configuration:Lio/realm/RealmConfiguration;

.field final context:Lio/realm/internal/Context;

.field private lastSchemaVersion:J

.field private nativePtr:J

.field public final objectServerFacade:Lio/realm/internal/ObjectServerFacade;

.field public final realmNotifier:Lio/realm/internal/RealmNotifier;

.field private final schemaChangeListener:Lio/realm/internal/SharedRealm$SchemaVersionListener;


# direct methods
.method private constructor <init>(JLio/realm/RealmConfiguration;Lio/realm/internal/RealmNotifier;Lio/realm/internal/SharedRealm$SchemaVersionListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    iput-object p3, p0, Lio/realm/internal/SharedRealm;->configuration:Lio/realm/RealmConfiguration;

    iput-object p4, p0, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    iput-object p5, p0, Lio/realm/internal/SharedRealm;->schemaChangeListener:Lio/realm/internal/SharedRealm$SchemaVersionListener;

    new-instance v0, Lio/realm/internal/Context;

    invoke-direct {v0}, Lio/realm/internal/Context;-><init>()V

    iput-object v0, p0, Lio/realm/internal/SharedRealm;->context:Lio/realm/internal/Context;

    if-nez p5, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    iput-wide v0, p0, Lio/realm/internal/SharedRealm;->lastSchemaVersion:J

    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/internal/SharedRealm;->objectServerFacade:Lio/realm/internal/ObjectServerFacade;

    return-void

    :cond_0
    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getSchemaVersion()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getInstance(Lio/realm/RealmConfiguration;)Lio/realm/internal/SharedRealm;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lio/realm/internal/SharedRealm;->getInstance(Lio/realm/RealmConfiguration;Lio/realm/internal/RealmNotifier;Lio/realm/internal/SharedRealm$SchemaVersionListener;)Lio/realm/internal/SharedRealm;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lio/realm/RealmConfiguration;Lio/realm/internal/RealmNotifier;Lio/realm/internal/SharedRealm$SchemaVersionListener;)Lio/realm/internal/SharedRealm;
    .locals 10

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lio/realm/internal/ObjectServerFacade;->getSyncFacadeIfPossible()Lio/realm/internal/ObjectServerFacade;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/realm/internal/ObjectServerFacade;->getUserAndServerUrl(Lio/realm/RealmConfiguration;)[Ljava/lang/String;

    move-result-object v0

    aget-object v7, v0, v4

    aget-object v8, v0, v6

    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getEncryptionKey()[B

    move-result-object v1

    if-eqz v7, :cond_0

    sget-object v2, Lio/realm/internal/SharedRealm$SchemaMode;->SCHEMA_MODE_ADDITIVE:Lio/realm/internal/SharedRealm$SchemaMode;

    invoke-virtual {v2}, Lio/realm/internal/SharedRealm$SchemaMode;->getNativeValue()B

    move-result v2

    :goto_0
    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getDurability()Lio/realm/internal/SharedRealm$Durability;

    move-result-object v3

    sget-object v5, Lio/realm/internal/SharedRealm$Durability;->MEM_ONLY:Lio/realm/internal/SharedRealm$Durability;

    if-ne v3, v5, :cond_1

    move v3, v6

    :goto_1
    move v5, v4

    invoke-static/range {v0 .. v8}, Lio/realm/internal/SharedRealm;->nativeCreateConfig(Ljava/lang/String;[BBZZZZLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    :try_start_0
    new-instance v1, Lio/realm/internal/SharedRealm;

    invoke-static {v8, v9, p1}, Lio/realm/internal/SharedRealm;->nativeGetSharedRealm(JLio/realm/internal/RealmNotifier;)J

    move-result-wide v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lio/realm/internal/SharedRealm;-><init>(JLio/realm/RealmConfiguration;Lio/realm/internal/RealmNotifier;Lio/realm/internal/SharedRealm$SchemaVersionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8, v9}, Lio/realm/internal/SharedRealm;->nativeCloseConfig(J)V

    return-object v1

    :cond_0
    sget-object v2, Lio/realm/internal/SharedRealm$SchemaMode;->SCHEMA_MODE_MANUAL:Lio/realm/internal/SharedRealm$SchemaMode;

    invoke-virtual {v2}, Lio/realm/internal/SharedRealm$SchemaMode;->getNativeValue()B

    move-result v2

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Lio/realm/internal/SharedRealm;->nativeCloseConfig(J)V

    throw v0
.end method

.method private static native nativeBeginTransaction(J)V
.end method

.method private static native nativeCancelTransaction(J)V
.end method

.method private static native nativeCloseConfig(J)V
.end method

.method private static native nativeCloseSharedRealm(J)V
.end method

.method private static native nativeCommitTransaction(J)V
.end method

.method private static native nativeCreateConfig(Ljava/lang/String;[BBZZZZLjava/lang/String;Ljava/lang/String;)J
.end method

.method private static native nativeGetSharedRealm(JLio/realm/internal/RealmNotifier;)J
.end method

.method private static native nativeGetSnapshotVersion(J)J
.end method

.method private static native nativeGetTable(JLjava/lang/String;)J
.end method

.method private static native nativeGetTableName(JI)Ljava/lang/String;
.end method

.method private static native nativeGetVersion(J)J
.end method

.method private static native nativeGetVersionID(J)[J
.end method

.method private static native nativeHasTable(JLjava/lang/String;)Z
.end method

.method private static native nativeIsClosed(J)Z
.end method

.method private static native nativeIsInTransaction(J)Z
.end method

.method private static native nativeReadGroup(J)J
.end method

.method private static native nativeRefresh(J)V
.end method

.method private static native nativeRefresh(JJJ)V
.end method

.method private static native nativeSetVersion(JJ)V
.end method

.method private static native nativeSize(J)J
.end method

.method private static native nativeUpdateSchema(JJJ)V
.end method


# virtual methods
.method public beginTransaction()V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeBeginTransaction(J)V

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->invokeSchemaChangeListenerIfSchemaChanged()V

    return-void
.end method

.method public cancelTransaction()V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeCancelTransaction(J)V

    return-void
.end method

.method public close()V
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    invoke-interface {v0}, Lio/realm/internal/RealmNotifier;->close()V

    :cond_0
    iget-object v1, p0, Lio/realm/internal/SharedRealm;->context:Lio/realm/internal/Context;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v2, v3}, Lio/realm/internal/SharedRealm;->nativeCloseSharedRealm(J)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public commitTransaction()V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeCommitTransaction(J)V

    return-void
.end method

.method protected finalize()V
    .locals 2

    iget-object v1, p0, Lio/realm/internal/SharedRealm;->context:Lio/realm/internal/Context;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->close()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getGroupNative()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeReadGroup(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSnapshotVersion()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeGetSnapshotVersion(J)J

    move-result-wide v0

    return-wide v0
.end method

.method getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/SharedRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchemaVersion()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeGetVersion(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTable(Ljava/lang/String;)Lio/realm/internal/Table;
    .locals 4

    new-instance v0, Lio/realm/internal/Table;

    iget-wide v2, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v2, v3, p1}, Lio/realm/internal/SharedRealm;->nativeGetTable(JLjava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, p0, v2, v3}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/SharedRealm;J)V

    return-object v0
.end method

.method public getTableName(I)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/SharedRealm;->nativeGetTableName(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionID()Lio/realm/internal/SharedRealm$VersionID;
    .locals 6

    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeGetVersionID(J)[J

    move-result-object v0

    new-instance v1, Lio/realm/internal/SharedRealm$VersionID;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lio/realm/internal/SharedRealm$VersionID;-><init>(JJ)V

    return-object v1
.end method

.method public hasTable(Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/SharedRealm;->nativeHasTable(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public invokeSchemaChangeListenerIfSchemaChanged()V
    .locals 4

    iget-object v0, p0, Lio/realm/internal/SharedRealm;->schemaChangeListener:Lio/realm/internal/SharedRealm$SchemaVersionListener;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->lastSchemaVersion:J

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getSchemaVersion()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    iput-wide v2, p0, Lio/realm/internal/SharedRealm;->lastSchemaVersion:J

    iget-object v0, p0, Lio/realm/internal/SharedRealm;->schemaChangeListener:Lio/realm/internal/SharedRealm$SchemaVersionListener;

    invoke-interface {v0, v2, v3}, Lio/realm/internal/SharedRealm$SchemaVersionListener;->onSchemaVersionChanged(J)V

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 4

    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeIsClosed(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInTransaction()Z
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeIsInTransaction(J)Z

    move-result v0

    return v0
.end method

.method public refresh()V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeRefresh(J)V

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->invokeSchemaChangeListenerIfSchemaChanged()V

    return-void
.end method

.method public refresh(Lio/realm/internal/SharedRealm$VersionID;)V
    .locals 6

    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    iget-wide v2, p1, Lio/realm/internal/SharedRealm$VersionID;->version:J

    iget-wide v4, p1, Lio/realm/internal/SharedRealm$VersionID;->index:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/SharedRealm;->nativeRefresh(JJJ)V

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->invokeSchemaChangeListenerIfSchemaChanged()V

    return-void
.end method

.method public setSchemaVersion(J)V
    .locals 3

    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/SharedRealm;->nativeSetVersion(JJ)V

    return-void
.end method

.method public size()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public updateSchema(Lio/realm/RealmSchema;J)V
    .locals 6

    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/RealmSchema;->getNativePtr()J

    move-result-wide v2

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lio/realm/internal/SharedRealm;->nativeUpdateSchema(JJJ)V

    return-void
.end method
