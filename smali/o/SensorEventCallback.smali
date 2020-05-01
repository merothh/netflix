.class public Lo/SensorEventCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/TriggerEventListener;
.implements Lo/SplitAssetDependencyLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SensorEventCallback$ActionBar;,
        Lo/SensorEventCallback$Activity;,
        Lo/SensorEventCallback$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/TriggerEventListener<",
        "TK;TV;>;",
        "Lo/SplitAssetDependencyLoader;"
    }
.end annotation


# instance fields
.field protected a:Lo/SystemSensorManager;

.field final b:Lo/SensorDirectChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SensorDirectChannel<",
            "TK;",
            "Lo/SensorEventCallback$ActionBar<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lo/SensorDirectChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SensorDirectChannel<",
            "TK;",
            "Lo/SensorEventCallback$ActionBar<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final e:Lo/CameraCaptureSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CameraCaptureSession<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final g:Lo/SensorEventCallback$Application;

.field private i:J

.field private final j:Lo/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UserInfo<",
            "Lo/SystemSensorManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/CameraCaptureSession;Lo/SensorEventCallback$Application;Lo/UserInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CameraCaptureSession<",
            "TV;>;",
            "Lo/SensorEventCallback$Application;",
            "Lo/UserInfo<",
            "Lo/SystemSensorManager;",
            ">;)V"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lo/SensorEventCallback;->c:Ljava/util/Map;

    .line 124
    iput-object p1, p0, Lo/SensorEventCallback;->e:Lo/CameraCaptureSession;

    .line 125
    new-instance v0, Lo/SensorDirectChannel;

    invoke-direct {p0, p1}, Lo/SensorEventCallback;->c(Lo/CameraCaptureSession;)Lo/CameraCaptureSession;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/SensorDirectChannel;-><init>(Lo/CameraCaptureSession;)V

    iput-object v0, p0, Lo/SensorEventCallback;->d:Lo/SensorDirectChannel;

    .line 126
    new-instance v0, Lo/SensorDirectChannel;

    invoke-direct {p0, p1}, Lo/SensorEventCallback;->c(Lo/CameraCaptureSession;)Lo/CameraCaptureSession;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/SensorDirectChannel;-><init>(Lo/CameraCaptureSession;)V

    iput-object v0, p0, Lo/SensorEventCallback;->b:Lo/SensorDirectChannel;

    .line 127
    iput-object p2, p0, Lo/SensorEventCallback;->g:Lo/SensorEventCallback$Application;

    .line 128
    iput-object p3, p0, Lo/SensorEventCallback;->j:Lo/UserInfo;

    .line 129
    iget-object p1, p0, Lo/SensorEventCallback;->j:Lo/UserInfo;

    invoke-interface {p1}, Lo/UserInfo;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/SystemSensorManager;

    iput-object p1, p0, Lo/SensorEventCallback;->a:Lo/SystemSensorManager;

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lo/SensorEventCallback;->i:J

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/SensorEventCallback$ActionBar<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 441
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SensorEventCallback$ActionBar;

    .line 442
    invoke-static {v0}, Lo/SensorEventCallback;->e(Lo/SensorEventCallback$ActionBar;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized a(Lo/SensorEventCallback$ActionBar;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SensorEventCallback$ActionBar<",
            "TK;TV;>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 257
    :try_start_0
    iget-boolean v0, p1, Lo/SensorEventCallback$ActionBar;->b:Z

    if-nez v0, :cond_0

    iget v0, p1, Lo/SensorEventCallback$ActionBar;->d:I

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lo/SensorEventCallback;->d:Lo/SensorDirectChannel;

    iget-object v1, p1, Lo/SensorEventCallback$ActionBar;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lo/SensorDirectChannel;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 259
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 261
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b()V
    .locals 4

    .line 387
    monitor-enter p0

    .line 388
    :try_start_0
    iget-object v0, p0, Lo/SensorEventCallback;->a:Lo/SystemSensorManager;

    iget v0, v0, Lo/SystemSensorManager;->d:I

    iget-object v1, p0, Lo/SensorEventCallback;->a:Lo/SystemSensorManager;

    iget v1, v1, Lo/SystemSensorManager;->e:I

    .line 390
    invoke-virtual {p0}, Lo/SensorEventCallback;->c()I

    move-result v2

    sub-int/2addr v1, v2

    .line 388
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 391
    iget-object v1, p0, Lo/SensorEventCallback;->a:Lo/SystemSensorManager;

    iget v1, v1, Lo/SystemSensorManager;->a:I

    iget-object v2, p0, Lo/SensorEventCallback;->a:Lo/SystemSensorManager;

    iget v2, v2, Lo/SystemSensorManager;->b:I

    .line 393
    invoke-virtual {p0}, Lo/SensorEventCallback;->e()I

    move-result v3

    sub-int/2addr v2, v3

    .line 391
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 394
    invoke-direct {p0, v0, v1}, Lo/SensorEventCallback;->c(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 395
    invoke-direct {p0, v0}, Lo/SensorEventCallback;->c(Ljava/util/ArrayList;)V

    .line 396
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    invoke-direct {p0, v0}, Lo/SensorEventCallback;->d(Ljava/util/ArrayList;)V

    .line 398
    invoke-direct {p0, v0}, Lo/SensorEventCallback;->a(Ljava/util/ArrayList;)V

    return-void

    :catchall_0
    move-exception v0

    .line 396
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Lo/SensorEventCallback$ActionBar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SensorEventCallback$ActionBar<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 241
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    monitor-enter p0

    .line 245
    :try_start_0
    invoke-direct {p0, p1}, Lo/SensorEventCallback;->g(Lo/SensorEventCallback$ActionBar;)V

    .line 246
    invoke-direct {p0, p1}, Lo/SensorEventCallback;->a(Lo/SensorEventCallback$ActionBar;)Z

    move-result v0

    .line 247
    invoke-direct {p0, p1}, Lo/SensorEventCallback;->f(Lo/SensorEventCallback$ActionBar;)Lo/CompatibilityInfo;

    move-result-object v1

    .line 248
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-static {v1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 250
    :goto_0
    invoke-static {p1}, Lo/SensorEventCallback;->d(Lo/SensorEventCallback$ActionBar;)V

    .line 251
    invoke-direct {p0}, Lo/SensorEventCallback;->d()V

    .line 252
    invoke-direct {p0}, Lo/SensorEventCallback;->b()V

    return-void

    :catchall_0
    move-exception p1

    .line 248
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized c(II)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lo/SensorEventCallback$ActionBar<",
            "TK;TV;>;>;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 410
    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 411
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 413
    iget-object v0, p0, Lo/SensorEventCallback;->d:Lo/SensorDirectChannel;

    invoke-virtual {v0}, Lo/SensorDirectChannel;->e()I

    move-result v0

    if-gt v0, p1, :cond_0

    iget-object v0, p0, Lo/SensorEventCallback;->d:Lo/SensorDirectChannel;

    invoke-virtual {v0}, Lo/SensorDirectChannel;->a()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, p2, :cond_0

    const/4 p1, 0x0

    .line 414
    monitor-exit p0

    return-object p1

    .line 416
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 417
    :goto_0
    iget-object v1, p0, Lo/SensorEventCallback;->d:Lo/SensorDirectChannel;

    invoke-virtual {v1}, Lo/SensorDirectChannel;->e()I

    move-result v1

    if-gt v1, p1, :cond_2

    iget-object v1, p0, Lo/SensorEventCallback;->d:Lo/SensorDirectChannel;

    invoke-virtual {v1}, Lo/SensorDirectChannel;->a()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-le v1, p2, :cond_1

    goto :goto_1

    .line 422
    :cond_1
    monitor-exit p0

    return-object v0

    .line 418
    :cond_2
    :goto_1
    :try_start_2
    iget-object v1, p0, Lo/SensorEventCallback;->d:Lo/SensorDirectChannel;

    invoke-virtual {v1}, Lo/SensorDirectChannel;->b()Ljava/lang/Object;

    move-result-object v1

    .line 419
    iget-object v2, p0, Lo/SensorEventCallback;->d:Lo/SensorDirectChannel;

    invoke-virtual {v2, v1}, Lo/SensorDirectChannel;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v2, p0, Lo/SensorEventCallback;->b:Lo/SensorDirectChannel;

    invoke-virtual {v2, v1}, Lo/SensorDirectChannel;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private c(Lo/CameraCaptureSession;)Lo/CameraCaptureSession;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CameraCaptureSession<",
            "TV;>;)",
            "Lo/CameraCaptureSession<",
            "Lo/SensorEventCallback$ActionBar<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 135
    new-instance v0, Lo/SensorEventCallback$1;

    invoke-direct {v0, p0, p1}, Lo/SensorEventCallback$1;-><init>(Lo/SensorEventCallback;Lo/CameraCaptureSession;)V

    return-object v0
.end method

.method private declared-synchronized c(Lo/SensorEventCallback$ActionBar;)Lo/CompatibilityInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SensorEventCallback$ActionBar<",
            "TK;TV;>;)",
            "Lo/CompatibilityInfo<",
            "TV;>;"
        }
    .end annotation

    monitor-enter p0

    .line 228
    :try_start_0
    invoke-direct {p0, p1}, Lo/SensorEventCallback;->h(Lo/SensorEventCallback$ActionBar;)V

    .line 229
    iget-object v0, p1, Lo/SensorEventCallback$ActionBar;->c:Lo/CompatibilityInfo;

    .line 230
    invoke-virtual {v0}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lo/SensorEventCallback$5;

    invoke-direct {v1, p0, p1}, Lo/SensorEventCallback$5;-><init>(Lo/SensorEventCallback;Lo/SensorEventCallback$ActionBar;)V

    .line 229
    invoke-static {v0, v1}, Lo/CompatibilityInfo;->c(Ljava/lang/Object;Lo/ConfigurationBoundResourceCache;)Lo/CompatibilityInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized c(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/SensorEventCallback$ActionBar<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 462
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SensorEventCallback$ActionBar;

    .line 463
    invoke-direct {p0, v0}, Lo/SensorEventCallback;->j(Lo/SensorEventCallback$ActionBar;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 466
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized c(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Lo/SensorEventCallback;->e:Lo/CameraCaptureSession;

    invoke-interface {v0, p1}, Lo/CameraCaptureSession;->d(Ljava/lang/Object;)I

    move-result p1

    .line 198
    iget-object v0, p0, Lo/SensorEventCallback;->a:Lo/SystemSensorManager;

    iget v0, v0, Lo/SystemSensorManager;->c:I

    const/4 v1, 0x1

    if-gt p1, v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lo/SensorEventCallback;->c()I

    move-result v0

    iget-object v2, p0, Lo/SensorEventCallback;->a:Lo/SystemSensorManager;

    iget v2, v2, Lo/SystemSensorManager;->e:I

    sub-int/2addr v2, v1

    if-gt v0, v2, :cond_0

    .line 200
    invoke-virtual {p0}, Lo/SensorEventCallback;->e()I

    move-result v0

    iget-object v2, p0, Lo/SensorEventCallback;->a:Lo/SystemSensorManager;

    iget v2, v2, Lo/SystemSensorManager;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, p1

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 198
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized d()V
    .locals 5

    monitor-enter p0

    .line 371
    :try_start_0
    iget-wide v0, p0, Lo/SensorEventCallback;->i:J

    iget-object v2, p0, Lo/SensorEventCallback;->a:Lo/SystemSensorManager;

    iget-wide v2, v2, Lo/SystemSensorManager;->i:J

    add-long/2addr v0, v2

    .line 372
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 373
    monitor-exit p0

    return-void

    .line 375
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/SensorEventCallback;->i:J

    .line 376
    iget-object v0, p0, Lo/SensorEventCallback;->j:Lo/UserInfo;

    invoke-interface {v0}, Lo/UserInfo;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SystemSensorManager;

    iput-object v0, p0, Lo/SensorEventCallback;->a:Lo/SystemSensorManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/SensorEventCallback$ActionBar<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 433
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SensorEventCallback$ActionBar;

    .line 434
    invoke-direct {p0, v0}, Lo/SensorEventCallback;->f(Lo/SensorEventCallback$ActionBar;)Lo/CompatibilityInfo;

    move-result-object v0

    invoke-static {v0}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static d(Lo/SensorEventCallback$ActionBar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/SensorEventCallback$ActionBar<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 454
    iget-object v0, p0, Lo/SensorEventCallback$ActionBar;->a:Lo/SensorEventCallback$Activity;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lo/SensorEventCallback$ActionBar;->a:Lo/SensorEventCallback$Activity;

    iget-object p0, p0, Lo/SensorEventCallback$ActionBar;->e:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lo/SensorEventCallback$Activity;->c(Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method private static e(Lo/SensorEventCallback$ActionBar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/SensorEventCallback$ActionBar<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 448
    iget-object v0, p0, Lo/SensorEventCallback$ActionBar;->a:Lo/SensorEventCallback$Activity;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lo/SensorEventCallback$ActionBar;->a:Lo/SensorEventCallback$Activity;

    iget-object p0, p0, Lo/SensorEventCallback$ActionBar;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lo/SensorEventCallback$Activity;->c(Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lo/SensorEventCallback;Lo/SensorEventCallback$ActionBar;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lo/SensorEventCallback;->b(Lo/SensorEventCallback$ActionBar;)V

    return-void
.end method

.method private declared-synchronized f(Lo/SensorEventCallback$ActionBar;)Lo/CompatibilityInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SensorEventCallback$ActionBar<",
            "TK;TV;>;)",
            "Lo/CompatibilityInfo<",
            "TV;>;"
        }
    .end annotation

    monitor-enter p0

    .line 492
    :try_start_0
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-boolean v0, p1, Lo/SensorEventCallback$ActionBar;->b:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lo/SensorEventCallback$ActionBar;->d:I

    if-nez v0, :cond_0

    iget-object p1, p1, Lo/SensorEventCallback$ActionBar;->c:Lo/CompatibilityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized g(Lo/SensorEventCallback$ActionBar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SensorEventCallback$ActionBar<",
            "TK;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 484
    :try_start_0
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    iget v0, p1, Lo/SensorEventCallback$ActionBar;->d:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/StringParceledListSlice;->c(Z)V

    .line 486
    iget v0, p1, Lo/SensorEventCallback$ActionBar;->d:I

    sub-int/2addr v0, v1

    iput v0, p1, Lo/SensorEventCallback$ActionBar;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized h(Lo/SensorEventCallback$ActionBar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SensorEventCallback$ActionBar<",
            "TK;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 477
    :try_start_0
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-boolean v0, p1, Lo/SensorEventCallback$ActionBar;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/StringParceledListSlice;->c(Z)V

    .line 479
    iget v0, p1, Lo/SensorEventCallback$ActionBar;->d:I

    add-int/2addr v0, v1

    iput v0, p1, Lo/SensorEventCallback$ActionBar;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized j(Lo/SensorEventCallback$ActionBar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SensorEventCallback$ActionBar<",
            "TK;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 470
    :try_start_0
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-boolean v0, p1, Lo/SensorEventCallback$ActionBar;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/StringParceledListSlice;->c(Z)V

    .line 472
    iput-boolean v1, p1, Lo/SensorEventCallback$ActionBar;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lo/CompatibilityInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lo/CompatibilityInfo<",
            "TV;>;"
        }
    .end annotation

    .line 210
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    monitor-enter p0

    .line 214
    :try_start_0
    iget-object v0, p0, Lo/SensorEventCallback;->d:Lo/SensorDirectChannel;

    invoke-virtual {v0, p1}, Lo/SensorDirectChannel;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SensorEventCallback$ActionBar;

    .line 215
    iget-object v1, p0, Lo/SensorEventCallback;->b:Lo/SensorDirectChannel;

    invoke-virtual {v1, p1}, Lo/SensorDirectChannel;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/SensorEventCallback$ActionBar;

    if-eqz p1, :cond_0

    .line 217
    invoke-direct {p0, p1}, Lo/SensorEventCallback;->c(Lo/SensorEventCallback$ActionBar;)Lo/CompatibilityInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 219
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-static {v0}, Lo/SensorEventCallback;->e(Lo/SensorEventCallback$ActionBar;)V

    .line 221
    invoke-direct {p0}, Lo/SensorEventCallback;->d()V

    .line 222
    invoke-direct {p0}, Lo/SensorEventCallback;->b()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 219
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/Object;Lo/CompatibilityInfo;)Lo/CompatibilityInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lo/CompatibilityInfo<",
            "TV;>;)",
            "Lo/CompatibilityInfo<",
            "TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0, p1, p2, v0}, Lo/SensorEventCallback;->e(Ljava/lang/Object;Lo/CompatibilityInfo;Lo/SensorEventCallback$Activity;)Lo/CompatibilityInfo;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/facebook/common/memory/MemoryTrimType;)V
    .locals 6

    .line 354
    iget-object v0, p0, Lo/SensorEventCallback;->g:Lo/SensorEventCallback$Application;

    invoke-interface {v0, p1}, Lo/SensorEventCallback$Application;->b(Lcom/facebook/common/memory/MemoryTrimType;)D

    move-result-wide v0

    .line 355
    monitor-enter p0

    .line 356
    :try_start_0
    iget-object p1, p0, Lo/SensorEventCallback;->b:Lo/SensorDirectChannel;

    invoke-virtual {p1}, Lo/SensorDirectChannel;->a()I

    move-result p1

    int-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    mul-double v2, v2, v4

    double-to-int p1, v2

    const/4 v0, 0x0

    .line 357
    invoke-virtual {p0}, Lo/SensorEventCallback;->e()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const v0, 0x7fffffff

    .line 358
    invoke-direct {p0, v0, p1}, Lo/SensorEventCallback;->c(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 359
    invoke-direct {p0, p1}, Lo/SensorEventCallback;->c(Ljava/util/ArrayList;)V

    .line 360
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    invoke-direct {p0, p1}, Lo/SensorEventCallback;->d(Ljava/util/ArrayList;)V

    .line 362
    invoke-direct {p0, p1}, Lo/SensorEventCallback;->a(Ljava/util/ArrayList;)V

    .line 363
    invoke-direct {p0}, Lo/SensorEventCallback;->d()V

    .line 364
    invoke-direct {p0}, Lo/SensorEventCallback;->b()V

    return-void

    :catchall_0
    move-exception p1

    .line 360
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized c()I
    .locals 2

    monitor-enter p0

    .line 508
    :try_start_0
    iget-object v0, p0, Lo/SensorEventCallback;->b:Lo/SensorDirectChannel;

    invoke-virtual {v0}, Lo/SensorDirectChannel;->e()I

    move-result v0

    iget-object v1, p0, Lo/SensorEventCallback;->d:Lo/SensorDirectChannel;

    invoke-virtual {v1}, Lo/SensorDirectChannel;->e()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()I
    .locals 2

    monitor-enter p0

    .line 513
    :try_start_0
    iget-object v0, p0, Lo/SensorEventCallback;->b:Lo/SensorDirectChannel;

    invoke-virtual {v0}, Lo/SensorDirectChannel;->a()I

    move-result v0

    iget-object v1, p0, Lo/SensorEventCallback;->d:Lo/SensorDirectChannel;

    invoke-virtual {v1}, Lo/SensorDirectChannel;->a()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e(Ljava/lang/Object;Lo/CompatibilityInfo;Lo/SensorEventCallback$Activity;)Lo/CompatibilityInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lo/CompatibilityInfo<",
            "TV;>;",
            "Lo/SensorEventCallback$Activity<",
            "TK;>;)",
            "Lo/CompatibilityInfo<",
            "TV;>;"
        }
    .end annotation

    .line 165
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {p2}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-direct {p0}, Lo/SensorEventCallback;->d()V

    .line 173
    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Lo/SensorEventCallback;->d:Lo/SensorDirectChannel;

    invoke-virtual {v0, p1}, Lo/SensorDirectChannel;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SensorEventCallback$ActionBar;

    .line 176
    iget-object v1, p0, Lo/SensorEventCallback;->b:Lo/SensorDirectChannel;

    invoke-virtual {v1, p1}, Lo/SensorDirectChannel;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/SensorEventCallback$ActionBar;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 178
    invoke-direct {p0, v1}, Lo/SensorEventCallback;->j(Lo/SensorEventCallback$ActionBar;)V

    .line 179
    invoke-direct {p0, v1}, Lo/SensorEventCallback;->f(Lo/SensorEventCallback$ActionBar;)Lo/CompatibilityInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 182
    :goto_0
    invoke-virtual {p2}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lo/SensorEventCallback;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    invoke-static {p1, p2, p3}, Lo/SensorEventCallback$ActionBar;->b(Ljava/lang/Object;Lo/CompatibilityInfo;Lo/SensorEventCallback$Activity;)Lo/SensorEventCallback$ActionBar;

    move-result-object p2

    .line 184
    iget-object p3, p0, Lo/SensorEventCallback;->b:Lo/SensorDirectChannel;

    invoke-virtual {p3, p1, p2}, Lo/SensorDirectChannel;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-direct {p0, p2}, Lo/SensorEventCallback;->c(Lo/SensorEventCallback$ActionBar;)Lo/CompatibilityInfo;

    move-result-object v2

    .line 187
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    invoke-static {v1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    .line 189
    invoke-static {v0}, Lo/SensorEventCallback;->e(Lo/SensorEventCallback$ActionBar;)V

    .line 191
    invoke-direct {p0}, Lo/SensorEventCallback;->b()V

    return-object v2

    :catchall_0
    move-exception p1

    .line 187
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
