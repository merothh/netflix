.class public Lo/PipModeChangeItem;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ResumeActivityItem;
.implements Lo/TimeSparseArray$TaskDescription;
.implements Lo/WindowVisibilityItem$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PipModeChangeItem$TaskDescription;,
        Lo/PipModeChangeItem$ActionBar;,
        Lo/PipModeChangeItem$Application;,
        Lo/PipModeChangeItem$Activity;
    }
.end annotation


# static fields
.field private static final c:Z


# instance fields
.field private final a:Lo/TransactionExecutorHelper;

.field private final b:Lo/PipModeChangeItem$TaskDescription;

.field private final d:Lo/TimeSparseArray;

.field private final e:Lo/SliceMetrics;

.field private final f:Lo/PipModeChangeItem$ActionBar;

.field private final g:Lo/MultiWindowModeChangeItem;

.field private final i:Lo/SliceSpec;

.field private final j:Lo/PipModeChangeItem$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Engine"

    const/4 v1, 0x2

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lo/PipModeChangeItem;->c:Z

    return-void
.end method

.method constructor <init>(Lo/TimeSparseArray;Lo/StorageStatsManager$Application;Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Lo/SliceMetrics;Lo/TransactionExecutorHelper;Lo/MultiWindowModeChangeItem;Lo/PipModeChangeItem$TaskDescription;Lo/PipModeChangeItem$ActionBar;Lo/SliceSpec;Z)V
    .locals 9

    move-object v6, p0

    move-object v7, p1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object v7, v6, Lo/PipModeChangeItem;->d:Lo/TimeSparseArray;

    .line 84
    new-instance v0, Lo/PipModeChangeItem$Application;

    move-object v1, p2

    invoke-direct {v0, p2}, Lo/PipModeChangeItem$Application;-><init>(Lo/StorageStatsManager$Application;)V

    iput-object v0, v6, Lo/PipModeChangeItem;->j:Lo/PipModeChangeItem$Application;

    if-nez p9, :cond_0

    .line 87
    new-instance v0, Lo/MultiWindowModeChangeItem;

    move/from16 v1, p13

    invoke-direct {v0, v1}, Lo/MultiWindowModeChangeItem;-><init>(Z)V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p9

    .line 89
    :goto_0
    iput-object v0, v6, Lo/PipModeChangeItem;->g:Lo/MultiWindowModeChangeItem;

    .line 90
    invoke-virtual {v0, p0}, Lo/MultiWindowModeChangeItem;->b(Lo/WindowVisibilityItem$TaskDescription;)V

    if-nez p8, :cond_1

    .line 93
    new-instance v0, Lo/TransactionExecutorHelper;

    invoke-direct {v0}, Lo/TransactionExecutorHelper;-><init>()V

    goto :goto_1

    :cond_1
    move-object/from16 v0, p8

    .line 95
    :goto_1
    iput-object v0, v6, Lo/PipModeChangeItem;->a:Lo/TransactionExecutorHelper;

    if-nez p7, :cond_2

    .line 98
    new-instance v0, Lo/SliceMetrics;

    invoke-direct {v0}, Lo/SliceMetrics;-><init>()V

    goto :goto_2

    :cond_2
    move-object/from16 v0, p7

    .line 100
    :goto_2
    iput-object v0, v6, Lo/PipModeChangeItem;->e:Lo/SliceMetrics;

    if-nez p10, :cond_3

    .line 103
    new-instance v8, Lo/PipModeChangeItem$TaskDescription;

    move-object v0, v8

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lo/PipModeChangeItem$TaskDescription;-><init>(Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Lo/ResumeActivityItem;)V

    goto :goto_3

    :cond_3
    move-object/from16 v8, p10

    .line 107
    :goto_3
    iput-object v8, v6, Lo/PipModeChangeItem;->b:Lo/PipModeChangeItem$TaskDescription;

    if-nez p11, :cond_4

    .line 110
    new-instance v0, Lo/PipModeChangeItem$ActionBar;

    iget-object v1, v6, Lo/PipModeChangeItem;->j:Lo/PipModeChangeItem$Application;

    invoke-direct {v0, v1}, Lo/PipModeChangeItem$ActionBar;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob$Activity;)V

    goto :goto_4

    :cond_4
    move-object/from16 v0, p11

    .line 112
    :goto_4
    iput-object v0, v6, Lo/PipModeChangeItem;->f:Lo/PipModeChangeItem$ActionBar;

    if-nez p12, :cond_5

    .line 115
    new-instance v0, Lo/SliceSpec;

    invoke-direct {v0}, Lo/SliceSpec;-><init>()V

    goto :goto_5

    :cond_5
    move-object/from16 v0, p12

    .line 117
    :goto_5
    iput-object v0, v6, Lo/PipModeChangeItem;->i:Lo/SliceSpec;

    .line 119
    invoke-interface {p1, p0}, Lo/TimeSparseArray;->d(Lo/TimeSparseArray$TaskDescription;)V

    return-void
