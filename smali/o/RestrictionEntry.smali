.class public Lo/RestrictionEntry;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MutableContextWrapper;
.implements Lo/ReceiverCallNotAllowedException;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/RestrictionEntry$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/MutableContextWrapper<",
        "TR;>;",
        "Lo/ReceiverCallNotAllowedException<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final d:Lo/RestrictionEntry$StateListAnimator;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lo/RestrictionEntry$StateListAnimator;

.field private final e:Z

.field private f:Z

.field private g:Lo/QuickViewConstants;

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private n:Lcom/bumptech/glide/load/engine/GlideException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lo/RestrictionEntry$StateListAnimator;

    invoke-direct {v0}, Lo/RestrictionEntry$StateListAnimator;-><init>()V

    sput-object v0, Lo/RestrictionEntry;->d:Lo/RestrictionEntry$StateListAnimator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 71
    sget-object v0, Lo/RestrictionEntry;->d:Lo/RestrictionEntry$StateListAnimator;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Lo/RestrictionEntry;-><init>(IIZLo/RestrictionEntry$StateListAnimator;)V

    return-void
.end method

.method constructor <init>(IIZLo/RestrictionEntry$StateListAnimator;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lo/RestrictionEntry;->a:I

    .line 76
    iput p2, p0, Lo/RestrictionEntry;->b:I

    .line 77
    iput-boolean p3, p0, Lo/RestrictionEntry;->e:Z

    .line 78
    iput-object p4, p0, Lo/RestrictionEntry;->c:Lo/RestrictionEntry$StateListAnimator;

    return-void
.end method

.method private declared-synchronized e(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TR;"
        }
    .end annotation

    monitor-enter p0

    .line 179
    :try_start_0
    iget-boolean v0, p0, Lo/RestrictionEntry;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/RestrictionEntry;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-static {}, Lo/FallbackCategoryProvider;->a()V

    .line 183
    :cond_0
    iget-boolean v0, p0, Lo/RestrictionEntry;->h:Z

    if-nez v0, :cond_9

    .line 185
    iget-boolean v0, p0, Lo/RestrictionEntry;->i:Z

    if-nez v0, :cond_8

    .line 187
    iget-boolean v0, p0, Lo/RestrictionEntry;->f:Z

    if-eqz v0, :cond_1

    .line 188
    iget-object p1, p0, Lo/RestrictionEntry;->j:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    const-wide/16 v0, 0x0

    if-nez p1, :cond_2

    .line 192
    :try_start_1
    iget-object p1, p0, Lo/RestrictionEntry;->c:Lo/RestrictionEntry$StateListAnimator;

    invoke-virtual {p1, p0, v0, v1}, Lo/RestrictionEntry$StateListAnimator;->b(Ljava/lang/Object;J)V

    goto :goto_1

    .line 193
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 195
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 196
    :goto_0
    invoke-virtual {p0}, Lo/RestrictionEntry;->isDone()Z

    move-result p1

    if-nez p1, :cond_3

    cmp-long p1, v0, v2

    if-gez p1, :cond_3

    .line 197
    iget-object p1, p0, Lo/RestrictionEntry;->c:Lo/RestrictionEntry$StateListAnimator;

    sub-long v0, v2, v0

    invoke-virtual {p1, p0, v0, v1}, Lo/RestrictionEntry$StateListAnimator;->b(Ljava/lang/Object;J)V

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    .line 202
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p1

    if-nez p1, :cond_7

    .line 204
    iget-boolean p1, p0, Lo/RestrictionEntry;->i:Z

    if-nez p1, :cond_6

    .line 206
    iget-boolean p1, p0, Lo/RestrictionEntry;->h:Z

    if-nez p1, :cond_5

    .line 208
    iget-boolean p1, p0, Lo/RestrictionEntry;->f:Z

    if-eqz p1, :cond_4

    .line 212
    iget-object p1, p0, Lo/RestrictionEntry;->j:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 209
    :cond_4
    :try_start_2
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    .line 207
    :cond_5
    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p1

    .line 205
    :cond_6
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lo/RestrictionEntry;->n:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 203
    :cond_7
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 186
    :cond_8
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lo/RestrictionEntry;->n:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 184
    :cond_9
    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/Object;Lo/AppsQueryHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lo/AppsQueryHelper<",
            "-TR;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 175
    monitor-exit p0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public declared-synchronized b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    monitor-enter p0

    .line 166
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(Ljava/lang/Object;Ljava/lang/Object;Lo/UndoOwner;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Object;",
            "Lo/UndoOwner<",
            "TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 p2, 0x1

    .line 243
    :try_start_0
    iput-boolean p2, p0, Lo/RestrictionEntry;->f:Z

    .line 244
    iput-object p1, p0, Lo/RestrictionEntry;->j:Ljava/lang/Object;

    .line 245
    iget-object p1, p0, Lo/RestrictionEntry;->c:Lo/RestrictionEntry$StateListAnimator;

    invoke-virtual {p1, p0}, Lo/RestrictionEntry$StateListAnimator;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 246
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()Lo/QuickViewConstants;
    .locals 1

    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lo/RestrictionEntry;->g:Lo/QuickViewConstants;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Lo/QuickViewConstants;)V
    .locals 0

    monitor-enter p0

    .line 135
    :try_start_0
    iput-object p1, p0, Lo/RestrictionEntry;->g:Lo/QuickViewConstants;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Lo/SyncStatusInfo;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized c(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lo/UndoOwner;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lo/UndoOwner<",
            "TR;>;Z)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 p2, 0x1

    .line 233
    :try_start_0
    iput-boolean p2, p0, Lo/RestrictionEntry;->i:Z

    .line 234
    iput-object p1, p0, Lo/RestrictionEntry;->n:Lcom/bumptech/glide/load/engine/GlideException;

    .line 235
    iget-object p1, p0, Lo/RestrictionEntry;->c:Lo/RestrictionEntry$StateListAnimator;

    invoke-virtual {p1, p0}, Lo/RestrictionEntry$StateListAnimator;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 236
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized cancel(Z)Z
    .locals 2

    monitor-enter p0

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lo/RestrictionEntry;->isDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 84
    monitor-exit p0

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 86
    :try_start_1
    iput-boolean v0, p0, Lo/RestrictionEntry;->h:Z

    .line 87
    iget-object v1, p0, Lo/RestrictionEntry;->c:Lo/RestrictionEntry$StateListAnimator;

    invoke-virtual {v1, p0}, Lo/RestrictionEntry$StateListAnimator;->b(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 88
    iget-object p1, p0, Lo/RestrictionEntry;->g:Lo/QuickViewConstants;

    if-eqz p1, :cond_1

    .line 89
    iget-object p1, p0, Lo/RestrictionEntry;->g:Lo/QuickViewConstants;

    invoke-interface {p1}, Lo/QuickViewConstants;->b()V

    const/4 p1, 0x0

    .line 90
    iput-object p1, p0, Lo/RestrictionEntry;->g:Lo/QuickViewConstants;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public e(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public e(Lo/SyncStatusInfo;)V
    .locals 2

    .line 125
    iget v0, p0, Lo/RestrictionEntry;->a:I

    iget v1, p0, Lo/RestrictionEntry;->b:I

    invoke-interface {p1, v0, v1}, Lo/SyncStatusInfo;->c(II)V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 108
    :try_start_0
    invoke-direct {p0, v0}, Lo/RestrictionEntry;->e(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .line 117
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/RestrictionEntry;->e(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    monitor-enter p0

    .line 97
    :try_start_0
    iget-boolean v0, p0, Lo/RestrictionEntry;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    monitor-enter p0

    .line 102
    :try_start_0
    iget-boolean v0, p0, Lo/RestrictionEntry;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/RestrictionEntry;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/RestrictionEntry;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
