.class public Lio/realm/internal/Context;
.super Ljava/lang/Object;
.source "Context.java"


# instance fields
.field private abandonedQueries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private abandonedTableViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private abandonedTables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private isFinalized:Z

.field private referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lio/realm/internal/NativeObject;",
            ">;"
        }
    .end annotation
.end field

.field private referencesPool:Lio/realm/internal/Context$ReferencesPool;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/Context;->abandonedTables:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/Context;->abandonedTableViews:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/Context;->abandonedQueries:Ljava/util/List;

    new-instance v0, Lio/realm/internal/Context$ReferencesPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/realm/internal/Context$ReferencesPool;-><init>(Lio/realm/internal/Context$1;)V

    iput-object v0, p0, Lio/realm/internal/Context;->referencesPool:Lio/realm/internal/Context$ReferencesPool;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lio/realm/internal/Context;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/Context;->isFinalized:Z

    return-void
.end method

.method private cleanNativeReferences()V
    .locals 2

    iget-object v0, p0, Lio/realm/internal/Context;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lio/realm/internal/NativeObjectReference;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/realm/internal/NativeObjectReference;->cleanup()V

    iget-object v1, p0, Lio/realm/internal/Context;->referencesPool:Lio/realm/internal/Context$ReferencesPool;

    iget-object v1, v1, Lio/realm/internal/Context$ReferencesPool;->freeIndexList:Ljava/util/ArrayList;

    iget-object v0, v0, Lio/realm/internal/NativeObjectReference;->refIndex:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/realm/internal/Context;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lio/realm/internal/NativeObjectReference;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addReference(ILio/realm/internal/NativeObject;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/realm/internal/Context;->referencesPool:Lio/realm/internal/Context$ReferencesPool;

    new-instance v1, Lio/realm/internal/NativeObjectReference;

    iget-object v2, p0, Lio/realm/internal/Context;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    iget-object v3, p0, Lio/realm/internal/Context;->referencesPool:Lio/realm/internal/Context$ReferencesPool;

    invoke-virtual {v3}, Lio/realm/internal/Context$ReferencesPool;->getFreeIndex()Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p1, p2, v2, v3}, Lio/realm/internal/NativeObjectReference;-><init>(ILio/realm/internal/NativeObject;Ljava/lang/ref/ReferenceQueue;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lio/realm/internal/Context$ReferencesPool;->add(Lio/realm/internal/NativeObjectReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public asyncDisposeQuery(J)V
    .locals 3

    iget-boolean v0, p0, Lio/realm/internal/Context;->isFinalized:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lio/realm/internal/TableQuery;->nativeClose(J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/realm/internal/Context;->abandonedQueries:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public asyncDisposeTable(JZ)V
    .locals 3

    if-nez p3, :cond_0

    iget-boolean v0, p0, Lio/realm/internal/Context;->isFinalized:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1, p2}, Lio/realm/internal/Table;->nativeClose(J)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/internal/Context;->abandonedTables:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public asyncDisposeTableView(J)V
    .locals 3

    iget-boolean v0, p0, Lio/realm/internal/Context;->isFinalized:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lio/realm/internal/TableView;->nativeClose(J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/realm/internal/Context;->abandonedTableViews:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public declared-synchronized executeDelayedDisposal()V
    .locals 6

    const/4 v1, 0x0

    monitor-enter p0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lio/realm/internal/Context;->abandonedTables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lio/realm/internal/Context;->abandonedTables:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lio/realm/internal/Table;->nativeClose(J)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/realm/internal/Context;->abandonedTables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v2, v1

    :goto_1
    iget-object v0, p0, Lio/realm/internal/Context;->abandonedTableViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lio/realm/internal/Context;->abandonedTableViews:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lio/realm/internal/TableView;->nativeClose(J)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lio/realm/internal/Context;->abandonedTableViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_2
    iget-object v0, p0, Lio/realm/internal/Context;->abandonedQueries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lio/realm/internal/Context;->abandonedQueries:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/realm/internal/TableQuery;->nativeClose(J)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lio/realm/internal/Context;->abandonedQueries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lio/realm/internal/Context;->cleanNativeReferences()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lio/realm/internal/Context;->isFinalized:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lio/realm/internal/Context;->executeDelayedDisposal()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
