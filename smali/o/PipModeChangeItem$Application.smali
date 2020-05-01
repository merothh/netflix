.class Lo/PipModeChangeItem$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/engine/DecodeJob$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PipModeChangeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Application"
.end annotation


# instance fields
.field private volatile c:Lo/StorageStatsManager;

.field private final d:Lo/StorageStatsManager$Application;


# direct methods
.method constructor <init>(Lo/StorageStatsManager$Application;)V
    .locals 0

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    iput-object p1, p0, Lo/PipModeChangeItem$Application;->d:Lo/StorageStatsManager$Application;

    return-void
.end method


# virtual methods
.method public b()Lo/StorageStatsManager;
    .locals 1

    .line 383
    iget-object v0, p0, Lo/PipModeChangeItem$Application;->c:Lo/StorageStatsManager;

    if-nez v0, :cond_2

    .line 384
    monitor-enter p0

    .line 385
    :try_start_0
    iget-object v0, p0, Lo/PipModeChangeItem$Application;->c:Lo/StorageStatsManager;

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lo/PipModeChangeItem$Application;->d:Lo/StorageStatsManager$Application;

    invoke-interface {v0}, Lo/StorageStatsManager$Application;->e()Lo/StorageStatsManager;

    move-result-object v0

    iput-object v0, p0, Lo/PipModeChangeItem$Application;->c:Lo/StorageStatsManager;

    .line 388
    :cond_0
    iget-object v0, p0, Lo/PipModeChangeItem$Application;->c:Lo/StorageStatsManager;

    if-nez v0, :cond_1

    .line 389
    new-instance v0, Lo/StorageStats;

    invoke-direct {v0}, Lo/StorageStats;-><init>()V

    iput-object v0, p0, Lo/PipModeChangeItem$Application;->c:Lo/StorageStatsManager;

    .line 391
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 393
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/PipModeChangeItem$Application;->c:Lo/StorageStatsManager;

    return-object v0
.end method