.end method

.method public constructor <init>(Lo/TimeSparseArray;Lo/StorageStatsManager$Application;Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Z)V
    .locals 14

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v13, p7

    .line 53
    invoke-direct/range {v0 .. v13}, Lo/PipModeChangeItem;-><init>(Lo/TimeSparseArray;Lo/StorageStatsManager$Application;Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Lo/SliceMetrics;Lo/TransactionExecutorHelper;Lo/MultiWindowModeChangeItem;Lo/PipModeChangeItem$TaskDescription;Lo/PipModeChangeItem$ActionBar;Lo/SliceSpec;Z)V

    return-void
.end method

.method private a(Lo/FileBackupHelperBase;Z)Lo/WindowVisibilityItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FileBackupHelperBase;",
            "Z)",
            "Lo/WindowVisibilityItem<",
            "*>;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 248
    :cond_0
    iget-object p2, p0, Lo/PipModeChangeItem;->g:Lo/MultiWindowModeChangeItem;

    invoke-virtual {p2, p1}, Lo/MultiWindowModeChangeItem;->c(Lo/FileBackupHelperBase;)Lo/WindowVisibilityItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 250
    invoke-virtual {p1}, Lo/WindowVisibilityItem;->h()V

    :cond_1
    return-object p1
.end method

.method private static b(Ljava/lang/String;JLo/FileBackupHelperBase;)V
    .locals 1

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lo/ComponentInfo;->e(J)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "ms, key: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Engine"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private c(Lo/FileBackupHelperBase;Z)Lo/WindowVisibilityItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FileBackupHelperBase;",
            "Z)",
            "Lo/WindowVisibilityItem<",
            "*>;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 261
    :cond_0
    invoke-direct {p0, p1}, Lo/PipModeChangeItem;->d(Lo/FileBackupHelperBase;)Lo/WindowVisibilityItem;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 263
    invoke-virtual {p2}, Lo/WindowVisibilityItem;->h()V

    .line 264
    iget-object v0, p0, Lo/PipModeChangeItem;->g:Lo/MultiWindowModeChangeItem;

    invoke-virtual {v0, p1, p2}, Lo/MultiWindowModeChangeItem;->e(Lo/FileBackupHelperBase;Lo/WindowVisibilityItem;)V

    :cond_1
    return-object p2
.end method

