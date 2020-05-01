.class Lio/realm/Realm$2;
.super Ljava/lang/Object;
.source "Realm.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lio/realm/Realm;

.field final synthetic val$onError:Lio/realm/Realm$Transaction$OnError;

.field final synthetic val$onSuccess:Lio/realm/Realm$Transaction$OnSuccess;

.field final synthetic val$realmConfiguration:Lio/realm/RealmConfiguration;

.field final synthetic val$transaction:Lio/realm/Realm$Transaction;


# direct methods
.method constructor <init>(Lio/realm/Realm;Lio/realm/RealmConfiguration;Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)V
    .locals 0

    .prologue
    .line 1340
    iput-object p1, p0, Lio/realm/Realm$2;->this$0:Lio/realm/Realm;

    iput-object p2, p0, Lio/realm/Realm$2;->val$realmConfiguration:Lio/realm/RealmConfiguration;

    iput-object p3, p0, Lio/realm/Realm$2;->val$transaction:Lio/realm/Realm$Transaction;

    iput-object p4, p0, Lio/realm/Realm$2;->val$onSuccess:Lio/realm/Realm$Transaction$OnSuccess;

    iput-object p5, p0, Lio/realm/Realm$2;->val$onError:Lio/realm/Realm$Transaction$OnError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1343
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1434
    :cond_0
    :goto_0
    return-void

    .line 1348
    :cond_1
    new-array v3, v0, [Ljava/lang/Throwable;

    .line 1349
    iget-object v1, p0, Lio/realm/Realm$2;->val$realmConfiguration:Lio/realm/RealmConfiguration;

    invoke-static {v1}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v4

    .line 1350
    invoke-virtual {v4}, Lio/realm/Realm;->beginTransaction()V

    .line 1352
    :try_start_0
    iget-object v1, p0, Lio/realm/Realm$2;->val$transaction:Lio/realm/Realm$Transaction;

    invoke-interface {v1, v4}, Lio/realm/Realm$Transaction;->execute(Lio/realm/Realm;)V

    .line 1354
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1356
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lio/realm/Realm;->commitTransaction(Z)V

    .line 1359
    invoke-virtual {v4}, Lio/realm/Realm;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    .line 1365
    :goto_1
    invoke-virtual {v4}, Lio/realm/Realm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1366
    invoke-virtual {v4}, Lio/realm/Realm;->isInTransaction()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1367
    invoke-virtual {v4}, Lio/realm/Realm;->cancelTransaction()V

    .line 1371
    :cond_2
    :goto_2
    invoke-virtual {v4}, Lio/realm/Realm;->close()V

    .line 1374
    :cond_3
    aget-object v0, v3, v2

    .line 1376
    iget-object v2, p0, Lio/realm/Realm$2;->this$0:Lio/realm/Realm;

    invoke-virtual {v2}, Lio/realm/Realm;->hasValidNotifier()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1378
    if-eqz v1, :cond_4

    .line 1380
    iget-object v1, p0, Lio/realm/Realm$2;->this$0:Lio/realm/Realm;

    iget-object v1, v1, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v1, v1, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    new-instance v2, Lio/realm/Realm$2$1;

    invoke-direct {v2, p0}, Lio/realm/Realm$2$1;-><init>(Lio/realm/Realm$2;)V

    invoke-interface {v1, v2}, Lio/realm/internal/RealmNotifier;->post(Ljava/lang/Runnable;)V

    .line 1394
    :cond_4
    if-eqz v0, :cond_0

    .line 1395
    iget-object v1, p0, Lio/realm/Realm$2;->val$onError:Lio/realm/Realm$Transaction$OnError;

    if-eqz v1, :cond_6

    .line 1396
    iget-object v1, p0, Lio/realm/Realm$2;->this$0:Lio/realm/Realm;

    iget-object v1, v1, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v1, v1, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    new-instance v2, Lio/realm/Realm$2$2;

    invoke-direct {v2, p0, v0}, Lio/realm/Realm$2$2;-><init>(Lio/realm/Realm$2;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lio/realm/internal/RealmNotifier;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1368
    :cond_5
    aget-object v0, v3, v2

    if-eqz v0, :cond_2

    .line 1369
    const-string/jumbo v0, "Could not cancel transaction, not currently in a transaction."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1403
    :cond_6
    iget-object v1, p0, Lio/realm/Realm$2;->this$0:Lio/realm/Realm;

    iget-object v1, v1, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v1, v1, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    new-instance v2, Lio/realm/Realm$2$3;

    invoke-direct {v2, p0, v0}, Lio/realm/Realm$2$3;-><init>(Lio/realm/Realm$2;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lio/realm/internal/RealmNotifier;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1420
    :cond_7
    if-eqz v0, :cond_0

    .line 1421
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_8

    .line 1423
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 1424
    :cond_8
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_9

    .line 1426
    new-instance v1, Lio/realm/exceptions/RealmException;

    const-string/jumbo v2, "Async transaction failed"

    invoke-direct {v1, v2, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1427
    :cond_9
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_0

    .line 1429
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 1362
    :catch_0
    move-exception v0

    .line 1363
    const/4 v1, 0x0

    :try_start_1
    aput-object v0, v3, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1365
    invoke-virtual {v4}, Lio/realm/Realm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1366
    invoke-virtual {v4}, Lio/realm/Realm;->isInTransaction()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1367
    invoke-virtual {v4}, Lio/realm/Realm;->cancelTransaction()V

    .line 1371
    :cond_a
    :goto_3
    invoke-virtual {v4}, Lio/realm/Realm;->close()V

    .line 1374
    :cond_b
    aget-object v0, v3, v2

    .line 1376
    iget-object v1, p0, Lio/realm/Realm$2;->this$0:Lio/realm/Realm;

    invoke-virtual {v1}, Lio/realm/Realm;->hasValidNotifier()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1394
    if-eqz v0, :cond_0

    .line 1395
    iget-object v1, p0, Lio/realm/Realm$2;->val$onError:Lio/realm/Realm$Transaction$OnError;

    if-eqz v1, :cond_d

    .line 1396
    iget-object v1, p0, Lio/realm/Realm$2;->this$0:Lio/realm/Realm;

    iget-object v1, v1, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v1, v1, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    new-instance v2, Lio/realm/Realm$2$2;

    invoke-direct {v2, p0, v0}, Lio/realm/Realm$2$2;-><init>(Lio/realm/Realm$2;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lio/realm/internal/RealmNotifier;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1368
    :cond_c
    aget-object v0, v3, v2

    if-eqz v0, :cond_a

    .line 1369
    const-string/jumbo v0, "Could not cancel transaction, not currently in a transaction."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 1403
    :cond_d
    iget-object v1, p0, Lio/realm/Realm$2;->this$0:Lio/realm/Realm;

    iget-object v1, v1, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v1, v1, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    new-instance v2, Lio/realm/Realm$2$3;

    invoke-direct {v2, p0, v0}, Lio/realm/Realm$2$3;-><init>(Lio/realm/Realm$2;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lio/realm/internal/RealmNotifier;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1420
    :cond_e
    if-eqz v0, :cond_0

    .line 1421
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_f

    .line 1423
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 1424
    :cond_f
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_10

    .line 1426
    new-instance v1, Lio/realm/exceptions/RealmException;

    const-string/jumbo v2, "Async transaction failed"

    invoke-direct {v1, v2, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1427
    :cond_10
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_0

    .line 1429
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 1365
    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v4}, Lio/realm/Realm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1366
    invoke-virtual {v4}, Lio/realm/Realm;->isInTransaction()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1367
    invoke-virtual {v4}, Lio/realm/Realm;->cancelTransaction()V

    .line 1371
    :cond_11
    :goto_4
    invoke-virtual {v4}, Lio/realm/Realm;->close()V

    .line 1374
    :cond_12
    aget-object v0, v3, v2

    .line 1376
    iget-object v2, p0, Lio/realm/Realm$2;->this$0:Lio/realm/Realm;

    invoke-virtual {v2}, Lio/realm/Realm;->hasValidNotifier()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1394
    if-eqz v0, :cond_13

    .line 1395
    iget-object v2, p0, Lio/realm/Realm$2;->val$onError:Lio/realm/Realm$Transaction$OnError;

    if-eqz v2, :cond_15

    .line 1396
    iget-object v2, p0, Lio/realm/Realm$2;->this$0:Lio/realm/Realm;

    iget-object v2, v2, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v2, v2, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    new-instance v3, Lio/realm/Realm$2$2;

    invoke-direct {v3, p0, v0}, Lio/realm/Realm$2$2;-><init>(Lio/realm/Realm$2;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lio/realm/internal/RealmNotifier;->post(Ljava/lang/Runnable;)V

    .line 1433
    :cond_13
    :goto_5
    throw v1

    .line 1368
    :cond_14
    aget-object v0, v3, v2

    if-eqz v0, :cond_11

    .line 1369
    const-string/jumbo v0, "Could not cancel transaction, not currently in a transaction."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 1403
    :cond_15
    iget-object v2, p0, Lio/realm/Realm$2;->this$0:Lio/realm/Realm;

    iget-object v2, v2, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v2, v2, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    new-instance v3, Lio/realm/Realm$2$3;

    invoke-direct {v3, p0, v0}, Lio/realm/Realm$2$3;-><init>(Lio/realm/Realm$2;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lio/realm/internal/RealmNotifier;->post(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 1420
    :cond_16
    if-eqz v0, :cond_13

    .line 1421
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_17

    .line 1423
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 1424
    :cond_17
    instance-of v2, v0, Ljava/lang/Exception;

    if-eqz v2, :cond_18

    .line 1426
    new-instance v1, Lio/realm/exceptions/RealmException;

    const-string/jumbo v2, "Async transaction failed"

    invoke-direct {v1, v2, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1427
    :cond_18
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_13

    .line 1429
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_19
    move v1, v2

    goto/16 :goto_1
.end method
