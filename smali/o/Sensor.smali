.class public Lo/Sensor;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lo/SensorEventCallback;Lo/SerialPort;)Lo/SensorManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SensorEventCallback<",
            "Lo/MacAuthenticatedInputStream;",
            "Lo/LegacyRequestMapper;",
            ">;",
            "Lo/SerialPort;",
            ")",
            "Lo/SensorManager<",
            "Lo/MacAuthenticatedInputStream;",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation

    .line 19
    invoke-interface {p1, p0}, Lo/SerialPort;->d(Lo/SensorEventCallback;)V

    .line 21
    new-instance v0, Lo/Sensor$4;

    invoke-direct {v0, p1}, Lo/Sensor$4;-><init>(Lo/SerialPort;)V

    .line 38
    new-instance p1, Lo/SensorManager;

    invoke-direct {p1, p0, v0}, Lo/SensorManager;-><init>(Lo/TriggerEventListener;Lo/BiometricConstants;)V

    return-object p1
.end method
