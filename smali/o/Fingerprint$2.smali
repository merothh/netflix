.class Lo/Fingerprint$2;
.super Lo/ActivityRecognitionEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Fingerprint;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ActivityRecognitionEvent<",
        "Lo/LegacyFaceDetectMapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/InputManagerInternal;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lo/Fingerprint;

.field final synthetic e:Lcom/facebook/imagepipeline/request/ImageRequest;


# direct methods
.method constructor <init>(Lo/Fingerprint;Lo/BrightnessChangeEvent;Lo/InputManagerInternal;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Lo/InputManagerInternal;Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lo/Fingerprint$2;->c:Lo/Fingerprint;

    iput-object p6, p0, Lo/Fingerprint$2;->e:Lcom/facebook/imagepipeline/request/ImageRequest;

    iput-object p7, p0, Lo/Fingerprint$2;->a:Lo/InputManagerInternal;

    iput-object p8, p0, Lo/Fingerprint$2;->b:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Lo/ActivityRecognitionEvent;-><init>(Lo/BrightnessChangeEvent;Lo/InputManagerInternal;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Lo/LegacyFaceDetectMapper;

    invoke-virtual {p0, p1}, Lo/Fingerprint$2;->b(Lo/LegacyFaceDetectMapper;)V

    return-void
.end method

.method protected b(Lo/LegacyFaceDetectMapper;)V
    .locals 0

    .line 62
    invoke-static {p1}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V

    return-void
.end method

.method protected synthetic d()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lo/Fingerprint$2;->e()Lo/LegacyFaceDetectMapper;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lo/LegacyFaceDetectMapper;
    .locals 5

    .line 50
    iget-object v0, p0, Lo/Fingerprint$2;->c:Lo/Fingerprint;

    iget-object v1, p0, Lo/Fingerprint$2;->e:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-virtual {v0, v1}, Lo/Fingerprint;->e(Lcom/facebook/imagepipeline/request/ImageRequest;)Lo/LegacyFaceDetectMapper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lo/Fingerprint$2;->a:Lo/InputManagerInternal;

    iget-object v1, p0, Lo/Fingerprint$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lo/Fingerprint$2;->c:Lo/Fingerprint;

    invoke-virtual {v2}, Lo/Fingerprint;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lo/InputManagerInternal;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    invoke-virtual {v0}, Lo/LegacyFaceDetectMapper;->m()V

    .line 56
    iget-object v1, p0, Lo/Fingerprint$2;->a:Lo/InputManagerInternal;

    iget-object v2, p0, Lo/Fingerprint$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lo/Fingerprint$2;->c:Lo/Fingerprint;

    invoke-virtual {v3}, Lo/Fingerprint;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lo/InputManagerInternal;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
