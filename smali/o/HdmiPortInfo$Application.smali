.class Lo/HdmiPortInfo$Application;
.super Lo/TaskSingleDrainer;
.source ""

# interfaces
.implements Lo/GeofenceHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/HdmiPortInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/TaskSingleDrainer<",
        "Lo/CompatibilityInfo<",
        "Lo/LegacyRequestMapper;",
        ">;",
        "Lo/CompatibilityInfo<",
        "Lo/LegacyRequestMapper;",
        ">;>;",
        "Lo/GeofenceHardware;"
    }
.end annotation


# instance fields
.field private a:Lo/CompatibilityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field final synthetic e:Lo/HdmiPortInfo;


# direct methods
.method private constructor <init>(Lo/HdmiPortInfo;Lo/HdmiPortInfo$ActionBar;Lo/GeofenceHardwareMonitorCallback;Lo/HdmiTimerRecordSources;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lo/HdmiPortInfo$Application;->e:Lo/HdmiPortInfo;

    .line 342
    invoke-direct {p0, p2}, Lo/TaskSingleDrainer;-><init>(Lo/BrightnessChangeEvent;)V

    const/4 p2, 0x0

    .line 332
    iput-boolean p2, p0, Lo/HdmiPortInfo$Application;->c:Z

    const/4 p2, 0x0

    .line 334
    iput-object p2, p0, Lo/HdmiPortInfo$Application;->a:Lo/CompatibilityInfo;

    .line 343
    invoke-interface {p3, p0}, Lo/GeofenceHardwareMonitorCallback;->d(Lo/GeofenceHardware;)V

    .line 344
    new-instance p2, Lo/HdmiPortInfo$Application$3;

    invoke-direct {p2, p0, p1}, Lo/HdmiPortInfo$Application$3;-><init>(Lo/HdmiPortInfo$Application;Lo/HdmiPortInfo;)V

    invoke-interface {p4, p2}, Lo/HdmiTimerRecordSources;->c(Lo/InputManager;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/HdmiPortInfo;Lo/HdmiPortInfo$ActionBar;Lo/GeofenceHardwareMonitorCallback;Lo/HdmiTimerRecordSources;Lo/HdmiPortInfo$3;)V
    .locals 0

    .line 328
    invoke-direct {p0, p1, p2, p3, p4}, Lo/HdmiPortInfo$Application;-><init>(Lo/HdmiPortInfo;Lo/HdmiPortInfo$ActionBar;Lo/GeofenceHardwareMonitorCallback;Lo/HdmiTimerRecordSources;)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 388
    monitor-enter p0

    .line 389
    :try_start_0
    iget-boolean v0, p0, Lo/HdmiPortInfo$Application;->c:Z

    if-eqz v0, :cond_0

    .line 390
    monitor-exit p0

    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lo/HdmiPortInfo$Application;->a:Lo/CompatibilityInfo;

    invoke-static {v0}, Lo/CompatibilityInfo;->d(Lo/CompatibilityInfo;)Lo/CompatibilityInfo;

    move-result-object v0

    .line 393
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 395
    :try_start_1
    invoke-virtual {p0}, Lo/HdmiPortInfo$Application;->d()Lo/BrightnessChangeEvent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    invoke-static {v0}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    throw v1

    :catchall_1
    move-exception v0

    .line 393
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method static synthetic a(Lo/HdmiPortInfo$Application;)Z
    .locals 0

    .line 328
    invoke-direct {p0}, Lo/HdmiPortInfo$Application;->b()Z

    move-result p0

    return p0
.end method

.method private b()Z
    .locals 2

    .line 415
    monitor-enter p0

    .line 416
    :try_start_0
    iget-boolean v0, p0, Lo/HdmiPortInfo$Application;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 417
    monitor-exit p0

    return v0

    .line 419
    :cond_0
    iget-object v0, p0, Lo/HdmiPortInfo$Application;->a:Lo/CompatibilityInfo;

    const/4 v1, 0x0

    .line 420
    iput-object v1, p0, Lo/HdmiPortInfo$Application;->a:Lo/CompatibilityInfo;

    const/4 v1, 0x1

    .line 421
    iput-boolean v1, p0, Lo/HdmiPortInfo$Application;->c:Z

    .line 422
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    invoke-static {v0}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    return v1

    :catchall_0
    move-exception v0

    .line 422
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private d(Lo/CompatibilityInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;)V"
        }
    .end annotation

    .line 403
    monitor-enter p0

    .line 404
    :try_start_0
    iget-boolean v0, p0, Lo/HdmiPortInfo$Application;->c:Z

    if-eqz v0, :cond_0

    .line 405
    monitor-exit p0

    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lo/HdmiPortInfo$Application;->a:Lo/CompatibilityInfo;

    .line 408
    invoke-static {p1}, Lo/CompatibilityInfo;->d(Lo/CompatibilityInfo;)Lo/CompatibilityInfo;

    move-result-object p1

    iput-object p1, p0, Lo/HdmiPortInfo$Application;->a:Lo/CompatibilityInfo;

    .line 409
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    invoke-static {v0}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    return-void

    :catchall_0
    move-exception p1

    .line 409
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method protected b(Ljava/lang/Throwable;)V
    .locals 1

    .line 369
    invoke-direct {p0}, Lo/HdmiPortInfo$Application;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p0}, Lo/HdmiPortInfo$Application;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/BrightnessChangeEvent;->e(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method protected synthetic c(Ljava/lang/Object;I)V
    .locals 0

    .line 328
    check-cast p1, Lo/CompatibilityInfo;

    invoke-virtual {p0, p1, p2}, Lo/HdmiPortInfo$Application;->e(Lo/CompatibilityInfo;I)V

    return-void
.end method

.method protected e()V
    .locals 1

    .line 376
    invoke-direct {p0}, Lo/HdmiPortInfo$Application;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p0}, Lo/HdmiPortInfo$Application;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0}, Lo/BrightnessChangeEvent;->c()V

    :cond_0
    return-void
.end method

.method protected e(Lo/CompatibilityInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;I)V"
        }
    .end annotation

    .line 360
    invoke-static {p2}, Lo/HdmiPortInfo$Application;->c(I)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 363
    :cond_0
    invoke-direct {p0, p1}, Lo/HdmiPortInfo$Application;->d(Lo/CompatibilityInfo;)V

    .line 364
    invoke-direct {p0}, Lo/HdmiPortInfo$Application;->a()V

    return-void
.end method
