.class public Lo/DisplayManagerGlobal;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lo/HdmiTimerRecordSources;

.field private b:I

.field private c:J

.field private final d:Lo/BrightnessChangeEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BrightnessChangeEvent<",
            "Lo/LegacyFaceDetectMapper;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lo/BiometricFingerprintConstants;


# direct methods
.method public constructor <init>(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lo/DisplayManagerGlobal;->d:Lo/BrightnessChangeEvent;

    .line 32
    iput-object p2, p0, Lo/DisplayManagerGlobal;->a:Lo/HdmiTimerRecordSources;

    const-wide/16 p1, 0x0

    .line 33
    iput-wide p1, p0, Lo/DisplayManagerGlobal;->c:J

    return-void
.end method


# virtual methods
.method public a()Lo/HdmiTimerRecordSources;
    .locals 1

    .line 41
    iget-object v0, p0, Lo/DisplayManagerGlobal;->a:Lo/HdmiTimerRecordSources;

    return-object v0
.end method

.method public b()Lo/InputManagerInternal;
    .locals 1

    .line 49
    iget-object v0, p0, Lo/DisplayManagerGlobal;->a:Lo/HdmiTimerRecordSources;

    invoke-interface {v0}, Lo/HdmiTimerRecordSources;->e()Lo/InputManagerInternal;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/net/Uri;
    .locals 1

    .line 53
    iget-object v0, p0, Lo/DisplayManagerGlobal;->a:Lo/HdmiTimerRecordSources;

    invoke-interface {v0}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public d()Lo/BrightnessChangeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/BrightnessChangeEvent<",
            "Lo/LegacyFaceDetectMapper;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lo/DisplayManagerGlobal;->d:Lo/BrightnessChangeEvent;

    return-object v0
.end method

.method public d(J)V
    .locals 0

    .line 61
    iput-wide p1, p0, Lo/DisplayManagerGlobal;->c:J

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lo/DisplayManagerGlobal;->a:Lo/HdmiTimerRecordSources;

    invoke-interface {v0}, Lo/HdmiTimerRecordSources;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lo/DisplayManagerGlobal;->c:J

    return-wide v0
.end method

.method public h()I
    .locals 1

    .line 65
    iget v0, p0, Lo/DisplayManagerGlobal;->b:I

    return v0
.end method

.method public j()Lo/BiometricFingerprintConstants;
    .locals 1

    .line 78
    iget-object v0, p0, Lo/DisplayManagerGlobal;->e:Lo/BiometricFingerprintConstants;

    return-object v0
.end method
