.class public Lo/ContextHubMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InputDeviceIdentifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ContextHubMessage$Application;
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
.field private final e:[Lo/ContextHubManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lo/ContextHubManager<",
            "Lo/LegacyFaceDetectMapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lo/ContextHubManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lo/ContextHubManager<",
            "Lo/LegacyFaceDetectMapper;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lo/ContextHubManager;

    iput-object p1, p0, Lo/ContextHubMessage;->e:[Lo/ContextHubManager;

    .line 29
    iget-object p1, p0, Lo/ContextHubMessage;->e:[Lo/ContextHubManager;

    array-length p1, p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lo/StringParceledListSlice;->e(II)I

    return-void
.end method

.method private a(ILo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/BrightnessChangeEvent<",
            "Lo/LegacyFaceDetectMapper;",
            ">;",
            "Lo/HdmiTimerRecordSources;",
            ")Z"
        }
    .end annotation

    .line 96
    invoke-interface {p3}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->f()Lo/CameraConstrainedHighSpeedCaptureSession;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lo/ContextHubMessage;->d(ILo/CameraConstrainedHighSpeedCaptureSession;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 102
    :cond_0
    iget-object v0, p0, Lo/ContextHubMessage;->e:[Lo/ContextHubManager;

    aget-object v0, v0, p1

    new-instance v1, Lo/ContextHubMessage$Application;

    invoke-direct {v1, p0, p2, p3, p1}, Lo/ContextHubMessage$Application;-><init>(Lo/ContextHubMessage;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;I)V

    .line 103
    invoke-interface {v0, v1, p3}, Lo/ContextHubManager;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    const/4 p1, 0x1

    return p1
.end method

.method private d(ILo/CameraConstrainedHighSpeedCaptureSession;)I
    .locals 2

    .line 108
    :goto_0
    iget-object v0, p0, Lo/ContextHubMessage;->e:[Lo/ContextHubManager;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 109
    aget-object v0, v0, p1

    invoke-interface {v0, p2}, Lo/ContextHubManager;->e(Lo/CameraConstrainedHighSpeedCaptureSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method static synthetic d(Lo/ContextHubMessage;ILo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)Z
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lo/ContextHubMessage;->a(ILo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    .locals 3
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

    .line 36
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->f()Lo/CameraConstrainedHighSpeedCaptureSession;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 37
    invoke-interface {p1, v2, v1}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, v0, p1, p2}, Lo/ContextHubMessage;->a(ILo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 41
    invoke-interface {p1, v2, v1}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    :cond_1
    :goto_0
    return-void
.end method
