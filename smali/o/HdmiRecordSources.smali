.class public Lo/HdmiRecordSources;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InputDeviceIdentifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/HdmiRecordSources$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/InputDeviceIdentifier<",
        "Lo/CompatibilityInfo<",
        "Lo/LegacyRequestMapper;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lo/TriggerEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TriggerEventListener<",
            "Lo/MacAuthenticatedInputStream;",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lo/SensorEventListener;

.field private final e:Lo/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation
.end field


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

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lo/HdmiRecordSources;->a:Lo/TriggerEventListener;

    .line 39
    iput-object p2, p0, Lo/HdmiRecordSources;->b:Lo/SensorEventListener;

    .line 40
    iput-object p3, p0, Lo/HdmiRecordSources;->e:Lo/InputDeviceIdentifier;

    return-void
.end method


# virtual methods
.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "PostprocessedBitmapMemoryCacheProducer"

    return-object v0
.end method

.method public d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;",
            "Lo/HdmiTimerRecordSources;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->e()Lo/InputManagerInternal;

    move-result-object v0

    .line 49
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->b()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    .line 51
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->c()Ljava/lang/Object;

    move-result-object v3

    .line 54
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/request/ImageRequest;->p()Lo/GeofenceHardwareCallback;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 55
    invoke-interface {v4}, Lo/GeofenceHardwareCallback;->d()Lo/MacAuthenticatedInputStream;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    invoke-virtual {p0}, Lo/HdmiRecordSources;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Lo/InputManagerInternal;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v5, p0, Lo/HdmiRecordSources;->b:Lo/SensorEventListener;

    .line 61
    invoke-interface {v5, v2, v3}, Lo/SensorEventListener;->d(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lo/MacAuthenticatedInputStream;

    move-result-object v8

    .line 62
    iget-object v2, p0, Lo/HdmiRecordSources;->a:Lo/TriggerEventListener;

    invoke-interface {v2, v8}, Lo/TriggerEventListener;->a(Ljava/lang/Object;)Lo/CompatibilityInfo;

    move-result-object v2

    const-string v3, "cached_value_found"

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 66
    invoke-virtual {p0}, Lo/HdmiRecordSources;->b()Ljava/lang/String;

    move-result-object p2

    .line 67
    invoke-interface {v0, v1}, Lo/InputManagerInternal;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "true"

    invoke-static {v3, v4}, Lcom/facebook/common/internal/ImmutableMap;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    .line 64
    :cond_1
    invoke-interface {v0, v1, p2, v5}, Lo/InputManagerInternal;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p2, 0x1

    const-string v3, "PostprocessedBitmapMemoryCacheProducer"

    .line 68
    invoke-interface {v0, v1, v3, p2}, Lo/InputManagerInternal;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 69
    invoke-interface {p1, v0}, Lo/BrightnessChangeEvent;->c(F)V

    .line 70
    invoke-interface {p1, v2, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    .line 71
    invoke-virtual {v2}, Lo/CompatibilityInfo;->close()V

    goto :goto_0

    .line 73
    :cond_2
    instance-of v9, v4, Lo/GeofenceHardwareMonitorCallback;

    .line 75
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/request/ImageRequest;->k()Z

    move-result v11

    .line 76
    new-instance v2, Lo/HdmiRecordSources$Activity;

    iget-object v10, p0, Lo/HdmiRecordSources;->a:Lo/TriggerEventListener;

    move-object v6, v2

    move-object v7, p1

    invoke-direct/range {v6 .. v11}, Lo/HdmiRecordSources$Activity;-><init>(Lo/BrightnessChangeEvent;Lo/MacAuthenticatedInputStream;ZLo/TriggerEventListener;Z)V

    .line 81
    invoke-virtual {p0}, Lo/HdmiRecordSources;->b()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-interface {v0, v1}, Lo/InputManagerInternal;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "false"

    invoke-static {v3, v4}, Lcom/facebook/common/internal/ImmutableMap;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    .line 79
    :cond_3
    invoke-interface {v0, v1, p1, v5}, Lo/InputManagerInternal;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 83
    iget-object p1, p0, Lo/HdmiRecordSources;->e:Lo/InputDeviceIdentifier;

    invoke-interface {p1, v2, p2}, Lo/InputDeviceIdentifier;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    :goto_0
    return-void

    .line 56
    :cond_4
    :goto_1
    iget-object v0, p0, Lo/HdmiRecordSources;->e:Lo/InputDeviceIdentifier;

    invoke-interface {v0, p1, p2}, Lo/InputDeviceIdentifier;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    return-void
.end method
