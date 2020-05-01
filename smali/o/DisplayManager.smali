.class public Lo/DisplayManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InputDeviceIdentifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/InputDeviceIdentifier<",
        "Lo/LegacyFaceDetectMapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lo/LegacySensorManager;

.field private final b:Lo/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lo/SensorEventListener;

.field private final e:Lo/LegacySensorManager;


# direct methods
.method public constructor <init>(Lo/LegacySensorManager;Lo/LegacySensorManager;Lo/SensorEventListener;Lo/InputDeviceIdentifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LegacySensorManager;",
            "Lo/LegacySensorManager;",
            "Lo/SensorEventListener;",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lo/DisplayManager;->a:Lo/LegacySensorManager;

    .line 54
    iput-object p2, p0, Lo/DisplayManager;->e:Lo/LegacySensorManager;

    .line 55
    iput-object p3, p0, Lo/DisplayManager;->d:Lo/SensorEventListener;

    .line 56
    iput-object p4, p0, Lo/DisplayManager;->b:Lo/InputDeviceIdentifier;

    return-void
.end method

.method private a(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)Lo/Dictionary;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "Lo/LegacyFaceDetectMapper;",
            ">;",
            "Lo/HdmiTimerRecordSources;",
            ")",
            "Lo/Dictionary<",
            "Lo/LegacyFaceDetectMapper;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->b()Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->e()Lo/InputManagerInternal;

    move-result-object v2

    .line 88
    new-instance v6, Lo/DisplayManager$3;

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lo/DisplayManager$3;-><init>(Lo/DisplayManager;Lo/InputManagerInternal;Ljava/lang/String;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    return-object v6
.end method

.method private b(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    .locals 2
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

    .line 130
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->a()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->a()I

    move-result v0

    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->a:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 131
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->a()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 132
    invoke-interface {p1, p2, v0}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lo/DisplayManager;->b:Lo/InputDeviceIdentifier;

    invoke-interface {v0, p1, p2}, Lo/InputDeviceIdentifier;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    return-void
.end method

.method private c(Ljava/util/concurrent/atomic/AtomicBoolean;Lo/HdmiTimerRecordSources;)V
    .locals 1

    .line 164
    new-instance v0, Lo/DisplayManager$5;

    invoke-direct {v0, p0, p1}, Lo/DisplayManager$5;-><init>(Lo/DisplayManager;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {p2, v0}, Lo/HdmiTimerRecordSources;->c(Lo/InputManager;)V

    return-void
.end method

.method static synthetic c(Lo/HashSet;)Z
    .locals 0

    .line 37
    invoke-static {p0}, Lo/DisplayManager;->e(Lo/HashSet;)Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lo/DisplayManager;)Lo/InputDeviceIdentifier;
    .locals 0

    .line 37
    iget-object p0, p0, Lo/DisplayManager;->b:Lo/InputDeviceIdentifier;

    return-object p0
.end method

.method static e(Lo/InputManagerInternal;Ljava/lang/String;ZI)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputManagerInternal;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 145
    invoke-interface {p0, p1}, Lo/InputManagerInternal;->b(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "cached_value_found"

    if-eqz p2, :cond_1

    .line 151
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "encodedImageSize"

    .line 149
    invoke-static {p0, p1, p3, p2}, Lcom/facebook/common/internal/ImmutableMap;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 157
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-static {p0, p1}, Lcom/facebook/common/internal/ImmutableMap;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static e(Lo/HashSet;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/HashSet<",
            "*>;)Z"
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lo/HashSet;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    invoke-virtual {p0}, Lo/HashSet;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/HashSet;->j()Ljava/lang/Exception;

    move-result-object p0

    instance-of p0, p0, Ljava/util/concurrent/CancellationException;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    .locals 4
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

    .line 62
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->l()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    invoke-direct {p0, p1, p2}, Lo/DisplayManager;->b(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    return-void

    .line 68
    :cond_0
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->e()Lo/InputManagerInternal;

    move-result-object v1

    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DiskCacheProducer"

    invoke-interface {v1, v2, v3}, Lo/InputManagerInternal;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lo/DisplayManager;->d:Lo/SensorEventListener;

    .line 71
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lo/SensorEventListener;->c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lo/MacAuthenticatedInputStream;

    move-result-object v1

    .line 72
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->c()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v0

    sget-object v2, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->e:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lo/DisplayManager;->e:Lo/LegacySensorManager;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lo/DisplayManager;->a:Lo/LegacySensorManager;

    .line 75
    :goto_1
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 76
    invoke-virtual {v0, v1, v2}, Lo/LegacySensorManager;->d(Lo/MacAuthenticatedInputStream;Ljava/util/concurrent/atomic/AtomicBoolean;)Lo/HashSet;

    move-result-object v0

    .line 78
    invoke-direct {p0, p1, p2}, Lo/DisplayManager;->a(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)Lo/Dictionary;

    move-result-object p1

    .line 79
    invoke-virtual {v0, p1}, Lo/HashSet;->e(Lo/Dictionary;)Lo/HashSet;

    .line 80
    invoke-direct {p0, v2, p2}, Lo/DisplayManager;->c(Ljava/util/concurrent/atomic/AtomicBoolean;Lo/HdmiTimerRecordSources;)V

    return-void
.end method
