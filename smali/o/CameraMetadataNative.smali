.class public Lo/CameraMetadataNative;
.super Lo/ICameraDeviceUserWrapper;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/ICameraDeviceUserWrapper<",
        "Lo/CompatibilityInfo<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lo/InputDeviceIdentifier;Lo/ActivityChangedEvent;Lo/PerfMeasurement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "TT;>;>;",
            "Lo/ActivityChangedEvent;",
            "Lo/PerfMeasurement;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lo/ICameraDeviceUserWrapper;-><init>(Lo/InputDeviceIdentifier;Lo/ActivityChangedEvent;Lo/PerfMeasurement;)V

    return-void
.end method

.method public static b(Lo/InputDeviceIdentifier;Lo/ActivityChangedEvent;Lo/PerfMeasurement;)Lo/XmlResourceParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "TT;>;>;",
            "Lo/ActivityChangedEvent;",
            "Lo/PerfMeasurement;",
            ")",
            "Lo/XmlResourceParser<",
            "Lo/CompatibilityInfo<",
            "TT;>;>;"
        }
    .end annotation

    .line 32
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CloseableProducerToDataSourceAdapter#create"

    .line 33
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 35
    :cond_0
    new-instance v0, Lo/CameraMetadataNative;

    invoke-direct {v0, p0, p1, p2}, Lo/CameraMetadataNative;-><init>(Lo/InputDeviceIdentifier;Lo/ActivityChangedEvent;Lo/PerfMeasurement;)V

    .line 37
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 38
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lo/CameraMetadataNative;->l()Lo/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c(Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p1, Lo/CompatibilityInfo;

    invoke-virtual {p0, p1, p2}, Lo/CameraMetadataNative;->e(Lo/CompatibilityInfo;I)V

    return-void
.end method

.method protected c(Lo/CompatibilityInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "TT;>;)V"
        }
    .end annotation

    .line 58
    invoke-static {p1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lo/CompatibilityInfo;

    invoke-virtual {p0, p1}, Lo/CameraMetadataNative;->c(Lo/CompatibilityInfo;)V

    return-void
.end method

.method protected e(Lo/CompatibilityInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "TT;>;I)V"
        }
    .end annotation

    .line 63
    invoke-static {p1}, Lo/CompatibilityInfo;->d(Lo/CompatibilityInfo;)Lo/CompatibilityInfo;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lo/ICameraDeviceUserWrapper;->c(Ljava/lang/Object;I)V

    return-void
.end method

.method public l()Lo/CompatibilityInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/CompatibilityInfo<",
            "TT;>;"
        }
    .end annotation

    .line 53
    invoke-super {p0}, Lo/ICameraDeviceUserWrapper;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CompatibilityInfo;

    invoke-static {v0}, Lo/CompatibilityInfo;->d(Lo/CompatibilityInfo;)Lo/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method
