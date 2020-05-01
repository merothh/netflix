.class Lo/AmbientBrightnessDayStats$StateListAnimator;
.super Lo/TaskSingleDrainer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AmbientBrightnessDayStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field private c:Lo/HdmiTimerRecordSources;

.field final synthetic d:Lo/AmbientBrightnessDayStats;


# direct methods
.method private constructor <init>(Lo/AmbientBrightnessDayStats;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
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

    .line 44
    iput-object p1, p0, Lo/AmbientBrightnessDayStats$StateListAnimator;->d:Lo/AmbientBrightnessDayStats;

    .line 45
    invoke-direct {p0, p2}, Lo/TaskSingleDrainer;-><init>(Lo/BrightnessChangeEvent;)V

    .line 46
    iput-object p3, p0, Lo/AmbientBrightnessDayStats$StateListAnimator;->c:Lo/HdmiTimerRecordSources;

    return-void
.end method

.method synthetic constructor <init>(Lo/AmbientBrightnessDayStats;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;Lo/AmbientBrightnessDayStats$1;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lo/AmbientBrightnessDayStats$StateListAnimator;-><init>(Lo/AmbientBrightnessDayStats;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/Throwable;)V
    .locals 2

    .line 72
    iget-object p1, p0, Lo/AmbientBrightnessDayStats$StateListAnimator;->d:Lo/AmbientBrightnessDayStats;

    invoke-static {p1}, Lo/AmbientBrightnessDayStats;->a(Lo/AmbientBrightnessDayStats;)Lo/InputDeviceIdentifier;

    move-result-object p1

    invoke-virtual {p0}, Lo/AmbientBrightnessDayStats$StateListAnimator;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    iget-object v1, p0, Lo/AmbientBrightnessDayStats$StateListAnimator;->c:Lo/HdmiTimerRecordSources;

    invoke-interface {p1, v0, v1}, Lo/InputDeviceIdentifier;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    return-void
.end method

.method protected synthetic c(Ljava/lang/Object;I)V
    .locals 0

    .line 38
    check-cast p1, Lo/LegacyFaceDetectMapper;

    invoke-virtual {p0, p1, p2}, Lo/AmbientBrightnessDayStats$StateListAnimator;->d(Lo/LegacyFaceDetectMapper;I)V

    return-void
.end method

.method protected d(Lo/LegacyFaceDetectMapper;I)V
    .locals 3

    .line 51
    iget-object v0, p0, Lo/AmbientBrightnessDayStats$StateListAnimator;->c:Lo/HdmiTimerRecordSources;

    invoke-interface {v0}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 52
    invoke-static {p2}, Lo/AmbientBrightnessDayStats$StateListAnimator;->e(I)Z

    move-result v1

    .line 54
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->f()Lo/CameraConstrainedHighSpeedCaptureSession;

    move-result-object v2

    invoke-static {p1, v2}, Lo/ContextHubClientCallback;->b(Lo/LegacyFaceDetectMapper;Lo/CameraConstrainedHighSpeedCaptureSession;)Z

    move-result v2

    if-eqz p1, :cond_2

    if-nez v2, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 57
    invoke-virtual {p0}, Lo/AmbientBrightnessDayStats$StateListAnimator;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 59
    invoke-static {p2, v0}, Lo/AmbientBrightnessDayStats$StateListAnimator;->c(II)I

    move-result p2

    .line 60
    invoke-virtual {p0}, Lo/AmbientBrightnessDayStats$StateListAnimator;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    .line 64
    invoke-static {p1}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V

    .line 66
    iget-object p1, p0, Lo/AmbientBrightnessDayStats$StateListAnimator;->d:Lo/AmbientBrightnessDayStats;

    invoke-static {p1}, Lo/AmbientBrightnessDayStats;->a(Lo/AmbientBrightnessDayStats;)Lo/InputDeviceIdentifier;

    move-result-object p1

    invoke-virtual {p0}, Lo/AmbientBrightnessDayStats$StateListAnimator;->d()Lo/BrightnessChangeEvent;

    move-result-object p2

    iget-object v0, p0, Lo/AmbientBrightnessDayStats$StateListAnimator;->c:Lo/HdmiTimerRecordSources;

    invoke-interface {p1, p2, v0}, Lo/InputDeviceIdentifier;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    :cond_3
    return-void
.end method
