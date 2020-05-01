.class Lo/HdmiControlManager$1;
.super Lo/ActivityRecognitionEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HdmiControlManager;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ActivityRecognitionEvent<",
        "Lo/CompatibilityInfo<",
        "Lo/LegacyRequestMapper;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/request/ImageRequest;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lo/InputManagerInternal;

.field final synthetic e:Lo/HdmiControlManager;


# direct methods
.method constructor <init>(Lo/HdmiControlManager;Lo/BrightnessChangeEvent;Lo/InputManagerInternal;Ljava/lang/String;Ljava/lang/String;Lo/InputManagerInternal;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lo/HdmiControlManager$1;->e:Lo/HdmiControlManager;

    iput-object p6, p0, Lo/HdmiControlManager$1;->c:Lo/InputManagerInternal;

    iput-object p7, p0, Lo/HdmiControlManager$1;->b:Ljava/lang/String;

    iput-object p8, p0, Lo/HdmiControlManager$1;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-direct {p0, p2, p3, p4, p5}, Lo/ActivityRecognitionEvent;-><init>(Lo/BrightnessChangeEvent;Lo/InputManagerInternal;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()Lo/CompatibilityInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 81
    :try_start_0
    iget-object v1, p0, Lo/HdmiControlManager$1;->e:Lo/HdmiControlManager;

    iget-object v2, p0, Lo/HdmiControlManager$1;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-static {v1, v2}, Lo/HdmiControlManager;->d(Lo/HdmiControlManager;Lcom/facebook/imagepipeline/request/ImageRequest;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    .line 85
    iget-object v2, p0, Lo/HdmiControlManager$1;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 87
    invoke-static {v2}, Lo/HdmiControlManager;->d(Lcom/facebook/imagepipeline/request/ImageRequest;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lo/HdmiControlManager$1;->e:Lo/HdmiControlManager;

    .line 89
    invoke-static {v1}, Lo/HdmiControlManager;->c(Lo/HdmiControlManager;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lo/HdmiControlManager$1;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/request/ImageRequest;->a()Landroid/net/Uri;

    move-result-object v2

    .line 88
    invoke-static {v1, v2}, Lo/HdmiControlManager;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    return-object v0

    .line 95
    :cond_1
    new-instance v0, Lo/LegacyMetadataMapper;

    .line 98
    invoke-static {}, Lo/OrientedBoundingBox;->d()Lo/OrientedBoundingBox;

    move-result-object v2

    sget-object v3, Lo/RequestHolder;->a:Lo/LegacyResultMapper;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lo/LegacyMetadataMapper;-><init>(Landroid/graphics/Bitmap;Lo/ConfigurationBoundResourceCache;Lo/LegacyResultMapper;I)V

    .line 95
    invoke-static {v0}, Lo/CompatibilityInfo;->a(Ljava/io/Closeable;)Lo/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 64
    check-cast p1, Lo/CompatibilityInfo;

    invoke-virtual {p0, p1}, Lo/HdmiControlManager$1;->c(Lo/CompatibilityInfo;)V

    return-void
.end method

.method protected c(Lo/CompatibilityInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;)V"
        }
    .end annotation

    .line 111
    invoke-static {p1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    return-void
.end method

.method protected synthetic d()Ljava/lang/Object;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lo/HdmiControlManager$1;->a()Lo/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method protected d(Ljava/lang/Exception;)V
    .locals 3

    .line 73
    invoke-super {p0, p1}, Lo/ActivityRecognitionEvent;->d(Ljava/lang/Exception;)V

    .line 74
    iget-object p1, p0, Lo/HdmiControlManager$1;->c:Lo/InputManagerInternal;

    iget-object v0, p0, Lo/HdmiControlManager$1;->b:Ljava/lang/String;

    const-string v1, "VideoThumbnailProducer"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lo/InputManagerInternal;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 64
    check-cast p1, Lo/CompatibilityInfo;

    invoke-virtual {p0, p1}, Lo/HdmiControlManager$1;->d(Lo/CompatibilityInfo;)V

    return-void
.end method

.method protected d(Lo/CompatibilityInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-super {p0, p1}, Lo/ActivityRecognitionEvent;->d(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lo/HdmiControlManager$1;->c:Lo/InputManagerInternal;

    iget-object v1, p0, Lo/HdmiControlManager$1;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v2, "VideoThumbnailProducer"

    invoke-interface {v0, v1, v2, p1}, Lo/InputManagerInternal;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected bridge synthetic e(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 64
    check-cast p1, Lo/CompatibilityInfo;

    invoke-virtual {p0, p1}, Lo/HdmiControlManager$1;->e(Lo/CompatibilityInfo;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lo/CompatibilityInfo;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;)",
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

    .line 106
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "createdThumbnail"

    invoke-static {v0, p1}, Lcom/facebook/common/internal/ImmutableMap;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
