.class public Lo/TouchCalibration;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InputDeviceIdentifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/TouchCalibration$TaskDescription;
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

.field private final b:Lo/AssetFileDescriptor;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Z

.field private final e:Lo/NanoAppInstanceInfo;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lo/AssetFileDescriptor;Lo/InputDeviceIdentifier;ZLo/NanoAppInstanceInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lo/AssetFileDescriptor;",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;Z",
            "Lo/NanoAppInstanceInfo;",
            ")V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lo/TouchCalibration;->c:Ljava/util/concurrent/Executor;

    .line 68
    invoke-static {p2}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AssetFileDescriptor;

    iput-object p1, p0, Lo/TouchCalibration;->b:Lo/AssetFileDescriptor;

    .line 69
    invoke-static {p3}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/InputDeviceIdentifier;

    iput-object p1, p0, Lo/TouchCalibration;->a:Lo/InputDeviceIdentifier;

    .line 70
    invoke-static {p5}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/NanoAppInstanceInfo;

    iput-object p1, p0, Lo/TouchCalibration;->e:Lo/NanoAppInstanceInfo;

    .line 71
    iput-boolean p4, p0, Lo/TouchCalibration;->d:Z

    return-void
.end method

.method static synthetic b(Lo/TouchCalibration;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 45
    iget-object p0, p0, Lo/TouchCalibration;->c:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/request/ImageRequest;Lo/LegacyFaceDetectMapper;Lo/GeofenceHardwareRequestParcelable;)Lcom/facebook/common/util/TriState;
    .locals 0

    .line 45
    invoke-static {p0, p1, p2}, Lo/TouchCalibration;->d(Lcom/facebook/imagepipeline/request/ImageRequest;Lo/LegacyFaceDetectMapper;Lo/GeofenceHardwareRequestParcelable;)Lcom/facebook/common/util/TriState;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lo/CameraDevice;Lo/LegacyFaceDetectMapper;)Z
    .locals 1

    .line 330
    invoke-virtual {p0}, Lo/CameraDevice;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/CameraDevice;->g()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    sget-object p0, Lo/NanoAppBinary;->c:Lcom/facebook/common/internal/ImmutableList;

    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->j()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/common/internal/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 331
    invoke-virtual {p1, p0}, Lo/LegacyFaceDetectMapper;->d(I)V

    return p0
.end method

.method private static d(Lcom/facebook/imagepipeline/request/ImageRequest;Lo/LegacyFaceDetectMapper;Lo/GeofenceHardwareRequestParcelable;)Lcom/facebook/common/util/TriState;
    .locals 2

    if-eqz p1, :cond_4

    .line 308
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->e()Lo/GestureLibraries;

    move-result-object v0

    sget-object v1, Lo/GestureLibraries;->a:Lo/GestureLibraries;

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 312
    :cond_0
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->e()Lo/GestureLibraries;

    move-result-object v0

    invoke-interface {p2, v0}, Lo/GeofenceHardwareRequestParcelable;->d(Lo/GestureLibraries;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    sget-object p0, Lcom/facebook/common/util/TriState;->e:Lcom/facebook/common/util/TriState;

    return-object p0

    .line 317
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->i()Lo/CameraDevice;

    move-result-object v0

    invoke-static {v0, p1}, Lo/TouchCalibration;->e(Lo/CameraDevice;Lo/LegacyFaceDetectMapper;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 319
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->i()Lo/CameraDevice;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->f()Lo/CameraConstrainedHighSpeedCaptureSession;

    move-result-object p0

    .line 318
    invoke-interface {p2, p1, v0, p0}, Lo/GeofenceHardwareRequestParcelable;->d(Lo/LegacyFaceDetectMapper;Lo/CameraDevice;Lo/CameraConstrainedHighSpeedCaptureSession;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 316
    :goto_1
    invoke-static {p0}, Lcom/facebook/common/util/TriState;->c(Z)Lcom/facebook/common/util/TriState;

    move-result-object p0

    return-object p0

    .line 309
    :cond_4
    :goto_2
    sget-object p0, Lcom/facebook/common/util/TriState;->c:Lcom/facebook/common/util/TriState;

    return-object p0
.end method

.method static synthetic d(Lo/TouchCalibration;)Lo/AssetFileDescriptor;
    .locals 0

    .line 45
    iget-object p0, p0, Lo/TouchCalibration;->b:Lo/AssetFileDescriptor;

    return-object p0
.end method

.method private static e(Lo/CameraDevice;Lo/LegacyFaceDetectMapper;)Z
    .locals 1

    .line 323
    invoke-virtual {p0}, Lo/CameraDevice;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 324
    invoke-static {p0, p1}, Lo/NanoAppBinary;->a(Lo/CameraDevice;Lo/LegacyFaceDetectMapper;)I

    move-result v0

    if-nez v0, :cond_0

    .line 325
    invoke-static {p0, p1}, Lo/TouchCalibration;->c(Lo/CameraDevice;Lo/LegacyFaceDetectMapper;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
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

    .line 78
    iget-object v0, p0, Lo/TouchCalibration;->a:Lo/InputDeviceIdentifier;

    new-instance v7, Lo/TouchCalibration$TaskDescription;

    iget-boolean v5, p0, Lo/TouchCalibration;->d:Z

    iget-object v6, p0, Lo/TouchCalibration;->e:Lo/NanoAppInstanceInfo;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lo/TouchCalibration$TaskDescription;-><init>(Lo/TouchCalibration;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;ZLo/NanoAppInstanceInfo;)V

    invoke-interface {v0, v7, p2}, Lo/InputDeviceIdentifier;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    return-void
.end method
