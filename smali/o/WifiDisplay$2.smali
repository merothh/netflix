.class Lo/WifiDisplay$2;
.super Lo/ActivityRecognitionEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WifiDisplay;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
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
.field final synthetic b:Lo/WifiDisplay;

.field final synthetic e:Lcom/facebook/imagepipeline/request/ImageRequest;


# direct methods
.method constructor <init>(Lo/WifiDisplay;Lo/BrightnessChangeEvent;Lo/InputManagerInternal;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lo/WifiDisplay$2;->b:Lo/WifiDisplay;

    iput-object p6, p0, Lo/WifiDisplay$2;->e:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-direct {p0, p2, p3, p4, p5}, Lo/ActivityRecognitionEvent;-><init>(Lo/BrightnessChangeEvent;Lo/InputManagerInternal;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 89
    check-cast p1, Lo/LegacyFaceDetectMapper;

    invoke-virtual {p0, p1}, Lo/WifiDisplay$2;->c(Lo/LegacyFaceDetectMapper;)V

    return-void
.end method

.method protected c(Lo/LegacyFaceDetectMapper;)V
    .locals 0

    .line 106
    invoke-static {p1}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V

    return-void
.end method

.method protected synthetic d()Ljava/lang/Object;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lo/WifiDisplay$2;->e()Lo/LegacyFaceDetectMapper;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lo/LegacyFaceDetectMapper;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LegacyFaceDetectMapper;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 111
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "createdThumbnail"

    invoke-static {v0, p1}, Lcom/facebook/common/internal/ImmutableMap;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic e(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 89
    check-cast p1, Lo/LegacyFaceDetectMapper;

    invoke-virtual {p0, p1}, Lo/WifiDisplay$2;->d(Lo/LegacyFaceDetectMapper;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected e()Lo/LegacyFaceDetectMapper;
    .locals 3

    .line 92
    iget-object v0, p0, Lo/WifiDisplay$2;->e:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->a()Landroid/net/Uri;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lo/WifiDisplay$2;->b:Lo/WifiDisplay;

    invoke-virtual {v1, v0}, Lo/WifiDisplay;->e(Landroid/net/Uri;)Landroid/media/ExifInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v0}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v0}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v1

    .line 100
    iget-object v2, p0, Lo/WifiDisplay$2;->b:Lo/WifiDisplay;

    invoke-static {v2}, Lo/WifiDisplay;->c(Lo/WifiDisplay;)Lo/AssetFileDescriptor;

    move-result-object v2

    invoke-interface {v2, v1}, Lo/AssetFileDescriptor;->c([B)Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object v1

    .line 101
    iget-object v2, p0, Lo/WifiDisplay$2;->b:Lo/WifiDisplay;

    invoke-static {v2, v1, v0}, Lo/WifiDisplay;->d(Lo/WifiDisplay;Lcom/facebook/common/memory/PooledByteBuffer;Landroid/media/ExifInterface;)Lo/LegacyFaceDetectMapper;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
