.class final Lio/realm/HandlerController;
.super Ljava/lang/Object;
.source "HandlerController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final NO_REALM_QUERY:Ljava/lang/Boolean;


# instance fields
.field final asyncRealmResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/realm/RealmResults",
            "<+",
            "Lio/realm/RealmModel;",
            ">;>;",
            "Lio/realm/RealmQuery",
            "<+",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private autoRefresh:Z

.field final changeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lio/realm/RealmChangeListener",
            "<+",
            "Lio/realm/BaseRealm;",
            ">;>;"
        }
    .end annotation
.end field

.field final emptyAsyncRealmObject:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Lio/realm/RealmQuery",
            "<+",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pendingOnSuccessAsyncTransactionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final realm:Lio/realm/BaseRealm;

.field final realmObjects:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final referenceQueueAsyncRealmResults:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lio/realm/RealmResults",
            "<+",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation
.end field

.field final referenceQueueRealmObject:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lio/realm/RealmModel;",
            ">;"
        }
    .end annotation
.end field

.field private final referenceQueueSyncRealmResults:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lio/realm/RealmResults",
            "<+",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation
.end field

.field final syncRealmResults:Lio/realm/internal/IdentitySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/internal/IdentitySet",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/realm/RealmResults",
            "<+",
            "Lio/realm/RealmModel;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private updateAsyncQueriesTask:Ljava/util/concurrent/Future;

.field final weakChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/realm/RealmChangeListener",
            "<+",
            "Lio/realm/BaseRealm;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lio/realm/HandlerController;->NO_REALM_QUERY:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lio/realm/BaseRealm;)V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/HandlerController;->changeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 61
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/HandlerController;->weakChangeListeners:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lio/realm/HandlerController;->referenceQueueAsyncRealmResults:Ljava/lang/ref/ReferenceQueue;

    .line 72
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lio/realm/HandlerController;->referenceQueueSyncRealmResults:Ljava/lang/ref/ReferenceQueue;

    .line 74
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lio/realm/HandlerController;->referenceQueueRealmObject:Ljava/lang/ref/ReferenceQueue;

    .line 80
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lio/realm/HandlerController;->asyncRealmResults:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/realm/HandlerController;->emptyAsyncRealmObject:Ljava/util/Map;

    .line 89
    new-instance v0, Lio/realm/internal/IdentitySet;

    invoke-direct {v0}, Lio/realm/internal/IdentitySet;-><init>()V

    iput-object v0, p0, Lio/realm/HandlerController;->syncRealmResults:Lio/realm/internal/IdentitySet;

    .line 96
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/realm/HandlerController;->realmObjects:Ljava/util/concurrent/ConcurrentHashMap;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/HandlerController;->pendingOnSuccessAsyncTransactionCallbacks:Ljava/util/List;

    .line 105
    iput-object p1, p0, Lio/realm/HandlerController;->realm:Lio/realm/BaseRealm;

    .line 106
    return-void
.end method