.method private d(Lo/FileBackupHelperBase;)Lo/WindowVisibilityItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FileBackupHelperBase;",
            ")",
            "Lo/WindowVisibilityItem<",
            "*>;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lo/PipModeChangeItem;->d:Lo/TimeSparseArray;

    invoke-interface {v0, p1}, Lo/TimeSparseArray;->b(Lo/FileBackupHelperBase;)Lo/Slice;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 275
    :cond_0
    instance-of v0, p1, Lo/WindowVisibilityItem;

    if-eqz v0, :cond_1

    .line 277
    check-cast p1, Lo/WindowVisibilityItem;

    goto :goto_0

    .line 279
    :cond_1
    new-instance v0, Lo/WindowVisibilityItem;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, v1}, Lo/WindowVisibilityItem;-><init>(Lo/Slice;ZZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public declared-synchronized a(Lo/FileBackupHelperBase;Lo/WindowVisibilityItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FileBackupHelperBase;",
            "Lo/WindowVisibilityItem<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 320
    :try_start_0
    iget-object v0, p0, Lo/PipModeChangeItem;->g:Lo/MultiWindowModeChangeItem;

    invoke-virtual {v0, p1}, Lo/MultiWindowModeChangeItem;->a(Lo/FileBackupHelperBase;)V

    .line 321
    invoke-virtual {p2}, Lo/WindowVisibilityItem;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lo/PipModeChangeItem;->d:Lo/TimeSparseArray;

    invoke-interface {v0, p1, p2}, Lo/TimeSparseArray;->e(Lo/FileBackupHelperBase;Lo/Slice;)Lo/Slice;

    goto :goto_0

    .line 324
    :cond_0
    iget-object p1, p0, Lo/PipModeChangeItem;->i:Lo/SliceSpec;

    invoke-virtual {p1, p2}, Lo/SliceSpec;->a(Lo/Slice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lo/Slice;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Slice<",
            "*>;)V"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lo/PipModeChangeItem;->i:Lo/SliceSpec;

    invoke-virtual {v0, p1}, Lo/SliceSpec;->a(Lo/Slice;)V

    return-void
.end method

.method public declared-synchronized d(Lo/PendingTransactionActions;Lo/FileBackupHelperBase;Lo/WindowVisibilityItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PendingTransactionActions<",
            "*>;",
            "Lo/FileBackupHelperBase;",
            "Lo/WindowVisibilityItem<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_0

    .line 298
    :try_start_0
    invoke-virtual {p3, p2, p0}, Lo/WindowVisibilityItem;->c(Lo/FileBackupHelperBase;Lo/WindowVisibilityItem$TaskDescription;)V

    .line 300
    invoke-virtual {p3}, Lo/WindowVisibilityItem;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lo/PipModeChangeItem;->g:Lo/MultiWindowModeChangeItem;

    invoke-virtual {v0, p2, p3}, Lo/MultiWindowModeChangeItem;->e(Lo/FileBackupHelperBase;Lo/WindowVisibilityItem;)V

    .line 305
    :cond_0
    iget-object p3, p0, Lo/PipModeChangeItem;->e:Lo/SliceMetrics;

    invoke-virtual {p3, p2, p1}, Lo/SliceMetrics;->d(Lo/FileBackupHelperBase;Lo/PendingTransactionActions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d(Lo/Slice;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Slice<",
            "*>;)V"
        }
    .end annotation

    .line 285
    instance-of v0, p1, Lo/WindowVisibilityItem;

    if-eqz v0, :cond_0

    .line 286
    check-cast p1, Lo/WindowVisibilityItem;

    invoke-virtual {p1}, Lo/WindowVisibilityItem;->i()V

    return-void

    .line 288
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot release anything but an EngineResource"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized e(Lo/AbsoluteFileBackupHelper;Ljava/lang/Object;Lo/FileBackupHelperBase;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lo/PauseActivityItem;Ljava/util/Map;ZZLo/FullBackupAgent;ZZZZLo/SyncActivityTooManyDeletes;Ljava/util/concurrent/Executor;)Lo/PipModeChangeItem$Activity;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/AbsoluteFileBackupHelper;",
            "Ljava/lang/Object;",
            "Lo/FileBackupHelperBase;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Lo/PauseActivityItem;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/RestoreObserver<",
            "*>;>;ZZ",
            "Lo/FullBackupAgent;",
            "ZZZZ",
            "Lo/SyncActivityTooManyDeletes;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lo/PipModeChangeItem$Activity;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p14

    move-object/from16 v8, p18

    move-object/from16 v9, p19

    monitor-enter p0

    .line 169
    :try_start_0
    sget-boolean v2, Lo/PipModeChangeItem;->c:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lo/ComponentInfo;->c()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    move-wide v10, v2

    .line 171
    iget-object v12, v1, Lo/PipModeChangeItem;->a:Lo/TransactionExecutorHelper;

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    move-object/from16 v17, p10

    move-object/from16 v18, p6

    move-object/from16 v19, p7

    move-object/from16 v20, p13

    invoke-virtual/range {v12 .. v20}, Lo/TransactionExecutorHelper;->e(Ljava/lang/Object;Lo/FileBackupHelperBase;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lo/FullBackupAgent;)Lo/StopActivityItem;

    move-result-object v12

    .line 174
    invoke-direct {v1, v12, v0}, Lo/PipModeChangeItem;->a(Lo/FileBackupHelperBase;Z)Lo/WindowVisibilityItem;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 176
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->e:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v8, v2, v0}, Lo/SyncActivityTooManyDeletes;->d(Lo/Slice;Lcom/bumptech/glide/load/DataSource;)V

    .line 177
    sget-boolean v0, Lo/PipModeChangeItem;->c:Z

    if-eqz v0, :cond_1

    const-string v0, "Loaded resource from active resources"

    .line 178
    invoke-static {v0, v10, v11, v12}, Lo/PipModeChangeItem;->b(Ljava/lang/String;JLo/FileBackupHelperBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :cond_1
    monitor-exit p0

    return-object v3

    .line 183
    :cond_2
    :try_start_1
    invoke-direct {v1, v12, v0}, Lo/PipModeChangeItem;->c(Lo/FileBackupHelperBase;Z)Lo/WindowVisibilityItem;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 185
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->e:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v8, v2, v0}, Lo/SyncActivityTooManyDeletes;->d(Lo/Slice;Lcom/bumptech/glide/load/DataSource;)V

    .line 186
    sget-boolean v0, Lo/PipModeChangeItem;->c:Z

    if-eqz v0, :cond_3

    const-string v0, "Loaded resource from cache"

    .line 187
    invoke-static {v0, v10, v11, v12}, Lo/PipModeChangeItem;->b(Ljava/lang/String;JLo/FileBackupHelperBase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :cond_3
    monitor-exit p0

    return-object v3

    .line 192
    :cond_4
    :try_start_2
    iget-object v2, v1, Lo/PipModeChangeItem;->e:Lo/SliceMetrics;

    move/from16 v15, p17

    invoke-virtual {v2, v12, v15}, Lo/SliceMetrics;->b(Lo/FileBackupHelperBase;Z)Lo/PendingTransactionActions;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 194
    invoke-virtual {v2, v8, v9}, Lo/PendingTransactionActions;->b(Lo/SyncActivityTooManyDeletes;Ljava/util/concurrent/Executor;)V

    .line 195
    sget-boolean v0, Lo/PipModeChangeItem;->c:Z

    if-eqz v0, :cond_5

    const-string v0, "Added to existing load"

    .line 196
    invoke-static {v0, v10, v11, v12}, Lo/PipModeChangeItem;->b(Ljava/lang/String;JLo/FileBackupHelperBase;)V

    .line 198
    :cond_5
    new-instance v0, Lo/PipModeChangeItem$Activity;

    invoke-direct {v0, v1, v8, v2}, Lo/PipModeChangeItem$Activity;-><init>(Lo/PipModeChangeItem;Lo/SyncActivityTooManyDeletes;Lo/PendingTransactionActions;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 201
    :cond_6
    :try_start_3
    iget-object v2, v1, Lo/PipModeChangeItem;->b:Lo/PipModeChangeItem$TaskDescription;

    move-object v3, v12

    move/from16 v4, p14

    move/from16 v5, p15

    move/from16 v6, p16

    move/from16 v7, p17

    .line 202
    invoke-virtual/range {v2 .. v7}, Lo/PipModeChangeItem$TaskDescription;->a(Lo/FileBackupHelperBase;ZZZZ)Lo/PendingTransactionActions;

    move-result-object v0

    .line 209
    iget-object v13, v1, Lo/PipModeChangeItem;->f:Lo/PipModeChangeItem$ActionBar;

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, v12

    move-object/from16 v17, p3

    move/from16 v18, p4

    move/from16 v19, p5

    move-object/from16 v20, p6

    move-object/from16 v21, p7

    move-object/from16 v22, p8

    move-object/from16 v23, p9

    move-object/from16 v24, p10

    move/from16 v25, p11

    move/from16 v26, p12

    move/from16 v27, p17

    move-object/from16 v28, p13

    move-object/from16 v29, v0

    .line 210
    invoke-virtual/range {v13 .. v29}, Lo/PipModeChangeItem$ActionBar;->b(Lo/AbsoluteFileBackupHelper;Ljava/lang/Object;Lo/StopActivityItem;Lo/FileBackupHelperBase;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lo/PauseActivityItem;Ljava/util/Map;ZZZLo/FullBackupAgent;Lcom/bumptech/glide/load/engine/DecodeJob$Application;)Lcom/bumptech/glide/load/engine/DecodeJob;

    move-result-object v2

    .line 228
    iget-object v3, v1, Lo/PipModeChangeItem;->e:Lo/SliceMetrics;

    invoke-virtual {v3, v12, v0}, Lo/SliceMetrics;->c(Lo/FileBackupHelperBase;Lo/PendingTransactionActions;)V

    .line 230
    invoke-virtual {v0, v8, v9}, Lo/PendingTransactionActions;->b(Lo/SyncActivityTooManyDeletes;Ljava/util/concurrent/Executor;)V

    .line 231
    invoke-virtual {v0, v2}, Lo/PendingTransactionActions;->a(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    .line 233
    sget-boolean v2, Lo/PipModeChangeItem;->c:Z

    if-eqz v2, :cond_7

    const-string v2, "Started new load"

    .line 234
    invoke-static {v2, v10, v11, v12}, Lo/PipModeChangeItem;->b(Ljava/lang/String;JLo/FileBackupHelperBase;)V

    .line 236
    :cond_7
    new-instance v2, Lo/PipModeChangeItem$Activity;

    invoke-direct {v2, v1, v8, v0}, Lo/PipModeChangeItem$Activity;-><init>(Lo/PipModeChangeItem;Lo/SyncActivityTooManyDeletes;Lo/PendingTransactionActions;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Lo/PendingTransactionActions;Lo/FileBackupHelperBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PendingTransactionActions<",
            "*>;",
            "Lo/FileBackupHelperBase;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 310
    :try_start_0
    iget-object v0, p0, Lo/PipModeChangeItem;->e:Lo/SliceMetrics;

    invoke-virtual {v0, p2, p1}, Lo/SliceMetrics;->d(Lo/FileBackupHelperBase;Lo/PendingTransactionActions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
