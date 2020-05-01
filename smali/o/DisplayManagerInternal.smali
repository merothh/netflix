.class public Lo/DisplayManagerInternal;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InputDeviceIdentifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DisplayManagerInternal$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/InputDeviceIdentifier<",
        "Lo/LegacyFaceDetectMapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lo/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lo/SensorEventListener;

.field private final e:Lo/TriggerEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TriggerEventListener<",
            "Lo/MacAuthenticatedInputStream;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
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
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lo/SensorEventListener;",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lo/DisplayManagerInternal;->e:Lo/TriggerEventListener;

    .line 38
    iput-object p2, p0, Lo/DisplayManagerInternal;->d:Lo/SensorEventListener;

    .line 39
    iput-object p3, p0, Lo/DisplayManagerInternal;->a:Lo/InputDeviceIdentifier;

    return-void
.end method


# virtual methods
.method public d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "Lo/LegacyFaceDetectMapper;",
            ">;",
            "Lo/HdmiTimerRecordSources;",
            ")V"
        }
    .end annotation

    const-string v0, "EncodedMemoryCacheProducer"

    .line 46
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EncodedMemoryCacheProducer#produceResults"

    .line 47
    invoke-static {v1}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 49
    :cond_0
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->b()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->e()Lo/InputManagerInternal;

    move-result-object v2

    .line 51
    invoke-interface {v2, v1, v0}, Lo/InputManagerInternal;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v3

    .line 53
    iget-object v4, p0, Lo/DisplayManagerInternal;->d:Lo/SensorEventListener;

    .line 54
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->c()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lo/SensorEventListener;->c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lo/MacAuthenticatedInputStream;

    move-result-object v3

    .line 56
    iget-object v4, p0, Lo/DisplayManagerInternal;->e:Lo/TriggerEventListener;

    invoke-interface {v4, v3}, Lo/TriggerEventListener;->a(Ljava/lang/Object;)Lo/CompatibilityInfo;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v5, 0x1

    const-string v6, "cached_value_found"

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    .line 59
    :try_start_1
    new-instance p2, Lo/LegacyFaceDetectMapper;

    invoke-direct {p2, v4}, Lo/LegacyFaceDetectMapper;-><init>(Lo/CompatibilityInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    :try_start_2
    invoke-interface {v2, v1}, Lo/InputManagerInternal;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "true"

    .line 65
    invoke-static {v6, v3}, Lcom/facebook/common/internal/ImmutableMap;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    .line 61
    :cond_1
    invoke-interface {v2, v1, v0, v7}, Lo/InputManagerInternal;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 67
    invoke-interface {v2, v1, v0, v5}, Lo/InputManagerInternal;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 68
    invoke-interface {p1, v0}, Lo/BrightnessChangeEvent;->c(F)V

    .line 69
    invoke-interface {p1, p2, v5}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    :try_start_3
    invoke-static {p2}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    :try_start_4
    invoke-static {v4}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 105
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 106
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 72
    :try_start_5
    invoke-static {p2}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V

    throw p1

    .line 76
    :cond_3
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->a()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->a()I

    move-result v8

    sget-object v9, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->c:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 77
    invoke-virtual {v9}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->a()I

    move-result v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-string v10, "false"

    if-lt v8, v9, :cond_6

    .line 81
    :try_start_6
    invoke-interface {v2, v1}, Lo/InputManagerInternal;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 82
    invoke-static {v6, v10}, Lcom/facebook/common/internal/ImmutableMap;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    goto :goto_0

    :cond_4
    move-object p2, v7

    .line 78
    :goto_0
    invoke-interface {v2, v1, v0, p2}, Lo/InputManagerInternal;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p2, 0x0

    .line 84
    invoke-interface {v2, v1, v0, p2}, Lo/InputManagerInternal;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 85
    invoke-interface {p1, v7, v5}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 102
    :try_start_7
    invoke-static {v4}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 105
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 106
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_5
    return-void

    .line 90
    :cond_6
    :try_start_8
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/imagepipeline/request/ImageRequest;->k()Z

    move-result v5

    .line 91
    new-instance v8, Lo/DisplayManagerInternal$StateListAnimator;

    iget-object v9, p0, Lo/DisplayManagerInternal;->e:Lo/TriggerEventListener;

    invoke-direct {v8, p1, v9, v3, v5}, Lo/DisplayManagerInternal$StateListAnimator;-><init>(Lo/BrightnessChangeEvent;Lo/TriggerEventListener;Lo/MacAuthenticatedInputStream;Z)V

    .line 97
    invoke-interface {v2, v1}, Lo/InputManagerInternal;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 98
    invoke-static {v6, v10}, Lcom/facebook/common/internal/ImmutableMap;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    .line 94
    :cond_7
    invoke-interface {v2, v1, v0, v7}, Lo/InputManagerInternal;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 100
    iget-object p1, p0, Lo/DisplayManagerInternal;->a:Lo/InputDeviceIdentifier;

    invoke-interface {p1, v8, p2}, Lo/InputDeviceIdentifier;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 102
    :try_start_9
    invoke-static {v4}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 105
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 106
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_8
    return-void

    :catchall_1
    move-exception p1

    .line 102
    :try_start_a
    invoke-static {v4}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception p1

    .line 105
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 106
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_9
    throw p1
.end method
