.class public Lo/Curve;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InputDeviceIdentifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Curve$StateListAnimator;
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
.field private final a:Lo/SensorEventListener;

.field private final b:Lo/LegacySensorManager;

.field private final c:Lo/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;"
        }
    .end annotation
.end field

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

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lo/Curve;->e:Lo/LegacySensorManager;

    .line 45
    iput-object p2, p0, Lo/Curve;->b:Lo/LegacySensorManager;

    .line 46
    iput-object p3, p0, Lo/Curve;->a:Lo/SensorEventListener;

    .line 47
    iput-object p4, p0, Lo/Curve;->c:Lo/InputDeviceIdentifier;

    return-void
.end method

.method private a(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    .locals 8
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

    .line 59
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->a()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->a()I

    move-result v0

    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->a:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 60
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->a()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 61
    invoke-interface {p1, p2, v0}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    new-instance v0, Lo/Curve$StateListAnimator;

    iget-object v4, p0, Lo/Curve;->e:Lo/LegacySensorManager;

    iget-object v5, p0, Lo/Curve;->b:Lo/LegacySensorManager;

    iget-object v6, p0, Lo/Curve;->a:Lo/SensorEventListener;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lo/Curve$StateListAnimator;-><init>(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;Lo/LegacySensorManager;Lo/LegacySensorManager;Lo/SensorEventListener;Lo/Curve$2;)V

    move-object p1, v0

    .line 76
    :cond_1
    iget-object v0, p0, Lo/Curve;->c:Lo/InputDeviceIdentifier;

    invoke-interface {v0, p1, p2}, Lo/InputDeviceIdentifier;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    .locals 0
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

    .line 53
    invoke-direct {p0, p1, p2}, Lo/Curve;->a(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    return-void
.end method
