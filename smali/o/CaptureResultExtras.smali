.class public Lo/CaptureResultExtras;
.super Lo/ICameraDeviceUserWrapper;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/ICameraDeviceUserWrapper<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lo/InputDeviceIdentifier;Lo/ActivityChangedEvent;Lo/PerfMeasurement;)V
    .locals 0
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

    .line 39
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
            "TT;>;",
            "Lo/ActivityChangedEvent;",
            "Lo/PerfMeasurement;",
            ")",
            "Lo/XmlResourceParser<",
            "TT;>;"
        }
    .end annotation

    .line 29
    new-instance v0, Lo/CaptureResultExtras;

    invoke-direct {v0, p0, p1, p2}, Lo/CaptureResultExtras;-><init>(Lo/InputDeviceIdentifier;Lo/ActivityChangedEvent;Lo/PerfMeasurement;)V

    return-object v0
.end method
