.class Lo/Curve$StateListAnimator;
.super Lo/TaskSingleDrainer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Curve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/TaskSingleDrainer<",
        "Lo/LegacyFaceDetectMapper;",
        "Lo/LegacyFaceDetectMapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lo/SensorEventListener;

.field private final c:Lo/LegacySensorManager;

.field private final d:Lo/HdmiTimerRecordSources;

.field private final e:Lo/LegacySensorManager;


# direct methods
.method private constructor <init>(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;Lo/LegacySensorManager;Lo/LegacySensorManager;Lo/SensorEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "Lo/LegacyFaceDetectMapper;",
            ">;",
            "Lo/HdmiTimerRecordSources;",
            "Lo/LegacySensorManager;",
            "Lo/LegacySensorManager;",
            "Lo/SensorEventListener;",
            ")V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1}, Lo/TaskSingleDrainer;-><init>(Lo/BrightnessChangeEvent;)V

    .line 101
    iput-object p2, p0, Lo/Curve$StateListAnimator;->d:Lo/HdmiTimerRecordSources;

    .line 102
    iput-object p3, p0, Lo/Curve$StateListAnimator;->c:Lo/LegacySensorManager;

    .line 103
    iput-object p4, p0, Lo/Curve$StateListAnimator;->e:Lo/LegacySensorManager;

    .line 104
    iput-object p5, p0, Lo/Curve$StateListAnimator;->a:Lo/SensorEventListener;

    return-void
.end method

.method synthetic constructor <init>(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;Lo/LegacySensorManager;Lo/LegacySensorManager;Lo/SensorEventListener;Lo/Curve$2;)V
    .locals 0

    .line 86
    invoke-direct/range {p0 .. p5}, Lo/Curve$StateListAnimator;-><init>(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;Lo/LegacySensorManager;Lo/LegacySensorManager;Lo/SensorEventListener;)V

    return-void
.end method


# virtual methods
.method public synthetic c(Ljava/lang/Object;I)V
    .locals 0

    .line 86
    check-cast p1, Lo/LegacyFaceDetectMapper;

    invoke-virtual {p0, p1, p2}, Lo/Curve$StateListAnimator;->d(Lo/LegacyFaceDetectMapper;I)V

    return-void
.end method

.method public d(Lo/LegacyFaceDetectMapper;I)V
    .locals 3

    .line 111
    invoke-static {p2}, Lo/Curve$StateListAnimator;->c(I)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    const/16 v0, 0xa

    .line 113
    invoke-static {p2, v0}, Lo/Curve$StateListAnimator;->e(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->e()Lo/GestureLibraries;

    move-result-object v0

    sget-object v1, Lo/GestureLibraries;->a:Lo/GestureLibraries;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 119
    :cond_0
    iget-object v0, p0, Lo/Curve$StateListAnimator;->d:Lo/HdmiTimerRecordSources;

    invoke-interface {v0}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lo/Curve$StateListAnimator;->a:Lo/SensorEventListener;

    iget-object v2, p0, Lo/Curve$StateListAnimator;->d:Lo/HdmiTimerRecordSources;

    .line 121
    invoke-interface {v2}, Lo/HdmiTimerRecordSources;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lo/SensorEventListener;->c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lo/MacAuthenticatedInputStream;

    move-result-object v1

    .line 123
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->c()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v0

    sget-object v2, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->e:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    if-ne v0, v2, :cond_1

    .line 124
    iget-object v0, p0, Lo/Curve$StateListAnimator;->e:Lo/LegacySensorManager;

    invoke-virtual {v0, v1, p1}, Lo/LegacySensorManager;->d(Lo/MacAuthenticatedInputStream;Lo/LegacyFaceDetectMapper;)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lo/Curve$StateListAnimator;->c:Lo/LegacySensorManager;

    invoke-virtual {v0, v1, p1}, Lo/LegacySensorManager;->d(Lo/MacAuthenticatedInputStream;Lo/LegacyFaceDetectMapper;)V

    .line 129
    :goto_0
    invoke-virtual {p0}, Lo/Curve$StateListAnimator;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    return-void

    .line 115
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lo/Curve$StateListAnimator;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    return-void
.end method
