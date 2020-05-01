.class public abstract Lo/ICameraDeviceUserWrapper;
.super Lcom/facebook/datasource/AbstractDataSource;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/datasource/AbstractDataSource<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final d:Lo/ActivityChangedEvent;

.field private final e:Lo/PerfMeasurement;


# direct methods
.method protected constructor <init>(Lo/InputDeviceIdentifier;Lo/ActivityChangedEvent;Lo/PerfMeasurement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "TT;>;",
            "Lo/ActivityChangedEvent;",
            "Lo/PerfMeasurement;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lcom/facebook/datasource/AbstractDataSource;-><init>()V

    .line 39
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AbstractProducerToDataSourceAdapter()"

    .line 40
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 42
    :cond_0
    iput-object p2, p0, Lo/ICameraDeviceUserWrapper;->d:Lo/ActivityChangedEvent;

    .line 43
    iput-object p3, p0, Lo/ICameraDeviceUserWrapper;->e:Lo/PerfMeasurement;

    .line 44
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "AbstractProducerToDataSourceAdapter()->onRequestStart"

    .line 45
    invoke-static {p3}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 47
    :cond_1
    iget-object p3, p0, Lo/ICameraDeviceUserWrapper;->e:Lo/PerfMeasurement;

    .line 48
    invoke-virtual {p2}, Lo/ActivityChangedEvent;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    iget-object v1, p0, Lo/ICameraDeviceUserWrapper;->d:Lo/ActivityChangedEvent;

    .line 49
    invoke-virtual {v1}, Lo/ActivityChangedEvent;->c()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lo/ICameraDeviceUserWrapper;->d:Lo/ActivityChangedEvent;

    .line 50
    invoke-virtual {v2}, Lo/ActivityChangedEvent;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lo/ICameraDeviceUserWrapper;->d:Lo/ActivityChangedEvent;

    .line 51
    invoke-virtual {v3}, Lo/ActivityChangedEvent;->h()Z

    move-result v3

    .line 47
    invoke-interface {p3, v0, v1, v2, v3}, Lo/PerfMeasurement;->c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 52
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 53
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    .line 55
    :cond_2
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p3, "AbstractProducerToDataSourceAdapter()->produceResult"

    .line 56
    invoke-static {p3}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 58
    :cond_3
    invoke-direct {p0}, Lo/ICameraDeviceUserWrapper;->n()Lo/BrightnessChangeEvent;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lo/InputDeviceIdentifier;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    .line 59
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 60
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    .line 62
    :cond_4
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 63
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_5
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 4

    .line 104
    invoke-super {p0, p1}, Lcom/facebook/datasource/AbstractDataSource;->e(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lo/ICameraDeviceUserWrapper;->e:Lo/PerfMeasurement;

    iget-object v1, p0, Lo/ICameraDeviceUserWrapper;->d:Lo/ActivityChangedEvent;

    .line 106
    invoke-virtual {v1}, Lo/ActivityChangedEvent;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    iget-object v2, p0, Lo/ICameraDeviceUserWrapper;->d:Lo/ActivityChangedEvent;

    .line 107
    invoke-virtual {v2}, Lo/ActivityChangedEvent;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lo/ICameraDeviceUserWrapper;->d:Lo/ActivityChangedEvent;

    .line 109
    invoke-virtual {v3}, Lo/ActivityChangedEvent;->h()Z

    move-result v3

    .line 105
    invoke-interface {v0, v1, v2, p1, v3}, Lo/PerfMeasurement;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lo/ICameraDeviceUserWrapper;Ljava/lang/Throwable;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lo/ICameraDeviceUserWrapper;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lo/ICameraDeviceUserWrapper;F)Z
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lo/ICameraDeviceUserWrapper;->d(F)Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lo/ICameraDeviceUserWrapper;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lo/ICameraDeviceUserWrapper;->m()V

    return-void
.end method

.method private declared-synchronized m()V
    .locals 1

    monitor-enter p0

    .line 114
    :try_start_0
    invoke-virtual {p0}, Lo/ICameraDeviceUserWrapper;->d()Z

    move-result v0

    invoke-static {v0}, Lo/StringParceledListSlice;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private n()Lo/BrightnessChangeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/BrightnessChangeEvent<",
            "TT;>;"
        }
    .end annotation

    .line 68
    new-instance v0, Lo/ICameraDeviceUserWrapper$3;

    invoke-direct {v0, p0}, Lo/ICameraDeviceUserWrapper$3;-><init>(Lo/ICameraDeviceUserWrapper;)V

    return-object v0
.end method


# virtual methods
.method protected c(Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 92
    invoke-static {p2}, Lo/CloseableLock;->e(I)Z

    move-result p2

    .line 93
    invoke-super {p0, p1, p2}, Lcom/facebook/datasource/AbstractDataSource;->c(Ljava/lang/Object;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 95
    iget-object p1, p0, Lo/ICameraDeviceUserWrapper;->e:Lo/PerfMeasurement;

    iget-object p2, p0, Lo/ICameraDeviceUserWrapper;->d:Lo/ActivityChangedEvent;

    .line 96
    invoke-virtual {p2}, Lo/ActivityChangedEvent;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p2

    iget-object v0, p0, Lo/ICameraDeviceUserWrapper;->d:Lo/ActivityChangedEvent;

    .line 97
    invoke-virtual {v0}, Lo/ActivityChangedEvent;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/ICameraDeviceUserWrapper;->d:Lo/ActivityChangedEvent;

    .line 98
    invoke-virtual {v1}, Lo/ActivityChangedEvent;->h()Z

    move-result v1

    .line 95
    invoke-interface {p1, p2, v0, v1}, Lo/PerfMeasurement;->d(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 2

    .line 124
    invoke-super {p0}, Lcom/facebook/datasource/AbstractDataSource;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 127
    :cond_0
    invoke-super {p0}, Lcom/facebook/datasource/AbstractDataSource;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lo/ICameraDeviceUserWrapper;->e:Lo/PerfMeasurement;

    iget-object v1, p0, Lo/ICameraDeviceUserWrapper;->d:Lo/ActivityChangedEvent;

    invoke-virtual {v1}, Lo/ActivityChangedEvent;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/PerfMeasurement;->e(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lo/ICameraDeviceUserWrapper;->d:Lo/ActivityChangedEvent;

    invoke-virtual {v0}, Lo/ActivityChangedEvent;->i()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
