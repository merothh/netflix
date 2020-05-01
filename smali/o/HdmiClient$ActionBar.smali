.class Lo/HdmiClient$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/HdmiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/HdmiClient$ActionBar$Application;
    }
.end annotation


# instance fields
.field private a:Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroid/util/Pair<",
            "Lo/BrightnessChangeEvent<",
            "TT;>;",
            "Lo/HdmiTimerRecordSources;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:F

.field private final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic e:Lo/HdmiClient;

.field private f:I

.field private i:Lo/VendorTagDescriptorCache;

.field private j:Lo/HdmiClient$ActionBar$Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/HdmiClient<",
            "TK;TT;>.ActionBar.Application;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/HdmiClient;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lo/HdmiClient$ActionBar;->e:Lo/HdmiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-static {}, Lo/VerifierInfo;->e()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    iput-object p1, p0, Lo/HdmiClient$ActionBar;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 184
    iput-object p2, p0, Lo/HdmiClient$ActionBar;->d:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lo/HdmiClient$ActionBar;)Ljava/util/List;
    .locals 0

    .line 130
    invoke-direct {p0}, Lo/HdmiClient$ActionBar;->i()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 496
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 499
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private declared-synchronized a()Z
    .locals 2

    monitor-enter p0

    .line 359
    :try_start_0
    iget-object v0, p0, Lo/HdmiClient$ActionBar;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 360
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lo/HdmiTimerRecordSources;

    invoke-interface {v1}, Lo/HdmiTimerRecordSources;->h()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 361
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x1

    .line 364
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/InputManager;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 352
    :try_start_0
    iget-object v0, p0, Lo/HdmiClient$ActionBar;->i:Lo/VendorTagDescriptorCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 353
    monitor-exit p0

    return-object v0

    .line 355
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/HdmiClient$ActionBar;->i:Lo/VendorTagDescriptorCache;

    invoke-direct {p0}, Lo/HdmiClient$ActionBar;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/VendorTagDescriptorCache;->b(Z)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lo/HdmiClient$ActionBar;)Ljava/util/List;
    .locals 0

    .line 130
    invoke-direct {p0}, Lo/HdmiClient$ActionBar;->b()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/util/Pair;Lo/HdmiTimerRecordSources;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lo/BrightnessChangeEvent<",
            "TT;>;",
            "Lo/HdmiTimerRecordSources;",
            ">;",
            "Lo/HdmiTimerRecordSources;",
            ")V"
        }
    .end annotation

    .line 258
    new-instance v0, Lo/HdmiClient$ActionBar$3;

    invoke-direct {v0, p0, p1}, Lo/HdmiClient$ActionBar$3;-><init>(Lo/HdmiClient$ActionBar;Landroid/util/Pair;)V

    invoke-interface {p2, v0}, Lo/HdmiTimerRecordSources;->c(Lo/InputManager;)V

    return-void
.end method

.method private declared-synchronized c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/InputManager;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 369
    :try_start_0
    iget-object v0, p0, Lo/HdmiClient$ActionBar;->i:Lo/VendorTagDescriptorCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 370
    monitor-exit p0

    return-object v0

    .line 372
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/HdmiClient$ActionBar;->i:Lo/VendorTagDescriptorCache;

    .line 373
    invoke-direct {p0}, Lo/HdmiClient$ActionBar;->d()Z

    move-result v1

    .line 372
    invoke-virtual {v0, v1}, Lo/VendorTagDescriptorCache;->d(Z)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lo/HdmiClient$ActionBar;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lo/HdmiClient$ActionBar;->e()V

    return-void
.end method

.method static synthetic d(Lo/HdmiClient$ActionBar;)Lo/VendorTagDescriptorCache;
    .locals 0

    .line 130
    iget-object p0, p0, Lo/HdmiClient$ActionBar;->i:Lo/VendorTagDescriptorCache;

    return-object p0
.end method

