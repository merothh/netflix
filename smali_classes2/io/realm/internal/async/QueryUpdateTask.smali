.class public Lio/realm/internal/async/QueryUpdateTask;
.super Ljava/lang/Object;
.source "QueryUpdateTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private callerNotifier:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/realm/internal/RealmNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private event:Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

.field private realmConfiguration:Lio/realm/RealmConfiguration;

.field private realmObjectEntry:Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;

.field private realmResultsEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final updateMode:I


# direct methods
.method private constructor <init>(ILio/realm/RealmConfiguration;Ljava/util/List;Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;Ljava/lang/ref/WeakReference;Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/realm/RealmConfiguration;",
            "Ljava/util/List",
            "<",
            "Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;",
            ">;",
            "Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/realm/internal/RealmNotifier;",
            ">;",
            "Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/realm/internal/async/QueryUpdateTask;->updateMode:I

    iput-object p2, p0, Lio/realm/internal/async/QueryUpdateTask;->realmConfiguration:Lio/realm/RealmConfiguration;

    iput-object p3, p0, Lio/realm/internal/async/QueryUpdateTask;->realmResultsEntries:Ljava/util/List;

    iput-object p4, p0, Lio/realm/internal/async/QueryUpdateTask;->realmObjectEntry:Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;

    iput-object p5, p0, Lio/realm/internal/async/QueryUpdateTask;->callerNotifier:Ljava/lang/ref/WeakReference;

    iput-object p6, p0, Lio/realm/internal/async/QueryUpdateTask;->event:Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    return-void
.end method

.method synthetic constructor <init>(ILio/realm/RealmConfiguration;Ljava/util/List;Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;Ljava/lang/ref/WeakReference;Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;Lio/realm/internal/async/QueryUpdateTask$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lio/realm/internal/async/QueryUpdateTask;-><init>(ILio/realm/RealmConfiguration;Ljava/util/List;Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;Ljava/lang/ref/WeakReference;Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;)V

    return-void
.end method

.method private isTaskCancelled()Z
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method

.method public static newBuilder()Lio/realm/internal/async/QueryUpdateTask$Builder$RealmConfigurationStep;
    .locals 2

    new-instance v0, Lio/realm/internal/async/QueryUpdateTask$Builder$Steps;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/realm/internal/async/QueryUpdateTask$Builder$Steps;-><init>(Lio/realm/internal/async/QueryUpdateTask$1;)V

    return-object v0
.end method

.method private prepareQueriesParameters()Lio/realm/internal/async/QueryUpdateTask$AlignedQueriesParameters;
    .locals 12

    iget-object v0, p0, Lio/realm/internal/async/QueryUpdateTask;->realmResultsEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [J

    iget-object v0, p0, Lio/realm/internal/async/QueryUpdateTask;->realmResultsEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iget-object v1, p0, Lio/realm/internal/async/QueryUpdateTask;->realmResultsEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v6, v1, [[J

    iget-object v1, p0, Lio/realm/internal/async/QueryUpdateTask;->realmResultsEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v7, v1, [[Z

    const/4 v1, 0x0

    iget-object v2, p0, Lio/realm/internal/async/QueryUpdateTask;->realmResultsEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v1

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;

    iget-object v4, v1, Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;->queryArguments:Lio/realm/internal/async/ArgumentsHolder;

    iget v4, v4, Lio/realm/internal/async/ArgumentsHolder;->type:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Query mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;->queryArguments:Lio/realm/internal/async/ArgumentsHolder;

    iget v1, v1, Lio/realm/internal/async/ArgumentsHolder;->type:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-wide v4, v1, Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;->handoverQueryPointer:J

    aput-wide v4, v3, v2

    aget-object v1, v0, v2

    const/4 v4, 0x0

    const-wide/16 v10, 0x0

    aput-wide v10, v1, v4

    aget-object v1, v0, v2

    const/4 v4, 0x1

    const-wide/16 v10, 0x0

    aput-wide v10, v1, v4

    aget-object v1, v0, v2

    const/4 v4, 0x2

    const-wide/16 v10, -0x1

    aput-wide v10, v1, v4

    aget-object v1, v0, v2

    const/4 v4, 0x3

    const-wide/16 v10, -0x1

    aput-wide v10, v1, v4

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :pswitch_2
    iget-wide v4, v1, Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;->handoverQueryPointer:J

    aput-wide v4, v3, v2

    aget-object v4, v0, v2

    const/4 v5, 0x0

    const-wide/16 v10, 0x4

    aput-wide v10, v4, v5

    aget-object v4, v0, v2

    const/4 v5, 0x1

    iget-object v1, v1, Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;->queryArguments:Lio/realm/internal/async/ArgumentsHolder;

    iget-wide v10, v1, Lio/realm/internal/async/ArgumentsHolder;->columnIndex:J

    aput-wide v10, v4, v5

    goto :goto_1

    :pswitch_3
    iget-wide v4, v1, Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;->handoverQueryPointer:J

    aput-wide v4, v3, v2

    aget-object v4, v0, v2

    const/4 v5, 0x0

    const-wide/16 v10, 0x1

    aput-wide v10, v4, v5

    aget-object v4, v0, v2

    const/4 v5, 0x1

    const-wide/16 v10, 0x0

    aput-wide v10, v4, v5

    aget-object v4, v0, v2

    const/4 v5, 0x2

    const-wide/16 v10, -0x1

    aput-wide v10, v4, v5

    aget-object v4, v0, v2

    const/4 v5, 0x3

    const-wide/16 v10, -0x1

    aput-wide v10, v4, v5

    aget-object v4, v0, v2

    const/4 v5, 0x4

    iget-object v9, v1, Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;->queryArguments:Lio/realm/internal/async/ArgumentsHolder;

    iget-wide v10, v9, Lio/realm/internal/async/ArgumentsHolder;->columnIndex:J

    aput-wide v10, v4, v5

    aget-object v9, v0, v2

    const/4 v10, 0x5

    iget-object v1, v1, Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;->queryArguments:Lio/realm/internal/async/ArgumentsHolder;

    iget-object v1, v1, Lio/realm/internal/async/ArgumentsHolder;->sortOrder:Lio/realm/Sort;

    invoke-virtual {v1}, Lio/realm/Sort;->getValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v4, 0x1

    :goto_2
    aput-wide v4, v9, v10

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_2

    :pswitch_4
    iget-wide v4, v1, Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;->handoverQueryPointer:J

    aput-wide v4, v3, v2

    aget-object v4, v0, v2

    const/4 v5, 0x0

    const-wide/16 v10, 0x2

    aput-wide v10, v4, v5

    aget-object v4, v0, v2

    const/4 v5, 0x1

    const-wide/16 v10, 0x0

    aput-wide v10, v4, v5

    aget-object v4, v0, v2

    const/4 v5, 0x2

    const-wide/16 v10, -0x1

    aput-wide v10, v4, v5

    aget-object v4, v0, v2

    const/4 v5, 0x3

    const-wide/16 v10, -0x1

    aput-wide v10, v4, v5

    iget-object v4, v1, Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;->queryArguments:Lio/realm/internal/async/ArgumentsHolder;

    iget-object v4, v4, Lio/realm/internal/async/ArgumentsHolder;->columnIndices:[J

    aput-object v4, v6, v2

    iget-object v1, v1, Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;->queryArguments:Lio/realm/internal/async/ArgumentsHolder;

    iget-object v1, v1, Lio/realm/internal/async/ArgumentsHolder;->sortOrders:[Lio/realm/Sort;

    invoke-static {v1}, Lio/realm/internal/TableQuery;->getNativeSortOrderValues([Lio/realm/Sort;)[Z

    move-result-object v1

    aput-object v1, v7, v2

    goto/16 :goto_1

    :cond_1
    new-instance v1, Lio/realm/internal/async/QueryUpdateTask$AlignedQueriesParameters;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/realm/internal/async/QueryUpdateTask$AlignedQueriesParameters;-><init>(Lio/realm/internal/async/QueryUpdateTask$1;)V

    iput-object v3, v1, Lio/realm/internal/async/QueryUpdateTask$AlignedQueriesParameters;->handoverQueries:[J

    iput-object v6, v1, Lio/realm/internal/async/QueryUpdateTask$AlignedQueriesParameters;->multiSortColumnIndices:[[J

    iput-object v7, v1, Lio/realm/internal/async/QueryUpdateTask$AlignedQueriesParameters;->multiSortOrder:[[Z

    iput-object v0, v1, Lio/realm/internal/async/QueryUpdateTask$AlignedQueriesParameters;->queriesParameters:[[J

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private swapPointers(Lio/realm/internal/async/QueryUpdateTask$Result;[J)V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lio/realm/internal/async/QueryUpdateTask;->realmResultsEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;

    iget-object v3, p1, Lio/realm/internal/async/QueryUpdateTask$Result;->updatedTableViews:Ljava/util/IdentityHashMap;

    iget-object v4, v0, Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;->element:Ljava/lang/ref/WeakReference;

    add-int/lit8 v0, v1, 0x1

    aget-wide v6, p2, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateRealmObjectQuery(Lio/realm/internal/SharedRealm;Lio/realm/internal/async/QueryUpdateTask$Result;)Z
    .locals 4

    invoke-direct {p0}, Lio/realm/internal/async/QueryUpdateTask;->isTaskCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/realm/internal/async/QueryUpdateTask;->realmObjectEntry:Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;

    iget-object v0, v0, Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;->queryArguments:Lio/realm/internal/async/ArgumentsHolder;

    iget v0, v0, Lio/realm/internal/async/ArgumentsHolder;->type:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Query mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/realm/internal/async/QueryUpdateTask;->realmObjectEntry:Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;

    iget-object v2, v2, Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;->queryArguments:Lio/realm/internal/async/ArgumentsHolder;

    iget v2, v2, Lio/realm/internal/async/ArgumentsHolder;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lio/realm/internal/async/QueryUpdateTask;->realmObjectEntry:Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;

    iget-wide v0, v0, Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;->handoverQueryPointer:J

    invoke-static {p1, v0, v1}, Lio/realm/internal/TableQuery;->findWithHandover(Lio/realm/internal/SharedRealm;J)J

    move-result-wide v0

    iget-object v2, p2, Lio/realm/internal/async/QueryUpdateTask$Result;->updatedRow:Ljava/util/IdentityHashMap;

    iget-object v3, p0, Lio/realm/internal/async/QueryUpdateTask;->realmObjectEntry:Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;

    iget-object v3, v3, Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;->element:Ljava/lang/ref/WeakReference;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lio/realm/internal/async/QueryUpdateTask;->realmObjectEntry:Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;

    iget-wide v0, v0, Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;->handoverQueryPointer:J

    invoke-static {v0, v1}, Lio/realm/internal/TableQuery;->nativeCloseQueryHandover(J)V

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v2, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/realm/internal/async/QueryUpdateTask;->realmConfiguration:Lio/realm/RealmConfiguration;

    invoke-static {v1}, Lio/realm/internal/SharedRealm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/internal/SharedRealm;
    :try_end_0
    .catch Lio/realm/internal/async/BadVersionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    :try_start_1
    iget v0, p0, Lio/realm/internal/async/QueryUpdateTask;->updateMode:I

    if-nez v0, :cond_1

    invoke-static {}, Lio/realm/internal/async/QueryUpdateTask$Result;->newRealmResultsResponse()Lio/realm/internal/async/QueryUpdateTask$Result;

    move-result-object v0

    invoke-direct {p0}, Lio/realm/internal/async/QueryUpdateTask;->prepareQueriesParameters()Lio/realm/internal/async/QueryUpdateTask$AlignedQueriesParameters;

    move-result-object v3

    iget-object v4, v3, Lio/realm/internal/async/QueryUpdateTask$AlignedQueriesParameters;->handoverQueries:[J

    iget-object v5, v3, Lio/realm/internal/async/QueryUpdateTask$AlignedQueriesParameters;->queriesParameters:[[J

    iget-object v6, v3, Lio/realm/internal/async/QueryUpdateTask$AlignedQueriesParameters;->multiSortColumnIndices:[[J

    iget-object v3, v3, Lio/realm/internal/async/QueryUpdateTask$AlignedQueriesParameters;->multiSortOrder:[[Z

    invoke-static {v1, v4, v5, v6, v3}, Lio/realm/internal/TableQuery;->batchUpdateQueries(Lio/realm/internal/SharedRealm;[J[[J[[J[[Z)[J

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lio/realm/internal/async/QueryUpdateTask;->swapPointers(Lio/realm/internal/async/QueryUpdateTask$Result;[J)V

    invoke-virtual {v1}, Lio/realm/internal/SharedRealm;->getVersionID()Lio/realm/internal/SharedRealm$VersionID;

    move-result-object v3

    iput-object v3, v0, Lio/realm/internal/async/QueryUpdateTask$Result;->versionID:Lio/realm/internal/SharedRealm$VersionID;

    move-object v3, v0

    :goto_0
    iget-object v0, p0, Lio/realm/internal/async/QueryUpdateTask;->callerNotifier:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmNotifier;

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lio/realm/internal/async/QueryUpdateTask;->isTaskCancelled()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    sget-object v2, Lio/realm/internal/async/QueryUpdateTask$1;->$SwitchMap$io$realm$internal$async$QueryUpdateTask$NotifyEvent:[I

    iget-object v4, p0, Lio/realm/internal/async/QueryUpdateTask;->event:Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    invoke-virtual {v4}, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "%s is not handled here."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lio/realm/internal/async/QueryUpdateTask;->event:Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lio/realm/internal/async/BadVersionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    :try_start_2
    const-string/jumbo v1, "Query update task could not complete due to a BadVersionException. Retry is scheduled by a REALM_CHANGED event."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->close()V

    :cond_0
    :goto_2
    return-void

    :cond_1
    :try_start_3
    invoke-static {}, Lio/realm/internal/async/QueryUpdateTask$Result;->newRealmObjectResponse()Lio/realm/internal/async/QueryUpdateTask$Result;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lio/realm/internal/async/QueryUpdateTask;->updateRealmObjectQuery(Lio/realm/internal/SharedRealm;Lio/realm/internal/async/QueryUpdateTask$Result;)Z

    move-result v0

    invoke-virtual {v1}, Lio/realm/internal/SharedRealm;->getVersionID()Lio/realm/internal/SharedRealm$VersionID;

    move-result-object v3

    iput-object v3, v2, Lio/realm/internal/async/QueryUpdateTask$Result;->versionID:Lio/realm/internal/SharedRealm$VersionID;

    move-object v3, v2

    move v2, v0

    goto :goto_0

    :pswitch_0
    invoke-interface {v0, v3}, Lio/realm/internal/RealmNotifier;->completeAsyncResults(Lio/realm/internal/async/QueryUpdateTask$Result;)V
    :try_end_3
    .catch Lio/realm/internal/async/BadVersionException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_3
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/realm/internal/SharedRealm;->close()V

    goto :goto_2

    :pswitch_1
    :try_start_4
    invoke-interface {v0, v3}, Lio/realm/internal/RealmNotifier;->completeAsyncObject(Lio/realm/internal/async/QueryUpdateTask$Result;)V
    :try_end_4
    .catch Lio/realm/internal/async/BadVersionException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    :goto_4
    :try_start_5
    invoke-static {v1}, Lio/realm/log/RealmLog;->error(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lio/realm/internal/async/QueryUpdateTask;->callerNotifier:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmNotifier;

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Lio/realm/internal/RealmNotifier;->throwBackgroundException(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lio/realm/internal/SharedRealm;->close()V

    goto :goto_2

    :pswitch_2
    :try_start_6
    invoke-interface {v0, v3}, Lio/realm/internal/RealmNotifier;->completeUpdateAsyncQueries(Lio/realm/internal/async/QueryUpdateTask$Result;)V
    :try_end_6
    .catch Lio/realm/internal/async/BadVersionException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lio/realm/internal/SharedRealm;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v2, v0

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
