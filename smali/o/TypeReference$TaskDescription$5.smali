.class Lo/TypeReference$TaskDescription$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/imagepipeline/producers/JobScheduler$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TypeReference$TaskDescription;-><init>(Lo/TypeReference;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/TypeReference$TaskDescription;

.field final synthetic b:Lo/HdmiTimerRecordSources;

.field final synthetic c:Lo/TypeReference;

.field final synthetic e:I


# direct methods
.method constructor <init>(Lo/TypeReference$TaskDescription;Lo/TypeReference;Lo/HdmiTimerRecordSources;I)V
    .locals 0

    .line 154
    iput-object p1, p0, Lo/TypeReference$TaskDescription$5;->a:Lo/TypeReference$TaskDescription;

    iput-object p2, p0, Lo/TypeReference$TaskDescription$5;->c:Lo/TypeReference;

    iput-object p3, p0, Lo/TypeReference$TaskDescription$5;->b:Lo/HdmiTimerRecordSources;

    iput p4, p0, Lo/TypeReference$TaskDescription$5;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lo/LegacyFaceDetectMapper;I)V
    .locals 3

    if-eqz p1, :cond_3

    .line 158
    iget-object v0, p0, Lo/TypeReference$TaskDescription$5;->a:Lo/TypeReference$TaskDescription;

    iget-object v0, v0, Lo/TypeReference$TaskDescription;->e:Lo/TypeReference;

    invoke-static {v0}, Lo/TypeReference;->e(Lo/TypeReference;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x10

    invoke-static {p2, v0}, Lo/CloseableLock;->b(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    :cond_0
    iget-object v0, p0, Lo/TypeReference$TaskDescription$5;->b:Lo/HdmiTimerRecordSources;

    invoke-interface {v0}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lo/TypeReference$TaskDescription$5;->a:Lo/TypeReference$TaskDescription;

    iget-object v1, v1, Lo/TypeReference$TaskDescription;->e:Lo/TypeReference;

    invoke-static {v1}, Lo/TypeReference;->b(Lo/TypeReference;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lo/ResourcesKey;->c(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 164
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->i()Lo/CameraDevice;

    move-result-object v1

    .line 165
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->f()Lo/CameraConstrainedHighSpeedCaptureSession;

    move-result-object v0

    iget v2, p0, Lo/TypeReference$TaskDescription$5;->e:I

    .line 163
    invoke-static {v1, v0, p1, v2}, Lo/GeofenceHardwareRequest;->b(Lo/CameraDevice;Lo/CameraConstrainedHighSpeedCaptureSession;Lo/LegacyFaceDetectMapper;I)I

    move-result v0

    .line 162
    invoke-virtual {p1, v0}, Lo/LegacyFaceDetectMapper;->a(I)V

    .line 170
    :cond_2
    iget-object v0, p0, Lo/TypeReference$TaskDescription$5;->a:Lo/TypeReference$TaskDescription;

    invoke-static {v0, p1, p2}, Lo/TypeReference$TaskDescription;->e(Lo/TypeReference$TaskDescription;Lo/LegacyFaceDetectMapper;I)V

    :cond_3
    return-void
.end method