.method private declared-synchronized d()Z
    .locals 2

    monitor-enter p0

    .line 377
    :try_start_0
    iget-object v0, p0, Lo/HdmiClient$ActionBar;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 378
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lo/HdmiTimerRecordSources;

    invoke-interface {v1}, Lo/HdmiTimerRecordSources;->f()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 379
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 382
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic e(Lo/HdmiClient$ActionBar;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 130
    iget-object p0, p0, Lo/HdmiClient$ActionBar;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method private e()V
    .locals 11

    .line 320
    monitor-enter p0

    .line 321
    :try_start_0
    iget-object v0, p0, Lo/HdmiClient$ActionBar;->i:Lo/VendorTagDescriptorCache;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/StringParceledListSlice;->a(Z)V

    .line 322
    iget-object v0, p0, Lo/HdmiClient$ActionBar;->j:Lo/HdmiClient$ActionBar$Application;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lo/StringParceledListSlice;->a(Z)V

    .line 325
    iget-object v0, p0, Lo/HdmiClient$ActionBar;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lo/HdmiClient$ActionBar;->e:Lo/HdmiClient;

    iget-object v1, p0, Lo/HdmiClient$ActionBar;->d:Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Lo/HdmiClient;->a(Lo/HdmiClient;Ljava/lang/Object;Lo/HdmiClient$ActionBar;)V

    .line 327
    monitor-exit p0

    return-void

    .line 330
    :cond_2
    iget-object v0, p0, Lo/HdmiClient$ActionBar;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lo/HdmiTimerRecordSources;

    .line 331
    new-instance v10, Lo/VendorTagDescriptorCache;

    .line 332
    invoke-interface {v0}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    .line 333
    invoke-interface {v0}, Lo/HdmiTimerRecordSources;->b()Ljava/lang/String;

    move-result-object v3

    .line 334
    invoke-interface {v0}, Lo/HdmiTimerRecordSources;->e()Lo/InputManagerInternal;

    move-result-object v4

    .line 335
    invoke-interface {v0}, Lo/HdmiTimerRecordSources;->c()Ljava/lang/Object;

    move-result-object v5

    .line 336
    invoke-interface {v0}, Lo/HdmiTimerRecordSources;->a()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v6

    .line 337
    invoke-direct {p0}, Lo/HdmiClient$ActionBar;->a()Z

    move-result v7

    .line 338
    invoke-direct {p0}, Lo/HdmiClient$ActionBar;->d()Z

    move-result v8

    .line 339
    invoke-direct {p0}, Lo/HdmiClient$ActionBar;->f()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v9

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lo/VendorTagDescriptorCache;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lo/InputManagerInternal;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;)V

    iput-object v10, p0, Lo/HdmiClient$ActionBar;->i:Lo/VendorTagDescriptorCache;

    .line 341
    new-instance v0, Lo/HdmiClient$ActionBar$Application;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/HdmiClient$ActionBar$Application;-><init>(Lo/HdmiClient$ActionBar;Lo/HdmiClient$3;)V

    iput-object v0, p0, Lo/HdmiClient$ActionBar;->j:Lo/HdmiClient$ActionBar$Application;

    .line 342
    iget-object v0, p0, Lo/HdmiClient$ActionBar;->i:Lo/VendorTagDescriptorCache;

    .line 343
    iget-object v1, p0, Lo/HdmiClient$ActionBar;->j:Lo/HdmiClient$ActionBar$Application;

    .line 344
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    iget-object v2, p0, Lo/HdmiClient$ActionBar;->e:Lo/HdmiClient;

    invoke-static {v2}, Lo/HdmiClient;->c(Lo/HdmiClient;)Lo/InputDeviceIdentifier;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lo/InputDeviceIdentifier;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    return-void

    :catchall_0
    move-exception v0

    .line 344
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized f()Lcom/facebook/imagepipeline/common/Priority;
    .locals 3

    monitor-enter p0

    .line 394
    :try_start_0
    sget-object v0, Lcom/facebook/imagepipeline/common/Priority;->b:Lcom/facebook/imagepipeline/common/Priority;

    .line 395
    iget-object v1, p0, Lo/HdmiClient$ActionBar;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 396
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lo/HdmiTimerRecordSources;

    invoke-interface {v2}, Lo/HdmiTimerRecordSources;->j()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/imagepipeline/common/Priority;->b(Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 398
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic h(Lo/HdmiClient$ActionBar;)Ljava/util/List;
    .locals 0

    .line 130
    invoke-direct {p0}, Lo/HdmiClient$ActionBar;->c()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized i()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/InputManager;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 387
    :try_start_0
    iget-object v0, p0, Lo/HdmiClient$ActionBar;->i:Lo/VendorTagDescriptorCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 388
    monitor-exit p0

    return-object v0

    .line 390
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/HdmiClient$ActionBar;->i:Lo/VendorTagDescriptorCache;

    invoke-direct {p0}, Lo/HdmiClient$ActionBar;->f()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/VendorTagDescriptorCache;->c(Lcom/facebook/imagepipeline/common/Priority;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lo/HdmiClient$ActionBar$Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/HdmiClient<",
            "TK;TT;>.ActionBar.Application;)V"
        }
    .end annotation

    .line 458
    monitor-enter p0

    .line 460
    :try_start_0
    iget-object v0, p0, Lo/HdmiClient$ActionBar;->j:Lo/HdmiClient$ActionBar$Application;

    if-eq v0, p1, :cond_0

    .line 461
    monitor-exit p0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 464
    iput-object p1, p0, Lo/HdmiClient$ActionBar;->j:Lo/HdmiClient$ActionBar$Application;

    .line 465
    iput-object p1, p0, Lo/HdmiClient$ActionBar;->i:Lo/VendorTagDescriptorCache;

    .line 466
    iget-object v0, p0, Lo/HdmiClient$ActionBar;->a:Ljava/io/Closeable;

    invoke-direct {p0, v0}, Lo/HdmiClient$ActionBar;->a(Ljava/io/Closeable;)V

    .line 467
    iput-object p1, p0, Lo/HdmiClient$ActionBar;->a:Ljava/io/Closeable;

    .line 468
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    invoke-direct {p0}, Lo/HdmiClient$ActionBar;->e()V

    return-void

    :catchall_0
    move-exception p1

    .line 468
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lo/HdmiClient$ActionBar$Application;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/HdmiClient<",
            "TK;TT;>.ActionBar.Application;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 403
    monitor-enter p0

    .line 405
    :try_start_0
    iget-object v0, p0, Lo/HdmiClient$ActionBar;->j:Lo/HdmiClient$ActionBar$Application;

    if-eq v0, p1, :cond_0

    .line 406
    monitor-exit p0

    return-void

    .line 409
    :cond_0
    iget-object p1, p0, Lo/HdmiClient$ActionBar;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 411
    iget-object v0, p0, Lo/HdmiClient$ActionBar;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 412
    iget-object v0, p0, Lo/HdmiClient$ActionBar;->e:Lo/HdmiClient;

    iget-object v1, p0, Lo/HdmiClient$ActionBar;->d:Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Lo/HdmiClient;->a(Lo/HdmiClient;Ljava/lang/Object;Lo/HdmiClient$ActionBar;)V

    .line 413
    iget-object v0, p0, Lo/HdmiClient$ActionBar;->a:Ljava/io/Closeable;

    invoke-direct {p0, v0}, Lo/HdmiClient$ActionBar;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 414
    iput-object v0, p0, Lo/HdmiClient$ActionBar;->a:Ljava/io/Closeable;

    .line 415
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 417
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 419
    monitor-enter v0

    .line 420
    :try_start_1
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lo/BrightnessChangeEvent;

    invoke-interface {v1, p2}, Lo/BrightnessChangeEvent;->e(Ljava/lang/Throwable;)V

    .line 421
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    return-void

    :catchall_1
    move-exception p1

    .line 415
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public a(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "TT;>;",
            "Lo/HdmiTimerRecordSources;",
            ")Z"
        }
    .end annotation

    .line 200
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 211
    monitor-enter p0

    .line 212
    :try_start_0
    iget-object v1, p0, Lo/HdmiClient$ActionBar;->e:Lo/HdmiClient;

    iget-object v2, p0, Lo/HdmiClient$ActionBar;->d:Ljava/lang/Object;

    invoke-static {v1, v2}, Lo/HdmiClient;->a(Lo/HdmiClient;Ljava/lang/Object;)Lo/HdmiClient$ActionBar;

    move-result-object v1

    if-eq v1, p0, :cond_0

    const/4 p1, 0x0

    .line 213
    monitor-exit p0

    return p1

    .line 215
    :cond_0
    iget-object v1, p0, Lo/HdmiClient$ActionBar;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-direct {p0}, Lo/HdmiClient$ActionBar;->b()Ljava/util/List;

    move-result-object v1

    .line 217
    invoke-direct {p0}, Lo/HdmiClient$ActionBar;->i()Ljava/util/List;

    move-result-object v2

    .line 218
    invoke-direct {p0}, Lo/HdmiClient$ActionBar;->c()Ljava/util/List;

    move-result-object v3

    .line 219
    iget-object v4, p0, Lo/HdmiClient$ActionBar;->a:Ljava/io/Closeable;

    .line 220
    iget v5, p0, Lo/HdmiClient$ActionBar;->c:F

    .line 221
    iget v6, p0, Lo/HdmiClient$ActionBar;->f:I

    .line 222
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 224
    invoke-static {v1}, Lo/VendorTagDescriptorCache;->b(Ljava/util/List;)V

    .line 225
    invoke-static {v2}, Lo/VendorTagDescriptorCache;->d(Ljava/util/List;)V

    .line 226
    invoke-static {v3}, Lo/VendorTagDescriptorCache;->c(Ljava/util/List;)V

    .line 228
    monitor-enter v0

    .line 230
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 231
    :try_start_2
    iget-object v1, p0, Lo/HdmiClient$ActionBar;->a:Ljava/io/Closeable;

    if-eq v4, v1, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 234
    iget-object v1, p0, Lo/HdmiClient$ActionBar;->e:Lo/HdmiClient;

    invoke-virtual {v1, v4}, Lo/HdmiClient;->e(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v4

    .line 236
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_4

    const/4 v1, 0x0

    cmpl-float v1, v5, v1

    if-lez v1, :cond_3

    .line 240
    :try_start_3
    invoke-interface {p1, v5}, Lo/BrightnessChangeEvent;->c(F)V

    .line 242
    :cond_3
    invoke-interface {p1, v4, v6}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    .line 243
    invoke-direct {p0, v4}, Lo/HdmiClient$ActionBar;->a(Ljava/io/Closeable;)V

    .line 245
    :cond_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 247
    invoke-direct {p0, v0, p2}, Lo/HdmiClient$ActionBar;->b(Landroid/util/Pair;Lo/HdmiTimerRecordSources;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 236
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :catchall_1
    move-exception p1

    .line 245
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 222
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method

.method public b(Lo/HdmiClient$ActionBar$Application;F)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/HdmiClient<",
            "TK;TT;>.ActionBar.Application;F)V"
        }
    .end annotation

    .line 475
    monitor-enter p0

    .line 477
    :try_start_0
    iget-object v0, p0, Lo/HdmiClient$ActionBar;->j:Lo/HdmiClient$ActionBar$Application;

    if-eq v0, p1, :cond_0

    .line 478
    monitor-exit p0

    return-void

    .line 481
    :cond_0
    iput p2, p0, Lo/HdmiClient$ActionBar;->c:F

    .line 482
    iget-object p1, p0, Lo/HdmiClient$ActionBar;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 483
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 485
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 487
    monitor-enter v0

    .line 488
    :try_start_1
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lo/BrightnessChangeEvent;

    invoke-interface {v1, p2}, Lo/BrightnessChangeEvent;->c(F)V

    .line 489
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    return-void

    :catchall_1
    move-exception p1

    .line 483
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public e(Lo/HdmiClient$ActionBar$Application;Ljava/io/Closeable;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/HdmiClient<",
            "TK;TT;>.ActionBar.Application;TT;I)V"
        }
    .end annotation

    .line 430
    monitor-enter p0

    .line 432
    :try_start_0
    iget-object v0, p0, Lo/HdmiClient$ActionBar;->j:Lo/HdmiClient$ActionBar$Application;

    if-eq v0, p1, :cond_0

    .line 433
    monitor-exit p0

    return-void

    .line 436
    :cond_0
    iget-object p1, p0, Lo/HdmiClient$ActionBar;->a:Ljava/io/Closeable;

    invoke-direct {p0, p1}, Lo/HdmiClient$ActionBar;->a(Ljava/io/Closeable;)V

    const/4 p1, 0x0

    .line 437
    iput-object p1, p0, Lo/HdmiClient$ActionBar;->a:Ljava/io/Closeable;

    .line 439
    iget-object p1, p0, Lo/HdmiClient$ActionBar;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 440
    invoke-static {p3}, Lo/CloseableLock;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lo/HdmiClient$ActionBar;->e:Lo/HdmiClient;

    invoke-virtual {v0, p2}, Lo/HdmiClient;->e(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    iput-object v0, p0, Lo/HdmiClient$ActionBar;->a:Ljava/io/Closeable;

    .line 442
    iput p3, p0, Lo/HdmiClient$ActionBar;->f:I

    goto :goto_0

    .line 444
    :cond_1
    iget-object v0, p0, Lo/HdmiClient$ActionBar;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 445
    iget-object v0, p0, Lo/HdmiClient$ActionBar;->e:Lo/HdmiClient;

    iget-object v1, p0, Lo/HdmiClient$ActionBar;->d:Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Lo/HdmiClient;->a(Lo/HdmiClient;Ljava/lang/Object;Lo/HdmiClient$ActionBar;)V

    .line 447
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 449
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 450
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 451
    monitor-enter v0

    .line 452
    :try_start_1
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lo/BrightnessChangeEvent;

    invoke-interface {v1, p2, p3}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    .line 453
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    return-void

    :catchall_1
    move-exception p1

    .line 447
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
