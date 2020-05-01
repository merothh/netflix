.class public Lo/LongParcelable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InputDeviceIdentifier;


# annotations
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
.field private final a:Lo/SensorEventListener;

.field private final d:Lo/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Lo/TriggerEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TriggerEventListener<",
            "Lo/MacAuthenticatedInputStream;",
            "Lo/LegacyRequestMapper;",
            ">;"
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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lo/LongParcelable;->e:Lo/TriggerEventListener;

    .line 37
    iput-object p2, p0, Lo/LongParcelable;->a:Lo/SensorEventListener;

    .line 38
    iput-object p3, p0, Lo/LongParcelable;->d:Lo/InputDeviceIdentifier;

    return-void
.end method

.method static synthetic e(Lo/LongParcelable;)Lo/TriggerEventListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lo/LongParcelable;->e:Lo/TriggerEventListener;

    return-object p0
.end method


# virtual methods
.method protected a(Lo/BrightnessChangeEvent;Lo/MacAuthenticatedInputStream;Z)Lo/BrightnessChangeEvent;
    .locals 1
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

    .line 117
    new-instance v0, Lo/LongParcelable$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/LongParcelable$1;-><init>(Lo/LongParcelable;Lo/BrightnessChangeEvent;Lo/MacAuthenticatedInputStream;Z)V

    return-object v0
.end method

.method public d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    .locals 10
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

    .line 46
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BitmapMemoryCacheProducer#produceResults"

    .line 47
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 49
    :cond_0
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->e()Lo/InputManagerInternal;

    move-result-object v0

    .line 50
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->b()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {p0}, Lo/LongParcelable;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/InputManagerInternal;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    .line 53
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->c()Ljava/lang/Object;

    move-result-object v3

    .line 54
    iget-object v4, p0, Lo/LongParcelable;->a:Lo/SensorEventListener;

    invoke-interface {v4, v2, v3}, Lo/SensorEventListener;->e(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lo/MacAuthenticatedInputStream;

    move-result-object v2

    .line 56
    iget-object v3, p0, Lo/LongParcelable;->e:Lo/TriggerEventListener;

    invoke-interface {v3, v2}, Lo/TriggerEventListener;->a(Ljava/lang/Object;)Lo/CompatibilityInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    const-string v5, "cached_value_found"

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    .line 59
    :try_start_1
    invoke-virtual {v3}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/LegacyRequestMapper;

    invoke-virtual {v7}, Lo/LegacyRequestMapper;->b()Lo/LegacyResultMapper;

    move-result-object v7

    invoke-interface {v7}, Lo/LegacyResultMapper;->c()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 63
    invoke-virtual {p0}, Lo/LongParcelable;->e()Ljava/lang/String;

    move-result-object v8

    .line 64
    invoke-interface {v0, v1}, Lo/InputManagerInternal;->b(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "true"

    .line 65
    invoke-static {v5, v9}, Lcom/facebook/common/internal/ImmutableMap;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    goto :goto_0

    :cond_1
    move-object v9, v6

    .line 61
    :goto_0
    invoke-interface {v0, v1, v8, v9}, Lo/InputManagerInternal;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 67
    invoke-virtual {p0}, Lo/LongParcelable;->e()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v1, v8, v4}, Lo/InputManagerInternal;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/high16 v8, 0x3f800000    # 1.0f

    .line 68
    invoke-interface {p1, v8}, Lo/BrightnessChangeEvent;->c(F)V

    .line 70
    :cond_2
    invoke-static {v7}, Lo/CloseableLock;->e(Z)I

    move-result v8

    invoke-interface {p1, v3, v8}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    .line 71
    invoke-virtual {v3}, Lo/CompatibilityInfo;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_4

    .line 107
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 108
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_3
    return-void

    .line 77
    :cond_4
    :try_start_2
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->a()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->a()I

    move-result v3

    sget-object v7, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->b:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 78
    invoke-virtual {v7}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->a()I

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v8, "false"

    if-lt v3, v7, :cond_7

    .line 81
    :try_start_3
    invoke-virtual {p0}, Lo/LongParcelable;->e()Ljava/lang/String;

    move-result-object p2

    .line 82
    invoke-interface {v0, v1}, Lo/InputManagerInternal;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 83
    invoke-static {v5, v8}, Lcom/facebook/common/internal/ImmutableMap;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    goto :goto_1

    :cond_5
    move-object v2, v6

    .line 79
    :goto_1
    invoke-interface {v0, v1, p2, v2}, Lo/InputManagerInternal;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 85
    invoke-virtual {p0}, Lo/LongParcelable;->e()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-interface {v0, v1, p2, v2}, Lo/InputManagerInternal;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 86
    invoke-interface {p1, v6, v4}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 108
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_6
    return-void

    .line 92
    :cond_7
    :try_start_4
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/request/ImageRequest;->k()Z

    move-result v3

    .line 91
    invoke-virtual {p0, p1, v2, v3}, Lo/LongParcelable;->a(Lo/BrightnessChangeEvent;Lo/MacAuthenticatedInputStream;Z)Lo/BrightnessChangeEvent;

    move-result-object p1

    .line 95
    invoke-virtual {p0}, Lo/LongParcelable;->e()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-interface {v0, v1}, Lo/InputManagerInternal;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 97
    invoke-static {v5, v8}, Lcom/facebook/common/internal/ImmutableMap;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    .line 93
    :cond_8
    invoke-interface {v0, v1, v2, v6}, Lo/InputManagerInternal;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 99
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "mInputProducer.produceResult"

    .line 100
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 102
    :cond_9
    iget-object v0, p0, Lo/LongParcelable;->d:Lo/InputDeviceIdentifier;

    invoke-interface {v0, p1, p2}, Lo/InputDeviceIdentifier;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    .line 103
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 104
    invoke-static {}, Lo/GeofenceHardwareService;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    :cond_a
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 108
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_b
    return-void

    :catchall_0
    move-exception p1

    .line 107
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 108
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_c
    throw p1
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "BitmapMemoryCacheProducer"

    return-object v0
.end method
