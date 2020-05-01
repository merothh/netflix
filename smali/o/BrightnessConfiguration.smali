.class public Lo/BrightnessConfiguration;
.super Lo/HdmiClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/HdmiClient<",
        "Landroid/util/Pair<",
        "Lo/MacAuthenticatedInputStream;",
        "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
        ">;",
        "Lo/LegacyFaceDetectMapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Lo/SensorEventListener;


# direct methods
.method public constructor <init>(Lo/SensorEventListener;Lo/InputDeviceIdentifier;)V
    .locals 0

    .line 27
    invoke-direct {p0, p2}, Lo/HdmiClient;-><init>(Lo/InputDeviceIdentifier;)V

    .line 28
    iput-object p1, p0, Lo/BrightnessConfiguration;->d:Lo/SensorEventListener;

    return-void
.end method


# virtual methods
.method protected synthetic a(Lo/HdmiTimerRecordSources;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lo/BrightnessConfiguration;->d(Lo/HdmiTimerRecordSources;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public a(Lo/LegacyFaceDetectMapper;)Lo/LegacyFaceDetectMapper;
    .locals 0

    .line 40
    invoke-static {p1}, Lo/LegacyFaceDetectMapper;->b(Lo/LegacyFaceDetectMapper;)Lo/LegacyFaceDetectMapper;

    move-result-object p1

    return-object p1
.end method

.method protected d(Lo/HdmiTimerRecordSources;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/HdmiTimerRecordSources;",
            ")",
            "Landroid/util/Pair<",
            "Lo/MacAuthenticatedInputStream;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lo/BrightnessConfiguration;->d:Lo/SensorEventListener;

    .line 34
    invoke-interface {p1}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    .line 35
    invoke-interface {p1}, Lo/HdmiTimerRecordSources;->c()Ljava/lang/Object;

    move-result-object v2

    .line 33
    invoke-interface {v0, v1, v2}, Lo/SensorEventListener;->c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lo/MacAuthenticatedInputStream;

    move-result-object v0

    .line 36
    invoke-interface {p1}, Lo/HdmiTimerRecordSources;->a()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object p1

    .line 32
    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public synthetic e(Ljava/io/Closeable;)Ljava/io/Closeable;
    .locals 0

    .line 19
    check-cast p1, Lo/LegacyFaceDetectMapper;

    invoke-virtual {p0, p1}, Lo/BrightnessConfiguration;->a(Lo/LegacyFaceDetectMapper;)Lo/LegacyFaceDetectMapper;

    move-result-object p1

    return-object p1
.end method
