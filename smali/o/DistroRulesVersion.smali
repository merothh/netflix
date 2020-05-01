.class public Lo/DistroRulesVersion;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/NewIntentItem;
.implements Lo/RestoreSession$Application;
.implements Lo/NewIntentItem$ActionBar;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/NewIntentItem;",
        "Lo/RestoreSession$Application<",
        "Ljava/lang/Object;",
        ">;",
        "Lo/NewIntentItem$ActionBar;"
    }
.end annotation


# instance fields
.field private a:Lo/MoveToDisplayItem;

.field private b:Ljava/lang/Object;

.field private final c:Lo/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ObjectPool<",
            "*>;"
        }
    .end annotation
.end field

.field private final d:Lo/NewIntentItem$ActionBar;

.field private e:I

.field private volatile g:Lo/BluetoothAvrcpPlayerSettings$Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BluetoothAvrcpPlayerSettings$Application<",
            "*>;"
        }
    .end annotation
.end field

.field private j:Lo/LaunchActivityItem;


# direct methods
.method public constructor <init>(Lo/ObjectPool;Lo/NewIntentItem$ActionBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ObjectPool<",
            "*>;",
            "Lo/NewIntentItem$ActionBar;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lo/DistroRulesVersion;->c:Lo/ObjectPool;

    .line 38
    iput-object p2, p0, Lo/DistroRulesVersion;->d:Lo/NewIntentItem$ActionBar;

    return-void
.end method

.method private a()Z
    .locals 2

    .line 69
    iget v0, p0, Lo/DistroRulesVersion;->e:I

    iget-object v1, p0, Lo/DistroRulesVersion;->c:Lo/ObjectPool;

    invoke-virtual {v1}, Lo/ObjectPool;->l()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private c(Ljava/lang/Object;)V
    .locals 8

    const-string v0, "SourceGenerator"

    .line 73
    invoke-static {}, Lo/ComponentInfo;->c()J

    move-result-wide v1

    .line 75
    :try_start_0
    iget-object v3, p0, Lo/DistroRulesVersion;->c:Lo/ObjectPool;

    invoke-virtual {v3, p1}, Lo/ObjectPool;->b(Ljava/lang/Object;)Lo/BlobBackupHelper;

    move-result-object v3

    .line 76
    new-instance v4, Lo/DestroyActivityItem;

    iget-object v5, p0, Lo/DistroRulesVersion;->c:Lo/ObjectPool;

    .line 77
    invoke-virtual {v5}, Lo/ObjectPool;->b()Lo/FullBackupAgent;

    move-result-object v5

    invoke-direct {v4, v3, p1, v5}, Lo/DestroyActivityItem;-><init>(Lo/BlobBackupHelper;Ljava/lang/Object;Lo/FullBackupAgent;)V

    .line 78
    new-instance v5, Lo/LaunchActivityItem;

    iget-object v6, p0, Lo/DistroRulesVersion;->g:Lo/BluetoothAvrcpPlayerSettings$Application;

    iget-object v6, v6, Lo/BluetoothAvrcpPlayerSettings$Application;->b:Lo/FileBackupHelperBase;

    iget-object v7, p0, Lo/DistroRulesVersion;->c:Lo/ObjectPool;

    invoke-virtual {v7}, Lo/ObjectPool;->f()Lo/FileBackupHelperBase;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lo/LaunchActivityItem;-><init>(Lo/FileBackupHelperBase;Lo/FileBackupHelperBase;)V

    iput-object v5, p0, Lo/DistroRulesVersion;->j:Lo/LaunchActivityItem;

    .line 79
    iget-object v5, p0, Lo/DistroRulesVersion;->c:Lo/ObjectPool;

    invoke-virtual {v5}, Lo/ObjectPool;->e()Lo/StorageStatsManager;

    move-result-object v5

    iget-object v6, p0, Lo/DistroRulesVersion;->j:Lo/LaunchActivityItem;

    invoke-interface {v5, v6, v4}, Lo/StorageStatsManager;->c(Lo/FileBackupHelperBase;Lo/StorageStatsManager$ActionBar;)V

    const/4 v4, 0x2

    .line 80
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished encoding source to cache, key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lo/DistroRulesVersion;->j:Lo/LaunchActivityItem;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", encoder: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", duration: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {v1, v2}, Lo/ComponentInfo;->e(J)D

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_0
    iget-object p1, p0, Lo/DistroRulesVersion;->g:Lo/BluetoothAvrcpPlayerSettings$Application;

    iget-object p1, p1, Lo/BluetoothAvrcpPlayerSettings$Application;->e:Lo/RestoreSession;

    invoke-interface {p1}, Lo/RestoreSession;->c()V

    .line 91
    new-instance p1, Lo/MoveToDisplayItem;

    iget-object v0, p0, Lo/DistroRulesVersion;->g:Lo/BluetoothAvrcpPlayerSettings$Application;

    iget-object v0, v0, Lo/BluetoothAvrcpPlayerSettings$Application;->b:Lo/FileBackupHelperBase;

    .line 92
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lo/DistroRulesVersion;->c:Lo/ObjectPool;

    invoke-direct {p1, v0, v1, p0}, Lo/MoveToDisplayItem;-><init>(Ljava/util/List;Lo/ObjectPool;Lo/NewIntentItem$ActionBar;)V

    iput-object p1, p0, Lo/DistroRulesVersion;->a:Lo/MoveToDisplayItem;

    return-void

    :catchall_0
    move-exception p1

    .line 88
    iget-object v0, p0, Lo/DistroRulesVersion;->g:Lo/BluetoothAvrcpPlayerSettings$Application;

    iget-object v0, v0, Lo/BluetoothAvrcpPlayerSettings$Application;->e:Lo/RestoreSession;

    invoke-interface {v0}, Lo/RestoreSession;->c()V

    throw p1
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 126
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 6

    .line 105
    iget-object v0, p0, Lo/DistroRulesVersion;->c:Lo/ObjectPool;

    invoke-virtual {v0}, Lo/ObjectPool;->a()Lo/PauseActivityItem;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 106
    iget-object v1, p0, Lo/DistroRulesVersion;->g:Lo/BluetoothAvrcpPlayerSettings$Application;

    iget-object v1, v1, Lo/BluetoothAvrcpPlayerSettings$Application;->e:Lo/RestoreSession;

    invoke-interface {v1}, Lo/RestoreSession;->b()Lcom/bumptech/glide/load/DataSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/PauseActivityItem;->d(Lcom/bumptech/glide/load/DataSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iput-object p1, p0, Lo/DistroRulesVersion;->b:Ljava/lang/Object;

    .line 110
    iget-object p1, p0, Lo/DistroRulesVersion;->d:Lo/NewIntentItem$ActionBar;

    invoke-interface {p1}, Lo/NewIntentItem$ActionBar;->b()V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lo/DistroRulesVersion;->d:Lo/NewIntentItem$ActionBar;

    iget-object v1, p0, Lo/DistroRulesVersion;->g:Lo/BluetoothAvrcpPlayerSettings$Application;

    iget-object v1, v1, Lo/BluetoothAvrcpPlayerSettings$Application;->b:Lo/FileBackupHelperBase;

    iget-object v2, p0, Lo/DistroRulesVersion;->g:Lo/BluetoothAvrcpPlayerSettings$Application;

    iget-object v3, v2, Lo/BluetoothAvrcpPlayerSettings$Application;->e:Lo/RestoreSession;

    iget-object v2, p0, Lo/DistroRulesVersion;->g:Lo/BluetoothAvrcpPlayerSettings$Application;

    iget-object v2, v2, Lo/BluetoothAvrcpPlayerSettings$Application;->e:Lo/RestoreSession;

    .line 113
    invoke-interface {v2}, Lo/RestoreSession;->b()Lcom/bumptech/glide/load/DataSource;

    move-result-object v4

    iget-object v5, p0, Lo/DistroRulesVersion;->j:Lo/LaunchActivityItem;

    move-object v2, p1

    .line 112
    invoke-interface/range {v0 .. v5}, Lo/NewIntentItem$ActionBar;->e(Lo/FileBackupHelperBase;Ljava/lang/Object;Lo/RestoreSession;Lcom/bumptech/glide/load/DataSource;Lo/FileBackupHelperBase;)V

    :goto_0
    return-void
.end method

.method public b(Lo/FileBackupHelperBase;Ljava/lang/Exception;Lo/RestoreSession;Lcom/bumptech/glide/load/DataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FileBackupHelperBase;",
            "Ljava/lang/Exception;",
            "Lo/RestoreSession<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .line 141
    iget-object p4, p0, Lo/DistroRulesVersion;->d:Lo/NewIntentItem$ActionBar;

    iget-object v0, p0, Lo/DistroRulesVersion;->g:Lo/BluetoothAvrcpPlayerSettings$Application;

    iget-object v0, v0, Lo/BluetoothAvrcpPlayerSettings$Application;->e:Lo/RestoreSession;

    invoke-interface {v0}, Lo/RestoreSession;->b()Lcom/bumptech/glide/load/DataSource;

    move-result-object v0

    invoke-interface {p4, p1, p2, p3, v0}, Lo/NewIntentItem$ActionBar;->b(Lo/FileBackupHelperBase;Ljava/lang/Exception;Lo/RestoreSession;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method public d(Ljava/lang/Exception;)V
    .locals 4

    .line 119
    iget-object v0, p0, Lo/DistroRulesVersion;->d:Lo/NewIntentItem$ActionBar;

    iget-object v1, p0, Lo/DistroRulesVersion;->j:Lo/LaunchActivityItem;

    iget-object v2, p0, Lo/DistroRulesVersion;->g:Lo/BluetoothAvrcpPlayerSettings$Application;

    iget-object v2, v2, Lo/BluetoothAvrcpPlayerSettings$Application;->e:Lo/RestoreSession;

    iget-object v3, p0, Lo/DistroRulesVersion;->g:Lo/BluetoothAvrcpPlayerSettings$Application;

    iget-object v3, v3, Lo/BluetoothAvrcpPlayerSettings$Application;->e:Lo/RestoreSession;

    invoke-interface {v3}, Lo/RestoreSession;->b()Lcom/bumptech/glide/load/DataSource;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Lo/NewIntentItem$ActionBar;->b(Lo/FileBackupHelperBase;Ljava/lang/Exception;Lo/RestoreSession;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method public d()Z
    .locals 5

    .line 43
    iget-object v0, p0, Lo/DistroRulesVersion;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 45
    iput-object v1, p0, Lo/DistroRulesVersion;->b:Ljava/lang/Object;

    .line 46
    invoke-direct {p0, v0}, Lo/DistroRulesVersion;->c(Ljava/lang/Object;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lo/DistroRulesVersion;->a:Lo/MoveToDisplayItem;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/MoveToDisplayItem;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 52
    :cond_1
    iput-object v1, p0, Lo/DistroRulesVersion;->a:Lo/MoveToDisplayItem;

    .line 54
    iput-object v1, p0, Lo/DistroRulesVersion;->g:Lo/BluetoothAvrcpPlayerSettings$Application;

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 56
    invoke-direct {p0}, Lo/DistroRulesVersion;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 57
    iget-object v1, p0, Lo/DistroRulesVersion;->c:Lo/ObjectPool;

    invoke-virtual {v1}, Lo/ObjectPool;->l()Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lo/DistroRulesVersion;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lo/DistroRulesVersion;->e:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/BluetoothAvrcpPlayerSettings$Application;

    iput-object v1, p0, Lo/DistroRulesVersion;->g:Lo/BluetoothAvrcpPlayerSettings$Application;

    .line 58
    iget-object v1, p0, Lo/DistroRulesVersion;->g:Lo/BluetoothAvrcpPlayerSettings$Application;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/DistroRulesVersion;->c:Lo/ObjectPool;

    .line 59
    invoke-virtual {v1}, Lo/ObjectPool;->a()Lo/PauseActivityItem;

    move-result-object v1

    iget-object v3, p0, Lo/DistroRulesVersion;->g:Lo/BluetoothAvrcpPlayerSettings$Application;

    iget-object v3, v3, Lo/BluetoothAvrcpPlayerSettings$Application;->e:Lo/RestoreSession;

    invoke-interface {v3}, Lo/RestoreSession;->b()Lcom/bumptech/glide/load/DataSource;

    move-result-object v3

    invoke-virtual {v1, v3}, Lo/PauseActivityItem;->d(Lcom/bumptech/glide/load/DataSource;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lo/DistroRulesVersion;->c:Lo/ObjectPool;

    iget-object v3, p0, Lo/DistroRulesVersion;->g:Lo/BluetoothAvrcpPlayerSettings$Application;

    iget-object v3, v3, Lo/BluetoothAvrcpPlayerSettings$Application;->e:Lo/RestoreSession;

    .line 60
    invoke-interface {v3}, Lo/RestoreSession;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lo/ObjectPool;->a(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    :cond_3
    iget-object v0, p0, Lo/DistroRulesVersion;->g:Lo/BluetoothAvrcpPlayerSettings$Application;

    iget-object v0, v0, Lo/BluetoothAvrcpPlayerSettings$Application;->e:Lo/RestoreSession;

    iget-object v1, p0, Lo/DistroRulesVersion;->c:Lo/ObjectPool;

    invoke-virtual {v1}, Lo/ObjectPool;->c()Lcom/bumptech/glide/Priority;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lo/RestoreSession;->a(Lcom/bumptech/glide/Priority;Lo/RestoreSession$Application;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public e()V
    .locals 1

    .line 97
    iget-object v0, p0, Lo/DistroRulesVersion;->g:Lo/BluetoothAvrcpPlayerSettings$Application;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, v0, Lo/BluetoothAvrcpPlayerSettings$Application;->e:Lo/RestoreSession;

    invoke-interface {v0}, Lo/RestoreSession;->e()V

    :cond_0
    return-void
.end method

.method public e(Lo/FileBackupHelperBase;Ljava/lang/Object;Lo/RestoreSession;Lcom/bumptech/glide/load/DataSource;Lo/FileBackupHelperBase;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FileBackupHelperBase;",
            "Ljava/lang/Object;",
            "Lo/RestoreSession<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lo/FileBackupHelperBase;",
            ")V"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lo/DistroRulesVersion;->d:Lo/NewIntentItem$ActionBar;

    iget-object p4, p0, Lo/DistroRulesVersion;->g:Lo/BluetoothAvrcpPlayerSettings$Application;

    iget-object p4, p4, Lo/BluetoothAvrcpPlayerSettings$Application;->e:Lo/RestoreSession;

    invoke-interface {p4}, Lo/RestoreSession;->b()Lcom/bumptech/glide/load/DataSource;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lo/NewIntentItem$ActionBar;->e(Lo/FileBackupHelperBase;Ljava/lang/Object;Lo/RestoreSession;Lcom/bumptech/glide/load/DataSource;Lo/FileBackupHelperBase;)V

    return-void
.end method
