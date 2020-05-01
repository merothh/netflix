.class Lcom/bumptech/glide/load/engine/DecodeJob$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionBar"
.end annotation


# instance fields
.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Z)Z
    .locals 1

    .line 649
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$ActionBar;->c:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$ActionBar;->d:Z

    if-eqz p1, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$ActionBar;->e:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 633
    :try_start_0
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$ActionBar;->d:Z

    const/4 v0, 0x0

    .line 634
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob$ActionBar;->c(Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 643
    :try_start_0
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$ActionBar;->d:Z

    .line 644
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$ActionBar;->e:Z

    .line 645
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$ActionBar;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Z)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 628
    :try_start_0
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$ActionBar;->e:Z

    .line 629
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob$ActionBar;->c(Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized d()Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 638
    :try_start_0
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$ActionBar;->c:Z

    const/4 v0, 0x0

    .line 639
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob$ActionBar;->c(Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
