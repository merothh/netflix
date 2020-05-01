.class public Lo/SurfaceUtils;
.super Lo/LongParcelable;
.source ""


# direct methods
.method public constructor <init>(Lo/TriggerEventListener;Lo/SensorEventListener;Lo/InputDeviceIdentifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TriggerEventListener<",
            "Lo/MacAuthenticatedInputStream;",
            "Lo/LegacyRequestMapper;",
            ">;",
            "Lo/SensorEventListener;",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lo/LongParcelable;-><init>(Lo/TriggerEventListener;Lo/SensorEventListener;Lo/InputDeviceIdentifier;)V

    return-void
.end method


# virtual methods
.method protected a(Lo/BrightnessChangeEvent;Lo/MacAuthenticatedInputStream;Z)Lo/BrightnessChangeEvent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;",
            "Lo/MacAuthenticatedInputStream;",
            "Z)",
            "Lo/BrightnessChangeEvent<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation

    return-object p1
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "BitmapMemoryCacheGetProducer"

    return-object v0
.end method
