.class final Lo/MultiWindowModeChangeItem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MultiWindowModeChangeItem$Activity;,
        Lo/MultiWindowModeChangeItem$ActionBar;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lo/WindowVisibilityItem<",
            "*>;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/FileBackupHelperBase;",
            "Lo/MultiWindowModeChangeItem$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lo/WindowVisibilityItem$TaskDescription;

.field private volatile h:Z

.field private volatile i:Lo/MultiWindowModeChangeItem$ActionBar;


# direct methods
.method constructor <init>(Z)V
    .locals 1

    .line 34
    new-instance v0, Lo/MultiWindowModeChangeItem$3;

    invoke-direct {v0}, Lo/MultiWindowModeChangeItem$3;-><init>()V

    .line 36
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 34
    invoke-direct {p0, p1, v0}, Lo/MultiWindowModeChangeItem;-><init>(ZLjava/util/concurrent/Executor;)V

    return-void
.end method

.method constructor <init>(ZLjava/util/concurrent/Executor;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/MultiWindowModeChangeItem;->d:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lo/MultiWindowModeChangeItem;->c:Ljava/lang/ref/ReferenceQueue;

    .line 56
    iput-boolean p1, p0, Lo/MultiWindowModeChangeItem;->a:Z

    .line 57
    iput-object p2, p0, Lo/MultiWindowModeChangeItem;->b:Ljava/util/concurrent/Executor;

    .line 59
    new-instance p1, Lo/MultiWindowModeChangeItem$5;

    invoke-direct {p1, p0}, Lo/MultiWindowModeChangeItem$5;-><init>(Lo/MultiWindowModeChangeItem;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method declared-synchronized a(Lo/FileBackupHelperBase;)V
    .locals 1

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lo/MultiWindowModeChangeItem;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MultiWindowModeChangeItem$Activity;

    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p1}, Lo/MultiWindowModeChangeItem$Activity;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method b(Lo/WindowVisibilityItem$TaskDescription;)V
    .locals 1

    .line 69
    monitor-enter p1

    .line 70
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 71
    :try_start_1
    iput-object p1, p0, Lo/MultiWindowModeChangeItem;->e:Lo/WindowVisibilityItem$TaskDescription;

    .line 72
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    .line 72
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    .line 73
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method declared-synchronized c(Lo/FileBackupHelperBase;)Lo/WindowVisibilityItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FileBackupHelperBase;",
            ")",
            "Lo/WindowVisibilityItem<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lo/MultiWindowModeChangeItem;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MultiWindowModeChangeItem$Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 98
    monitor-exit p0

    return-object p1

    .line 101
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lo/MultiWindowModeChangeItem$Activity;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/WindowVisibilityItem;

    if-nez v0, :cond_1

    .line 103
    invoke-virtual {p0, p1}, Lo/MultiWindowModeChangeItem;->c(Lo/MultiWindowModeChangeItem$Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method c()V
    .locals 1

    .line 130
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lo/MultiWindowModeChangeItem;->h:Z

    if-nez v0, :cond_1

    .line 132
    :try_start_0
    iget-object v0, p0, Lo/MultiWindowModeChangeItem;->c:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lo/MultiWindowModeChangeItem$Activity;

    .line 133
    invoke-virtual {p0, v0}, Lo/MultiWindowModeChangeItem;->c(Lo/MultiWindowModeChangeItem$Activity;)V

    .line 136
    iget-object v0, p0, Lo/MultiWindowModeChangeItem;->i:Lo/MultiWindowModeChangeItem$ActionBar;

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0}, Lo/MultiWindowModeChangeItem$ActionBar;->d()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method c(Lo/MultiWindowModeChangeItem$Activity;)V
    .locals 5

    .line 113
    iget-object v0, p0, Lo/MultiWindowModeChangeItem;->e:Lo/WindowVisibilityItem$TaskDescription;

    monitor-enter v0

    .line 114
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 115
    :try_start_1
    iget-object v1, p0, Lo/MultiWindowModeChangeItem;->d:Ljava/util/Map;

    iget-object v2, p1, Lo/MultiWindowModeChangeItem$Activity;->d:Lo/FileBackupHelperBase;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-boolean v1, p1, Lo/MultiWindowModeChangeItem$Activity;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Lo/MultiWindowModeChangeItem$Activity;->c:Lo/Slice;

    if-nez v1, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    new-instance v1, Lo/WindowVisibilityItem;

    iget-object v2, p1, Lo/MultiWindowModeChangeItem$Activity;->c:Lo/Slice;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lo/WindowVisibilityItem;-><init>(Lo/Slice;ZZ)V

    .line 122
    iget-object v2, p1, Lo/MultiWindowModeChangeItem$Activity;->d:Lo/FileBackupHelperBase;

    iget-object v3, p0, Lo/MultiWindowModeChangeItem;->e:Lo/WindowVisibilityItem$TaskDescription;

    invoke-virtual {v1, v2, v3}, Lo/WindowVisibilityItem;->c(Lo/FileBackupHelperBase;Lo/WindowVisibilityItem$TaskDescription;)V

    .line 123
    iget-object v2, p0, Lo/MultiWindowModeChangeItem;->e:Lo/WindowVisibilityItem$TaskDescription;

    iget-object p1, p1, Lo/MultiWindowModeChangeItem$Activity;->d:Lo/FileBackupHelperBase;

    invoke-interface {v2, p1, v1}, Lo/WindowVisibilityItem$TaskDescription;->a(Lo/FileBackupHelperBase;Lo/WindowVisibilityItem;)V

    .line 124
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 118
    :cond_1
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 124
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    .line 125
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method declared-synchronized e(Lo/FileBackupHelperBase;Lo/WindowVisibilityItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FileBackupHelperBase;",
            "Lo/WindowVisibilityItem<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 77
    :try_start_0
    new-instance v0, Lo/MultiWindowModeChangeItem$Activity;

    iget-object v1, p0, Lo/MultiWindowModeChangeItem;->c:Ljava/lang/ref/ReferenceQueue;

    iget-boolean v2, p0, Lo/MultiWindowModeChangeItem;->a:Z

    invoke-direct {v0, p1, p2, v1, v2}, Lo/MultiWindowModeChangeItem$Activity;-><init>(Lo/FileBackupHelperBase;Lo/WindowVisibilityItem;Ljava/lang/ref/ReferenceQueue;Z)V

    .line 81
    iget-object p2, p0, Lo/MultiWindowModeChangeItem;->d:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MultiWindowModeChangeItem$Activity;

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Lo/MultiWindowModeChangeItem$Activity;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