.method private collectAsyncRealmResultsCallbacks(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/realm/RealmResults",
            "<+",
            "Lio/realm/RealmModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lio/realm/HandlerController;->asyncRealmResults:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/realm/HandlerController;->collectRealmResultsCallbacks(Ljava/util/Iterator;Ljava/util/List;)V

    .line 327
    return-void
.end method

.method private collectRealmResultsCallbacks(Ljava/util/Iterator;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/realm/RealmResults",
            "<+",
            "Lio/realm/RealmModel;",
            ">;>;>;",
            "Ljava/util/List",
            "<",
            "Lio/realm/RealmResults",
            "<+",
            "Lio/realm/RealmModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 336
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 338
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmResults;

    .line 339
    if-nez v0, :cond_1

    .line 340
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 347
    :cond_1
    invoke-virtual {v0}, Lio/realm/RealmResults;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {v0}, Lio/realm/RealmResults;->syncIfNeeded()V

    .line 349
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    :cond_2
    return-void
.end method

.method private collectSyncRealmResultsCallbacks(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/realm/RealmResults",
            "<+",
            "Lio/realm/RealmModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lio/realm/HandlerController;->syncRealmResults:Lio/realm/internal/IdentitySet;

    invoke-virtual {v0}, Lio/realm/internal/IdentitySet;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/realm/HandlerController;->collectRealmResultsCallbacks(Ljava/util/Iterator;Ljava/util/List;)V

    .line 331
    return-void
.end method

.method private completedAsyncQueriesUpdate(Lio/realm/internal/async/QueryUpdateTask$Result;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 531
    iget-object v0, p0, Lio/realm/HandlerController;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->getVersionID()Lio/realm/internal/SharedRealm$VersionID;

    move-result-object v0

    .line 532
    iget-object v1, p1, Lio/realm/internal/async/QueryUpdateTask$Result;->versionID:Lio/realm/internal/SharedRealm$VersionID;

    invoke-virtual {v0, v1}, Lio/realm/internal/SharedRealm$VersionID;->compareTo(Lio/realm/internal/SharedRealm$VersionID;)I

    move-result v0

    .line 533
    if-lez v0, :cond_0

    .line 537
    const-string/jumbo v0, "COMPLETED_UPDATE_ASYNC_QUERIES %s caller is more advanced, Looper will updates queries"

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p0, v1, v5

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    :goto_0
    return-void

    .line 543
    :cond_0
    if-eqz v0, :cond_1

    .line 548
    const-string/jumbo v0, "COMPLETED_UPDATE_ASYNC_QUERIES %s caller is behind advance_read"

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p0, v1, v5

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    :try_start_0
    iget-object v0, p0, Lio/realm/HandlerController;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v1, p1, Lio/realm/internal/async/QueryUpdateTask$Result;->versionID:Lio/realm/internal/SharedRealm$VersionID;

    invoke-virtual {v0, v1}, Lio/realm/internal/SharedRealm;->refresh(Lio/realm/internal/SharedRealm$VersionID;)V
    :try_end_0
    .catch Lio/realm/internal/async/BadVersionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p1, Lio/realm/internal/async/QueryUpdateTask$Result;->updatedTableViews:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 565
    iget-object v0, p1, Lio/realm/internal/async/QueryUpdateTask$Result;->updatedTableViews:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 566
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 567
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/RealmResults;

    .line 568
    if-nez v2, :cond_2

    .line 570
    iget-object v0, p0, Lio/realm/HandlerController;->asyncRealmResults:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 554
    :catch_0
    move-exception v0

    .line 557
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Failed to advance Caller Realm to Worker Realm version"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 574
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lio/realm/RealmResults;->swapTableViewPointer(J)V

    .line 575
    invoke-virtual {v2}, Lio/realm/RealmResults;->syncIfNeeded()V

    .line 576
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    const-string/jumbo v0, "COMPLETED_UPDATE_ASYNC_QUERIES updating RealmResults %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object v1, v2, v8

    invoke-static {v0, v2}, Lio/realm/log/RealmLog;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 581
    :cond_3
    invoke-direct {p0, v3}, Lio/realm/HandlerController;->collectSyncRealmResultsCallbacks(Ljava/util/List;)V

    .line 585
    invoke-virtual {p0, v3}, Lio/realm/HandlerController;->notifyAllListeners(Ljava/util/List;)V

    .line 587
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/HandlerController;->updateAsyncQueriesTask:Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method private completedAsyncRealmObject(Lio/realm/internal/async/QueryUpdateTask$Result;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 606
    iget-object v0, p1, Lio/realm/internal/async/QueryUpdateTask$Result;->updatedRow:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 607
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 608
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 609
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    .line 611
    if-eqz v1, :cond_1

    .line 612
    iget-object v2, p0, Lio/realm/HandlerController;->realm:Lio/realm/BaseRealm;

    iget-object v2, v2, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v2}, Lio/realm/internal/SharedRealm;->getVersionID()Lio/realm/internal/SharedRealm$VersionID;

    move-result-object v2

    .line 613
    iget-object v3, p1, Lio/realm/internal/async/QueryUpdateTask$Result;->versionID:Lio/realm/internal/SharedRealm$VersionID;

    invoke-virtual {v2, v3}, Lio/realm/internal/SharedRealm$VersionID;->compareTo(Lio/realm/internal/SharedRealm$VersionID;)I

    move-result v2

    .line 616
    if-nez v2, :cond_2

    .line 617
    iget-object v2, p1, Lio/realm/internal/async/QueryUpdateTask$Result;->updatedRow:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 618
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lio/realm/HandlerController;->emptyAsyncRealmObject:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 620
    iget-object v4, p0, Lio/realm/HandlerController;->emptyAsyncRealmObject:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    iget-object v4, p0, Lio/realm/HandlerController;->realmObjects:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v5, Lio/realm/HandlerController;->NO_REALM_QUERY:Ljava/lang/Boolean;

    invoke-virtual {v4, v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    :cond_0
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lio/realm/ProxyState;->onCompleted$realm(J)V

    .line 624
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->notifyChangeListeners$realm()V

    .line 666
    :cond_1
    :goto_0
    return-void

    .line 626
    :cond_2
    if-lez v2, :cond_6

    .line 629
    invoke-static {v1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 630
    const-string/jumbo v0, "[COMPLETED_ASYNC_REALM_OBJECT %s], realm: %s. RealmObject is already loaded, just notify it"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lio/realm/HandlerController;->realm:Lio/realm/BaseRealm;

    aput-object v3, v2, v4

    aput-object p0, v2, v5

    invoke-static {v0, v2}, Lio/realm/log/RealmLog;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 633
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->notifyChangeListeners$realm()V

    goto :goto_0

    .line 636
    :cond_3
    const-string/jumbo v2, "[COMPLETED_ASYNC_REALM_OBJECT %s, realm: %s. RealmObject is not loaded yet. Rerun the query."

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    aput-object p0, v3, v5

    invoke-static {v2, v3}, Lio/realm/log/RealmLog;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    iget-object v1, p0, Lio/realm/HandlerController;->realmObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 641
    if-eqz v1, :cond_4

    sget-object v2, Lio/realm/HandlerController;->NO_REALM_QUERY:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_5

    .line 642
    :cond_4
    iget-object v1, p0, Lio/realm/HandlerController;->emptyAsyncRealmObject:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmQuery;

    .line 648
    :goto_1
    invoke-static {}, Lio/realm/internal/async/QueryUpdateTask;->newBuilder()Lio/realm/internal/async/QueryUpdateTask$Builder$RealmConfigurationStep;

    move-result-object v2

    iget-object v3, p0, Lio/realm/HandlerController;->realm:Lio/realm/BaseRealm;

    .line 649
    invoke-virtual {v3}, Lio/realm/BaseRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/internal/async/QueryUpdateTask$Builder$RealmConfigurationStep;->realmConfiguration(Lio/realm/RealmConfiguration;)Lio/realm/internal/async/QueryUpdateTask$Builder$UpdateQueryStep;

    move-result-object v2

    .line 651
    invoke-virtual {v1}, Lio/realm/RealmQuery;->handoverQueryPointer()J

    move-result-wide v4

    .line 652
    invoke-virtual {v1}, Lio/realm/RealmQuery;->getArgument()Lio/realm/internal/async/ArgumentsHolder;

    move-result-object v1

    .line 650
    invoke-interface {v2, v0, v4, v5, v1}, Lio/realm/internal/async/QueryUpdateTask$Builder$UpdateQueryStep;->addObject(Ljava/lang/ref/WeakReference;JLio/realm/internal/async/ArgumentsHolder;)Lio/realm/internal/async/QueryUpdateTask$Builder$HandlerStep;

    move-result-object v0

    iget-object v1, p0, Lio/realm/HandlerController;->realm:Lio/realm/BaseRealm;

    iget-object v1, v1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v1, v1, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    sget-object v2, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;->COMPLETE_ASYNC_OBJECT:Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    .line 653
    invoke-interface {v0, v1, v2}, Lio/realm/internal/async/QueryUpdateTask$Builder$HandlerStep;->sendToNotifier(Lio/realm/internal/RealmNotifier;Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;)Lio/realm/internal/async/QueryUpdateTask$Builder$BuilderStep;

    move-result-object v0

    .line 655
    invoke-interface {v0}, Lio/realm/internal/async/QueryUpdateTask$Builder$BuilderStep;->build()Lio/realm/internal/async/QueryUpdateTask;

    move-result-object v0

    .line 657
    sget-object v1, Lio/realm/Realm;->asyncTaskExecutor:Lio/realm/internal/async/RealmThreadPoolExecutor;

    invoke-virtual {v1, v0}, Lio/realm/internal/async/RealmThreadPoolExecutor;->submitQueryUpdate(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 645
    :cond_5
    check-cast v1, Lio/realm/RealmQuery;

    goto :goto_1

    .line 662
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Caller thread behind the Worker thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private completedAsyncRealmResults(Lio/realm/internal/async/QueryUpdateTask$Result;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 460
    iget-object v0, p1, Lio/realm/internal/async/QueryUpdateTask$Result;->updatedTableViews:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 461
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 462
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 464
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmResults;

    .line 465
    if-nez v1, :cond_1

    .line 466
    iget-object v1, p0, Lio/realm/HandlerController;->asyncRealmResults:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const-string/jumbo v1, "[COMPLETED_ASYNC_REALM_RESULTS %s] realm: %s RealmResults GC\'d ignore results"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object p0, v2, v5

    invoke-static {v1, v2}, Lio/realm/log/RealmLog;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    iget-object v2, p0, Lio/realm/HandlerController;->realm:Lio/realm/BaseRealm;

    iget-object v2, v2, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v2}, Lio/realm/internal/SharedRealm;->getVersionID()Lio/realm/internal/SharedRealm$VersionID;

    move-result-object v2

    .line 471
    iget-object v3, p1, Lio/realm/internal/async/QueryUpdateTask$Result;->versionID:Lio/realm/internal/SharedRealm$VersionID;

    invoke-virtual {v2, v3}, Lio/realm/internal/SharedRealm$VersionID;->compareTo(Lio/realm/internal/SharedRealm$VersionID;)I

    move-result v2

    .line 472
    if-nez v2, :cond_3

    .line 475
    invoke-virtual {v1}, Lio/realm/RealmResults;->isLoaded()Z

    move-result v2

    if-nez v2, :cond_2

    .line 476
    const-string/jumbo v2, "[COMPLETED_ASYNC_REALM_RESULTS %s] , realm: %s same versions, using results (RealmResults is not loaded)"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v4

    aput-object p0, v3, v5

    invoke-static {v2, v3}, Lio/realm/log/RealmLog;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    iget-object v2, p1, Lio/realm/internal/async/QueryUpdateTask$Result;->updatedTableViews:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/realm/RealmResults;->swapTableViewPointer(J)V

    .line 481
    invoke-virtual {v1}, Lio/realm/RealmResults;->syncIfNeeded()V

    .line 482
    invoke-virtual {v1, v4}, Lio/realm/RealmResults;->notifyChangeListeners(Z)V

    goto :goto_0

    .line 484
    :cond_2
    const-string/jumbo v1, "[COMPLETED_ASYNC_REALM_RESULTS %s] , realm: %s ignoring result the RealmResults (is already loaded)"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object p0, v2, v5

    invoke-static {v1, v2}, Lio/realm/log/RealmLog;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 488
    :cond_3
    if-lez v2, :cond_5

    .line 498
    invoke-virtual {v1}, Lio/realm/RealmResults;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_4

    .line 500
    const-string/jumbo v1, "[COMPLETED_ASYNC_REALM_RESULTS %s ] , %s caller is more advanced & RealmResults is not loaded, rerunning the query against the latest version"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object p0, v2, v5

    invoke-static {v1, v2}, Lio/realm/log/RealmLog;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 502
    iget-object v1, p0, Lio/realm/HandlerController;->asyncRealmResults:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmQuery;

    .line 503
    invoke-static {}, Lio/realm/internal/async/QueryUpdateTask;->newBuilder()Lio/realm/internal/async/QueryUpdateTask$Builder$RealmConfigurationStep;

    move-result-object v2

    iget-object v3, p0, Lio/realm/HandlerController;->realm:Lio/realm/BaseRealm;

    .line 504
    invoke-virtual {v3}, Lio/realm/BaseRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/internal/async/QueryUpdateTask$Builder$RealmConfigurationStep;->realmConfiguration(Lio/realm/RealmConfiguration;)Lio/realm/internal/async/QueryUpdateTask$Builder$UpdateQueryStep;

    move-result-object v2

    .line 506
    invoke-virtual {v1}, Lio/realm/RealmQuery;->handoverQueryPointer()J

    move-result-wide v4

    .line 507
    invoke-virtual {v1}, Lio/realm/RealmQuery;->getArgument()Lio/realm/internal/async/ArgumentsHolder;

    move-result-object v1

    .line 505
    invoke-interface {v2, v0, v4, v5, v1}, Lio/realm/internal/async/QueryUpdateTask$Builder$UpdateQueryStep;->add(Ljava/lang/ref/WeakReference;JLio/realm/internal/async/ArgumentsHolder;)Lio/realm/internal/async/QueryUpdateTask$Builder$RealmResultsQueryStep;

    move-result-object v0

    iget-object v1, p0, Lio/realm/HandlerController;->realm:Lio/realm/BaseRealm;

    iget-object v1, v1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v1, v1, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    sget-object v2, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;->COMPLETE_ASYNC_RESULTS:Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    .line 508
    invoke-interface {v0, v1, v2}, Lio/realm/internal/async/QueryUpdateTask$Builder$RealmResultsQueryStep;->sendToNotifier(Lio/realm/internal/RealmNotifier;Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;)Lio/realm/internal/async/QueryUpdateTask$Builder$BuilderStep;

    move-result-object v0

    .line 510
    invoke-interface {v0}, Lio/realm/internal/async/QueryUpdateTask$Builder$BuilderStep;->build()Lio/realm/internal/async/QueryUpdateTask;

    move-result-object v0

    .line 512
    sget-object v1, Lio/realm/Realm;->asyncTaskExecutor:Lio/realm/internal/async/RealmThreadPoolExecutor;

    invoke-virtual {v1, v0}, Lio/realm/internal/async/RealmThreadPoolExecutor;->submitQueryUpdate(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_0

    .line 516
    :cond_4
    const-string/jumbo v1, "[COMPLETED_ASYNC_REALM_RESULTS %s] , %s caller is more advanced & RealmResults is loaded ignore the outdated result"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object p0, v2, v5

    invoke-static {v1, v2}, Lio/realm/log/RealmLog;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 524
    :cond_5
    const-string/jumbo v1, "[COMPLETED_ASYNC_REALM_RESULTS %s] , %s caller thread behind worker thread, ignore results (a batch update will update everything including this query)"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object p0, v2, v5

    invoke-static {v1, v2}, Lio/realm/log/RealmLog;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private deleteWeakReferences()V
    .locals 2

    .prologue
    .line 714
    :goto_0
    iget-object v0, p0, Lio/realm/HandlerController;->referenceQueueAsyncRealmResults:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v1, p0, Lio/realm/HandlerController;->asyncRealmResults:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 717
    :cond_0
    :goto_1
    iget-object v0, p0, Lio/realm/HandlerController;->referenceQueueSyncRealmResults:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 718
    iget-object v1, p0, Lio/realm/HandlerController;->syncRealmResults:Lio/realm/internal/IdentitySet;

    invoke-virtual {v1, v0}, Lio/realm/internal/IdentitySet;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 720
    :cond_1
    :goto_2
    iget-object v0, p0, Lio/realm/HandlerController;->referenceQueueRealmObject:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 721
    iget-object v1, p0, Lio/realm/HandlerController;->realmObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 723
    :cond_2
    return-void
.end method

.method private static isIntentServiceThread()Z
    .locals 2

    .prologue
    .line 827
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 828
    if-eqz v0, :cond_0

    const-string/jumbo v1, "IntentService["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyAsyncTransactionCallbacks()V
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lio/realm/HandlerController;->pendingOnSuccessAsyncTransactionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 598
    iget-object v0, p0, Lio/realm/HandlerController;->pendingOnSuccessAsyncTransactionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 599
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 601
    :cond_0
    iget-object v0, p0, Lio/realm/HandlerController;->pendingOnSuccessAsyncTransactionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 603
    :cond_1
    return-void
.end method

.method private notifyGlobalListeners()V
    .locals 4

    .prologue
    .line 244
    iget-object v0, p0, Lio/realm/HandlerController;->changeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 245
    :goto_0
    iget-object v0, p0, Lio/realm/HandlerController;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmChangeListener;

    .line 247
    iget-object v2, p0, Lio/realm/HandlerController;->realm:Lio/realm/BaseRealm;

    invoke-interface {v0, v2}, Lio/realm/RealmChangeListener;->onChange(Ljava/lang/Object;)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lio/realm/HandlerController;->weakChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 251
    const/4 v2, 0x0

    .line 252
    :goto_1
    iget-object v0, p0, Lio/realm/HandlerController;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 254
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmChangeListener;

    .line 255
    if-nez v1, :cond_1

    .line 256
    if-nez v2, :cond_4

    .line 257
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/realm/HandlerController;->weakChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 259
    :goto_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object v2, v1

    .line 263
    goto :goto_1

    .line 261
    :cond_1
    iget-object v0, p0, Lio/realm/HandlerController;->realm:Lio/realm/BaseRealm;

    invoke-interface {v1, v0}, Lio/realm/RealmChangeListener;->onChange(Ljava/lang/Object;)V

    move-object v1, v2

    goto :goto_3

    .line 264
    :cond_2
    if-eqz v2, :cond_3

    .line 265
    iget-object v0, p0, Lio/realm/HandlerController;->weakChangeListeners:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 267
    :cond_3
    return-void

    :cond_4
    move-object v1, v2

    goto :goto_2
.end method

.method private notifyRealmObjectCallbacks()V
    .locals 4

    .prologue
    .line 359
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 360
    iget-object v0, p0, Lio/realm/HandlerController;->realmObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 361
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 362
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 363
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 364
    if-nez v0, :cond_1

    .line 365
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 368
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->isAttached()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 370
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 371
    :cond_2
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    sget-object v3, Lio/realm/internal/Row;->EMPTY_ROW:Lio/realm/internal/Row;

    if-eq v0, v3, :cond_0

    .line 372
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 377
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    iget-object v0, p0, Lio/realm/HandlerController;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 378
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 379
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->notifyChangeListeners$realm()V

    goto :goto_1

    .line 381
    :cond_4
    return-void
.end method

.method private realmChanged(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 430
    const-string/jumbo v1, "%s : %s"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    const-string/jumbo v0, "LOCAL_COMMIT"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p0, v2, v0

    invoke-static {v1, v2}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    invoke-direct {p0}, Lio/realm/HandlerController;->deleteWeakReferences()V

    .line 432
    invoke-direct {p0}, Lio/realm/HandlerController;->threadContainsAsyncQueries()Z

    move-result v0

    .line 435
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 436
    const-string/jumbo v1, "Mixing asynchronous queries with local writes should be avoided. Realm will convert any async queries to synchronous in order to remain consistent. Use asynchronous writes instead. You can read more here: https://realm.io/docs/java/latest/#asynchronous-transactions"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    :cond_0
    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    .line 444
    invoke-direct {p0}, Lio/realm/HandlerController;->updateAsyncQueries()V

    .line 457
    :goto_1
    return-void

    .line 430
    :cond_1
    const-string/jumbo v0, "REALM_CHANGED"

    goto :goto_0

    .line 450
    :cond_2
    iget-object v0, p0, Lio/realm/HandlerController;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->refresh()V

    .line 452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 453
    invoke-direct {p0, v0}, Lio/realm/HandlerController;->collectAsyncRealmResultsCallbacks(Ljava/util/List;)V

    .line 454
    invoke-direct {p0, v0}, Lio/realm/HandlerController;->collectSyncRealmResultsCallbacks(Ljava/util/List;)V

    .line 455
    invoke-virtual {p0, v0}, Lio/realm/HandlerController;->notifyAllListeners(Ljava/util/List;)V

    goto :goto_1
.end method

.method private threadContainsAsyncQueries()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 676
    .line 677
    iget-object v0, p0, Lio/realm/HandlerController;->asyncRealmResults:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    .line 678
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 680
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 681
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    move v0, v1

    :goto_1
    move v1, v0

    .line 685
    goto :goto_0

    :cond_0
    move v0, v3

    .line 683
    goto :goto_1

    .line 687
    :cond_1
    if-nez v1, :cond_2

    :goto_2
    return v2

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method private updateAsyncEmptyRealmObject()V
    .locals 8

    .prologue
    .line 270
    iget-object v0, p0, Lio/realm/HandlerController;->emptyAsyncRealmObject:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 271
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 273
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 274
    sget-object v4, Lio/realm/Realm;->asyncTaskExecutor:Lio/realm/internal/async/RealmThreadPoolExecutor;

    .line 275
    invoke-static {}, Lio/realm/internal/async/QueryUpdateTask;->newBuilder()Lio/realm/internal/async/QueryUpdateTask$Builder$RealmConfigurationStep;

    move-result-object v1

    iget-object v2, p0, Lio/realm/HandlerController;->realm:Lio/realm/BaseRealm;

    .line 276
    invoke-virtual {v2}, Lio/realm/BaseRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/internal/async/QueryUpdateTask$Builder$RealmConfigurationStep;->realmConfiguration(Lio/realm/RealmConfiguration;)Lio/realm/internal/async/QueryUpdateTask$Builder$UpdateQueryStep;

    move-result-object v5

    .line 277
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 278
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/RealmQuery;

    invoke-virtual {v2}, Lio/realm/RealmQuery;->handoverQueryPointer()J

    move-result-wide v6

    .line 279
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmQuery;

    invoke-virtual {v0}, Lio/realm/RealmQuery;->getArgument()Lio/realm/internal/async/ArgumentsHolder;

    move-result-object v0

    .line 277
    invoke-interface {v5, v1, v6, v7, v0}, Lio/realm/internal/async/QueryUpdateTask$Builder$UpdateQueryStep;->addObject(Ljava/lang/ref/WeakReference;JLio/realm/internal/async/ArgumentsHolder;)Lio/realm/internal/async/QueryUpdateTask$Builder$HandlerStep;

    move-result-object v0

    iget-object v1, p0, Lio/realm/HandlerController;->realm:Lio/realm/BaseRealm;

    iget-object v1, v1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v1, v1, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    sget-object v2, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;->COMPLETE_ASYNC_OBJECT:Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    .line 280
    invoke-interface {v0, v1, v2}, Lio/realm/internal/async/QueryUpdateTask$Builder$HandlerStep;->sendToNotifier(Lio/realm/internal/RealmNotifier;Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;)Lio/realm/internal/async/QueryUpdateTask$Builder$BuilderStep;

    move-result-object v0

    .line 282
    invoke-interface {v0}, Lio/realm/internal/async/QueryUpdateTask$Builder$BuilderStep;->build()Lio/realm/internal/async/QueryUpdateTask;

    move-result-object v0

    .line 275
    invoke-virtual {v4, v0}, Lio/realm/internal/async/RealmThreadPoolExecutor;->submitQueryUpdate(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 285
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 288
    :cond_1
    return-void
.end method

.method private updateAsyncQueries()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 384
    iget-object v0, p0, Lio/realm/HandlerController;->updateAsyncQueriesTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/HandlerController;->updateAsyncQueriesTask:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lio/realm/HandlerController;->updateAsyncQueriesTask:Ljava/util/concurrent/Future;

    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 387
    sget-object v0, Lio/realm/Realm;->asyncTaskExecutor:Lio/realm/internal/async/RealmThreadPoolExecutor;

    invoke-virtual {v0}, Lio/realm/internal/async/RealmThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lio/realm/HandlerController;->updateAsyncQueriesTask:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 388
    const-string/jumbo v0, "REALM_CHANGED realm: %s cancelling pending COMPLETED_UPDATE_ASYNC_QUERIES updates"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    :cond_0
    const-string/jumbo v0, "REALM_CHANGED realm: %s updating async queries, total: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    iget-object v2, p0, Lio/realm/HandlerController;->asyncRealmResults:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    invoke-static {}, Lio/realm/internal/async/QueryUpdateTask;->newBuilder()Lio/realm/internal/async/QueryUpdateTask$Builder$RealmConfigurationStep;

    move-result-object v0

    iget-object v1, p0, Lio/realm/HandlerController;->realm:Lio/realm/BaseRealm;

    .line 393
    invoke-virtual {v1}, Lio/realm/BaseRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/internal/async/QueryUpdateTask$Builder$RealmConfigurationStep;->realmConfiguration(Lio/realm/RealmConfiguration;)Lio/realm/internal/async/QueryUpdateTask$Builder$UpdateQueryStep;

    move-result-object v4

    .line 394
    const/4 v3, 0x0

    .line 397
    iget-object v0, p0, Lio/realm/HandlerController;->asyncRealmResults:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 398
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 400
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 401
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/RealmResults;

    .line 402
    if-nez v2, :cond_1

    .line 404
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    move-object v0, v3

    :goto_1
    move-object v3, v0

    .line 419
    goto :goto_0

    .line 408
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/RealmQuery;

    invoke-virtual {v2}, Lio/realm/RealmQuery;->handoverQueryPointer()J

    move-result-wide v2

    .line 409
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmQuery;

    invoke-virtual {v0}, Lio/realm/RealmQuery;->getArgument()Lio/realm/internal/async/ArgumentsHolder;

    move-result-object v0

    .line 407
    invoke-interface {v4, v1, v2, v3, v0}, Lio/realm/internal/async/QueryUpdateTask$Builder$UpdateQueryStep;->add(Ljava/lang/ref/WeakReference;JLio/realm/internal/async/ArgumentsHolder;)Lio/realm/internal/async/QueryUpdateTask$Builder$RealmResultsQueryStep;

    move-result-object v0

    goto :goto_1

    .line 420
    :cond_2
    if-eqz v3, :cond_3

    .line 421
    iget-object v0, p0, Lio/realm/HandlerController;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v0, v0, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    sget-object v1, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;->COMPLETE_UPDATE_ASYNC_QUERIES:Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    .line 422
    invoke-interface {v3, v0, v1}, Lio/realm/internal/async/QueryUpdateTask$Builder$RealmResultsQueryStep;->sendToNotifier(Lio/realm/internal/RealmNotifier;Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;)Lio/realm/internal/async/QueryUpdateTask$Builder$BuilderStep;

    move-result-object v0

    .line 424
    invoke-interface {v0}, Lio/realm/internal/async/QueryUpdateTask$Builder$BuilderStep;->build()Lio/realm/internal/async/QueryUpdateTask;

    move-result-object v0

    .line 425
    sget-object v1, Lio/realm/Realm;->asyncTaskExecutor:Lio/realm/internal/async/RealmThreadPoolExecutor;

    invoke-virtual {v1, v0}, Lio/realm/internal/async/RealmThreadPoolExecutor;->submitQueryUpdate(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lio/realm/HandlerController;->updateAsyncQueriesTask:Ljava/util/concurrent/Future;

    .line 427
    :cond_3
    return-void
.end method


# virtual methods
.method addToRealmObjects(Lio/realm/internal/RealmObjectProxy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/internal/RealmObjectProxy;",
            ">(TE;)V"
        }
    .end annotation

    .prologue
    .line 741
    iget-object v0, p0, Lio/realm/HandlerController;->realmObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 742
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 749
    :goto_0
    return-void

    .line 746
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lio/realm/HandlerController;->referenceQueueRealmObject:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 748
    iget-object v1, p0, Lio/realm/HandlerController;->realmObjects:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lio/realm/HandlerController;->NO_REALM_QUERY:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method addToRealmResults(Lio/realm/RealmResults;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults",
            "<+",
            "Lio/realm/RealmModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 733
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lio/realm/HandlerController;->referenceQueueSyncRealmResults:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 735
    iget-object v1, p0, Lio/realm/HandlerController;->syncRealmResults:Lio/realm/internal/IdentitySet;

    invoke-virtual {v1, v0}, Lio/realm/internal/IdentitySet;->add(Ljava/lang/Object;)V

    .line 736
    return-void
.end method

.method public checkCanBeAutoRefreshed()V
    .locals 2

    .prologue
    .line 803
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 804
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot set auto-refresh in a Thread without a Looper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 806
    :cond_0
    invoke-static {}, Lio/realm/HandlerController;->isIntentServiceThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 807
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot set auto-refresh in an IntentService thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 809
    :cond_1
    return-void
.end method

.method public handleAsyncTransactionCompleted(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lio/realm/HandlerController;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    if-eqz v0, :cond_1

    .line 164
    if-eqz p1, :cond_0

    .line 165
    iget-object v0, p0, Lio/realm/HandlerController;->pendingOnSuccessAsyncTransactionCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/realm/HandlerController;->realmChanged(Z)V

    .line 169
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 115
    iget-object v0, p0, Lio/realm/HandlerController;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    if-eqz v0, :cond_0

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, 0x9de8d6d

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lio/realm/HandlerController;->realmChanged(Z)V

    .line 148
    :cond_0
    :goto_1
    return v1

    .line 121
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lio/realm/internal/async/QueryUpdateTask$Result;

    .line 126
    invoke-direct {p0, v0}, Lio/realm/HandlerController;->completedAsyncRealmResults(Lio/realm/internal/async/QueryUpdateTask$Result;)V

    goto :goto_1

    .line 130
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lio/realm/internal/async/QueryUpdateTask$Result;

    .line 131
    invoke-direct {p0, v0}, Lio/realm/HandlerController;->completedAsyncRealmObject(Lio/realm/internal/async/QueryUpdateTask$Result;)V

    goto :goto_1

    .line 136
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lio/realm/internal/async/QueryUpdateTask$Result;

    .line 137
    invoke-direct {p0, v0}, Lio/realm/HandlerController;->completedAsyncQueriesUpdate(Lio/realm/internal/async/QueryUpdateTask$Result;)V

    goto :goto_1

    .line 142
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 117
    nop

    :sswitch_data_0
    .sparse-switch
        0xe3d1b0 -> :sswitch_0
        0x1709e79 -> :sswitch_3
        0x2547029 -> :sswitch_1
        0x3c50ea2 -> :sswitch_2
        0x6197ecb -> :sswitch_4
        0x9de8d6d -> :sswitch_0
    .end sparse-switch
.end method

.method public isAutoRefreshAvailable()Z
    .locals 1

    .prologue
    .line 816
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/realm/HandlerController;->isIntentServiceThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 817
    :cond_0
    const/4 v0, 0x0

    .line 820
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAutoRefreshEnabled()Z
    .locals 1

    .prologue
    .line 795
    iget-boolean v0, p0, Lio/realm/HandlerController;->autoRefresh:Z

    return v0
.end method

.method notifyAllListeners(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/realm/RealmResults",
            "<+",
            "Lio/realm/RealmModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 303
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    iget-object v0, p0, Lio/realm/HandlerController;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmResults;

    .line 305
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lio/realm/RealmResults;->notifyChangeListeners(Z)V

    goto :goto_0

    .line 309
    :cond_0
    invoke-direct {p0}, Lio/realm/HandlerController;->notifyRealmObjectCallbacks()V

    .line 313
    iget-object v0, p0, Lio/realm/HandlerController;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lio/realm/HandlerController;->threadContainsAsyncEmptyRealmObject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    invoke-direct {p0}, Lio/realm/HandlerController;->updateAsyncEmptyRealmObject()V

    .line 318
    :cond_1
    invoke-direct {p0}, Lio/realm/HandlerController;->notifyAsyncTransactionCallbacks()V

    .line 322
    invoke-direct {p0}, Lio/realm/HandlerController;->notifyGlobalListeners()V

    .line 323
    return-void
.end method

.method public setAutoRefresh(Z)V
    .locals 0

    .prologue
    .line 790
    invoke-virtual {p0}, Lio/realm/HandlerController;->checkCanBeAutoRefreshed()V

    .line 791
    iput-boolean p1, p0, Lio/realm/HandlerController;->autoRefresh:Z

    .line 792
    return-void
.end method

.method threadContainsAsyncEmptyRealmObject()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 697
    .line 698
    iget-object v0, p0, Lio/realm/HandlerController;->emptyAsyncRealmObject:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    .line 699
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 701
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 702
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    move v0, v1

    :goto_1
    move v1, v0

    .line 706
    goto :goto_0

    :cond_0
    move v0, v3

    .line 704
    goto :goto_1

    .line 708
    :cond_1
    if-nez v1, :cond_2

    :goto_2
    return v2

    :cond_2
    move v2, v3

    goto :goto_2
.end method
