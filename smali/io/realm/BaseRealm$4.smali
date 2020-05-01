.class final Lio/realm/BaseRealm$4;
.super Ljava/lang/Object;
.source "BaseRealm.java"

# interfaces
.implements Lio/realm/RealmCache$Callback;


# instance fields
.field final synthetic val$callback:Lio/realm/BaseRealm$MigrationCallback;

.field final synthetic val$configuration:Lio/realm/RealmConfiguration;

.field final synthetic val$fileNotFound:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$migration:Lio/realm/RealmMigration;


# direct methods
.method constructor <init>(Lio/realm/RealmConfiguration;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/realm/RealmMigration;Lio/realm/BaseRealm$MigrationCallback;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lio/realm/BaseRealm$4;->val$configuration:Lio/realm/RealmConfiguration;

    iput-object p2, p0, Lio/realm/BaseRealm$4;->val$fileNotFound:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lio/realm/BaseRealm$4;->val$migration:Lio/realm/RealmMigration;

    iput-object p4, p0, Lio/realm/BaseRealm$4;->val$callback:Lio/realm/BaseRealm$MigrationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .locals 6

    .prologue
    .line 620
    if-eqz p1, :cond_0

    .line 621
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot migrate a Realm file that is already open: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/realm/BaseRealm$4;->val$configuration:Lio/realm/RealmConfiguration;

    .line 622
    invoke-virtual {v2}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/realm/BaseRealm$4;->val$configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 627
    iget-object v0, p0, Lio/realm/BaseRealm$4;->val$fileNotFound:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 651
    :cond_1
    :goto_0
    return-void

    .line 631
    :cond_2
    iget-object v0, p0, Lio/realm/BaseRealm$4;->val$migration:Lio/realm/RealmMigration;

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/realm/BaseRealm$4;->val$configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getMigration()Lio/realm/RealmMigration;

    move-result-object v0

    .line 632
    :goto_1
    const/4 v1, 0x0

    .line 634
    :try_start_0
    iget-object v2, p0, Lio/realm/BaseRealm$4;->val$configuration:Lio/realm/RealmConfiguration;

    invoke-static {v2}, Lio/realm/DynamicRealm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/DynamicRealm;

    move-result-object v1

    .line 635
    invoke-virtual {v1}, Lio/realm/DynamicRealm;->beginTransaction()V

    .line 636
    invoke-virtual {v1}, Lio/realm/DynamicRealm;->getVersion()J

    move-result-wide v2

    .line 637
    iget-object v4, p0, Lio/realm/BaseRealm$4;->val$configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v4}, Lio/realm/RealmConfiguration;->getSchemaVersion()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lio/realm/RealmMigration;->migrate(Lio/realm/DynamicRealm;JJ)V

    .line 638
    iget-object v0, p0, Lio/realm/BaseRealm$4;->val$configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaVersion()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/realm/DynamicRealm;->setVersion(J)V

    .line 639
    invoke-virtual {v1}, Lio/realm/DynamicRealm;->commitTransaction()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    if-eqz v1, :cond_1

    .line 647
    invoke-virtual {v1}, Lio/realm/DynamicRealm;->close()V

    .line 648
    iget-object v0, p0, Lio/realm/BaseRealm$4;->val$callback:Lio/realm/BaseRealm$MigrationCallback;

    invoke-interface {v0}, Lio/realm/BaseRealm$MigrationCallback;->migrationComplete()V

    goto :goto_0

    .line 631
    :cond_3
    iget-object v0, p0, Lio/realm/BaseRealm$4;->val$migration:Lio/realm/RealmMigration;

    goto :goto_1

    .line 640
    :catch_0
    move-exception v0

    .line 641
    if-eqz v1, :cond_4

    .line 642
    :try_start_1
    invoke-virtual {v1}, Lio/realm/DynamicRealm;->cancelTransaction()V

    .line 644
    :cond_4
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 646
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    .line 647
    invoke-virtual {v1}, Lio/realm/DynamicRealm;->close()V

    .line 648
    iget-object v1, p0, Lio/realm/BaseRealm$4;->val$callback:Lio/realm/BaseRealm$MigrationCallback;

    invoke-interface {v1}, Lio/realm/BaseRealm$MigrationCallback;->migrationComplete()V

    :cond_5
    throw v0
.end method
