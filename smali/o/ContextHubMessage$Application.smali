.class Lo/ContextHubMessage$Application;
.super Lo/TaskSingleDrainer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ContextHubMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
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
.field private final a:Lo/HdmiTimerRecordSources;

.field private final b:I

.field private final c:Lo/CameraConstrainedHighSpeedCaptureSession;

.field final synthetic e:Lo/ContextHubMessage;


# direct methods
.method public constructor <init>(Lo/ContextHubMessage;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "Lo/LegacyFaceDetectMapper;",
            ">;",
            "Lo/HdmiTimerRecordSources;",
            "I)V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lo/ContextHubMessage$Application;->e:Lo/ContextHubMessage;

    .line 55
    invoke-direct {p0, p2}, Lo/TaskSingleDrainer;-><init>(Lo/BrightnessChangeEvent;)V

    .line 56
    iput-object p3, p0, Lo/ContextHubMessage$Application;->a:Lo/HdmiTimerRecordSources;

    .line 57
    iput p4, p0, Lo/ContextHubMessage$Application;->b:I

    .line 58
    iget-object p1, p0, Lo/ContextHubMessage$Application;->a:Lo/HdmiTimerRecordSources;

    invoke-interface {p1}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->f()Lo/CameraConstrainedHighSpeedCaptureSession;

    move-result-object p1

    iput-object p1, p0, Lo/ContextHubMessage$Application;->c:Lo/CameraConstrainedHighSpeedCaptureSession;

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/Throwable;)V
    .locals 4

    .line 82
    iget-object v0, p0, Lo/ContextHubMessage$Application;->e:Lo/ContextHubMessage;

    iget v1, p0, Lo/ContextHubMessage$Application;->b:I

    add-int/lit8 v1, v1, 0x1

    .line 83
    invoke-virtual {p0}, Lo/ContextHubMessage$Application;->d()Lo/BrightnessChangeEvent;

    move-result-object v2

    iget-object v3, p0, Lo/ContextHubMessage$Application;->a:Lo/HdmiTimerRecordSources;

    invoke-static {v0, v1, v2, v3}, Lo/ContextHubMessage;->d(Lo/ContextHubMessage;ILo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lo/ContextHubMessage$Application;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/BrightnessChangeEvent;->e(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method protected synthetic c(Ljava/lang/Object;I)V
    .locals 0

    .line 46
    check-cast p1, Lo/LegacyFaceDetectMapper;

    invoke-virtual {p0, p1, p2}, Lo/ContextHubMessage$Application;->d(Lo/LegacyFaceDetectMapper;I)V

    return-void
.end method

.method protected d(Lo/LegacyFaceDetectMapper;I)V
    .locals 3

    if-eqz p1, :cond_1

    .line 64
    invoke-static {p2}, Lo/ContextHubMessage$Application;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/ContextHubMessage$Application;->c:Lo/CameraConstrainedHighSpeedCaptureSession;

    invoke-static {p1, v0}, Lo/ContextHubClientCallback;->b(Lo/LegacyFaceDetectMapper;Lo/CameraConstrainedHighSpeedCaptureSession;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    invoke-virtual {p0}, Lo/ContextHubMessage$Application;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-static {p2}, Lo/ContextHubMessage$Application;->e(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 67
    invoke-static {p1}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V

    .line 69
    iget-object p1, p0, Lo/ContextHubMessage$Application;->e:Lo/ContextHubMessage;

    iget p2, p0, Lo/ContextHubMessage$Application;->b:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    .line 71
    invoke-virtual {p0}, Lo/ContextHubMessage$Application;->d()Lo/BrightnessChangeEvent;

    move-result-object v1

    iget-object v2, p0, Lo/ContextHubMessage$Application;->a:Lo/HdmiTimerRecordSources;

    .line 69
    invoke-static {p1, p2, v1, v2}, Lo/ContextHubMessage;->d(Lo/ContextHubMessage;ILo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 75
    invoke-virtual {p0}, Lo/ContextHubMessage$Application;->d()Lo/BrightnessChangeEvent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2, v0}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    :cond_2
    :goto_0
    return-void
.end method
