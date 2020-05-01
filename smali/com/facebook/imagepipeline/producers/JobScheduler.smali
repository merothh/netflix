.class public Lcom/facebook/imagepipeline/producers/JobScheduler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;,
        Lcom/facebook/imagepipeline/producers/JobScheduler$TaskDescription;,
        Lcom/facebook/imagepipeline/producers/JobScheduler$StateListAnimator;
    }
.end annotation


# instance fields
.field a:I

.field b:Lo/LegacyFaceDetectMapper;

.field c:J

.field d:J

.field e:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

.field private final f:Ljava/lang/Runnable;

.field private final g:Lcom/facebook/imagepipeline/producers/JobScheduler$TaskDescription;

.field private final h:Ljava/lang/Runnable;

.field private final i:Ljava/util/concurrent/Executor;

.field private final j:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/JobScheduler$TaskDescription;I)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->i:Ljava/util/concurrent/Executor;

    .line 68
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->g:Lcom/facebook/imagepipeline/producers/JobScheduler$TaskDescription;

    .line 69
    iput p3, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->j:I

    .line 70
    new-instance p1, Lcom/facebook/imagepipeline/producers/JobScheduler$5;

    invoke-direct {p1, p0}, Lcom/facebook/imagepipeline/producers/JobScheduler$5;-><init>(Lcom/facebook/imagepipeline/producers/JobScheduler;)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->h:Ljava/lang/Runnable;

    .line 76
    new-instance p1, Lcom/facebook/imagepipeline/producers/JobScheduler$3;

    invoke-direct {p1, p0}, Lcom/facebook/imagepipeline/producers/JobScheduler$3;-><init>(Lcom/facebook/imagepipeline/producers/JobScheduler;)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->f:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->b:Lo/LegacyFaceDetectMapper;

    const/4 p1, 0x0

    .line 83
    iput p1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->a:I

    .line 84
    sget-object p1, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->c:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->e:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    const-wide/16 p1, 0x0

    .line 85
    iput-wide p1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->c:J

    .line 86
    iput-wide p1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->d:J

    return-void
.end method

.method private b()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->i:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->h:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static b(Lo/LegacyFaceDetectMapper;I)Z
    .locals 1

    .line 232
    invoke-static {p1}, Lo/CloseableLock;->e(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    .line 233
    invoke-static {p1, v0}, Lo/CloseableLock;->b(II)Z

    move-result p1

    if-nez p1, :cond_1

    .line 234
    invoke-static {p0}, Lo/LegacyFaceDetectMapper;->c(Lo/LegacyFaceDetectMapper;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private c()V
    .locals 5

    .line 187
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 190
    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->b:Lo/LegacyFaceDetectMapper;

    .line 192
    iget v3, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->a:I

    const/4 v4, 0x0

    .line 193
    iput-object v4, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->b:Lo/LegacyFaceDetectMapper;

    const/4 v4, 0x0

    .line 194
    iput v4, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->a:I

    .line 195
    sget-object v4, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->d:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    iput-object v4, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->e:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    .line 196
    iput-wide v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->d:J

    .line 197
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 201
    :try_start_1
    invoke-static {v2, v3}, Lcom/facebook/imagepipeline/producers/JobScheduler;->b(Lo/LegacyFaceDetectMapper;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->g:Lcom/facebook/imagepipeline/producers/JobScheduler$TaskDescription;

    invoke-interface {v0, v2, v3}, Lcom/facebook/imagepipeline/producers/JobScheduler$TaskDescription;->e(Lo/LegacyFaceDetectMapper;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    :cond_0
    invoke-static {v2}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V

    .line 206
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->g()V

    return-void

    :catchall_0
    move-exception v0

    .line 205
    invoke-static {v2}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V

    .line 206
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->g()V

    throw v0

    :catchall_1
    move-exception v0

    .line 197
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/producers/JobScheduler;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->c()V

    return-void
.end method

.method private d(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 176
    invoke-static {}, Lcom/facebook/imagepipeline/producers/JobScheduler$StateListAnimator;->b()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->f:Ljava/lang/Runnable;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->f:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/facebook/imagepipeline/producers/JobScheduler;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->b()V

    return-void
.end method

.method private g()V
    .locals 6

    .line 211
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 214
    monitor-enter p0

    .line 215
    :try_start_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->e:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    sget-object v3, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->b:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    if-ne v2, v3, :cond_0

    .line 216
    iget-wide v2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->d:J

    iget v4, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->j:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const/4 v4, 0x1

    .line 218
    iput-wide v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->c:J

    .line 219
    sget-object v5, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->e:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    iput-object v5, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->e:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    goto :goto_0

    .line 221
    :cond_0
    sget-object v2, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->c:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    iput-object v2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->e:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 223
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    sub-long/2addr v2, v0

    .line 225
    invoke-direct {p0, v2, v3}, Lcom/facebook/imagepipeline/producers/JobScheduler;->d(J)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 223
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->b:Lo/LegacyFaceDetectMapper;

    const/4 v1, 0x0

    .line 99
    iput-object v1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->b:Lo/LegacyFaceDetectMapper;

    const/4 v1, 0x0

    .line 100
    iput v1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->a:I

    .line 101
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-static {v0}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V

    return-void

    :catchall_0
    move-exception v0

    .line 101
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lo/LegacyFaceDetectMapper;I)Z
    .locals 1

    .line 115
    invoke-static {p1, p2}, Lcom/facebook/imagepipeline/producers/JobScheduler;->b(Lo/LegacyFaceDetectMapper;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 119
    :cond_0
    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->b:Lo/LegacyFaceDetectMapper;

    .line 121
    invoke-static {p1}, Lo/LegacyFaceDetectMapper;->b(Lo/LegacyFaceDetectMapper;)Lo/LegacyFaceDetectMapper;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->b:Lo/LegacyFaceDetectMapper;

    .line 122
    iput p2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->a:I

    .line 123
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-static {v0}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 123
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d()Z
    .locals 7

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->b:Lo/LegacyFaceDetectMapper;

    iget v3, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->a:I

    invoke-static {v2, v3}, Lcom/facebook/imagepipeline/producers/JobScheduler;->b(Lo/LegacyFaceDetectMapper;I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 145
    monitor-exit p0

    return v3

    .line 147
    :cond_0
    sget-object v2, Lcom/facebook/imagepipeline/producers/JobScheduler$2;->e:[I

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->e:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    invoke-virtual {v4}, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->ordinal()I

    move-result v4

    aget v2, v2, v4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    goto :goto_0

    .line 158
    :cond_1
    sget-object v2, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->b:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    iput-object v2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->e:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    :cond_2
    :goto_0
    const-wide/16 v5, 0x0

    goto :goto_1

    .line 149
    :cond_3
    iget-wide v2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->d:J

    iget v5, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->j:I

    int-to-long v5, v5

    add-long/2addr v2, v5

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 151
    iput-wide v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->c:J

    .line 152
    sget-object v2, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->e:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    iput-object v2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->e:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    const/4 v3, 0x1

    .line 164
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_4

    sub-long/2addr v5, v0

    .line 166
    invoke-direct {p0, v5, v6}, Lcom/facebook/imagepipeline/producers/JobScheduler;->d(J)V

    :cond_4
    return v4

    :catchall_0
    move-exception v0

    .line 164
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized e()J
    .locals 4

    monitor-enter p0

    .line 243
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->d:J

    iget-wide v2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
