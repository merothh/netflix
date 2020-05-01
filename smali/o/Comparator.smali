.class public Lo/Comparator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private a:Ljava/lang/Runnable;

.field private c:Z

.field private d:Lo/HashMap;

.field private final e:Ljava/lang/Object;


# virtual methods
.method public close()V
    .locals 2

    .line 36
    iget-object v0, p0, Lo/Comparator;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_0
    iget-boolean v1, p0, Lo/Comparator;->c:Z

    if-eqz v1, :cond_0

    .line 38
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 41
    iput-boolean v1, p0, Lo/Comparator;->c:Z

    .line 42
    iget-object v1, p0, Lo/Comparator;->d:Lo/HashMap;

    invoke-virtual {v1, p0}, Lo/HashMap;->e(Lo/Comparator;)V

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lo/Comparator;->d:Lo/HashMap;

    .line 44
    iput-object v1, p0, Lo/Comparator;->a:Ljava/lang/Runnable;

    .line 45
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
