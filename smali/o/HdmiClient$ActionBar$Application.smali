.class Lo/HdmiClient$ActionBar$Application;
.super Lo/CloseableLock;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/HdmiClient$ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/CloseableLock<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/HdmiClient$ActionBar;


# direct methods
.method private constructor <init>(Lo/HdmiClient$ActionBar;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lo/HdmiClient$ActionBar$Application;->c:Lo/HdmiClient$ActionBar;

    invoke-direct {p0}, Lo/CloseableLock;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/HdmiClient$ActionBar;Lo/HdmiClient$3;)V
    .locals 0

    .line 506
    invoke-direct {p0, p1}, Lo/HdmiClient$ActionBar$Application;-><init>(Lo/HdmiClient$ActionBar;)V

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/Throwable;)V
    .locals 1

    .line 524
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MultiplexProducer#onFailure"

    .line 525
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 527
    :cond_0
    iget-object v0, p0, Lo/HdmiClient$ActionBar$Application;->c:Lo/HdmiClient$ActionBar;

    invoke-virtual {v0, p0, p1}, Lo/HdmiClient$ActionBar;->a(Lo/HdmiClient$ActionBar$Application;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 530
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 529
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_2
    throw p1
.end method

.method protected synthetic c(Ljava/lang/Object;I)V
    .locals 0

    .line 506
    check-cast p1, Ljava/io/Closeable;

    invoke-virtual {p0, p1, p2}, Lo/HdmiClient$ActionBar$Application;->e(Ljava/io/Closeable;I)V

    return-void
.end method

.method protected e()V
    .locals 2

    .line 538
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MultiplexProducer#onCancellation"

    .line 539
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 541
    :cond_0
    iget-object v0, p0, Lo/HdmiClient$ActionBar$Application;->c:Lo/HdmiClient$ActionBar;

    invoke-virtual {v0, p0}, Lo/HdmiClient$ActionBar;->a(Lo/HdmiClient$ActionBar$Application;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 543
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 544
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_2
    throw v0
.end method

.method protected e(F)V
    .locals 1

    .line 552
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MultiplexProducer#onProgressUpdate"

    .line 553
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 555
    :cond_0
    iget-object v0, p0, Lo/HdmiClient$ActionBar$Application;->c:Lo/HdmiClient$ActionBar;

    invoke-virtual {v0, p0, p1}, Lo/HdmiClient$ActionBar;->b(Lo/HdmiClient$ActionBar$Application;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 558
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 557
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 558
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_2
    throw p1
.end method

.method protected e(Ljava/io/Closeable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 510
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MultiplexProducer#onNewResult"

    .line 511
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 513
    :cond_0
    iget-object v0, p0, Lo/HdmiClient$ActionBar$Application;->c:Lo/HdmiClient$ActionBar;

    invoke-virtual {v0, p0, p1, p2}, Lo/HdmiClient$ActionBar;->e(Lo/HdmiClient$ActionBar$Application;Ljava/io/Closeable;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 516
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 515
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 516
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_2
    throw p1
.end method
