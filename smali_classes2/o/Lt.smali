.class public Lo/Lt;
.super Lo/Db;
.source ""


# direct methods
.method public constructor <init>(Landroid/view/TextureView;ZIFLcom/netflix/mediaclient/api/res/AssetType;Lo/Db$TaskDescription;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p6}, Lo/Db;-><init>(Landroid/view/TextureView;ZIFLcom/netflix/mediaclient/api/res/AssetType;Lo/Db$TaskDescription;)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 8

    .line 31
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lo/Lt;->d:Landroid/view/Surface;

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lo/Lt;->f:Z

    .line 45
    iget-object p1, p0, Lo/Lt;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 46
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lo/Lt;->c:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 50
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 51
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 53
    new-instance p1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 54
    iget-wide v4, p0, Lo/Lt;->g:J

    iget-wide v6, p0, Lo/Lt;->j:J

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    const/16 v2, 0x13

    .line 55
    invoke-virtual {p1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v3, 0x12

    .line 56
    :try_start_1
    invoke-virtual {p1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 57
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    :goto_0
    const/4 v2, 0x0

    .line 59
    :goto_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v3, "SPY-9199 Failed to retrieve MediaMetadata"

    invoke-interface {v1, v3}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const/high16 p1, 0x3f800000    # 1.0f

    if-le p2, p3, :cond_0

    int-to-float v1, p2

    div-float/2addr v1, v0

    int-to-float p3, p3

    div-float/2addr p3, v2

    div-float p3, v1, p3

    goto :goto_3

    :cond_0
    const/high16 p3, 0x3f800000    # 1.0f

    .line 71
    :goto_3
    div-int/lit8 p2, p2, 0x2

    const v0, 0x3ecccccd    # 0.4f

    mul-float v2, v2, v0

    float-to-int v0, v2

    .line 74
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p2, p2

    int-to-float v0, v0

    .line 75
    invoke-virtual {v1, p1, p3, p2, v0}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 76
    iget-object p1, p0, Lo/Lt;->b:Landroid/view/TextureView;

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 78
    :cond_1
    invoke-virtual {p0}, Lo/Lt;->d()V

    return-void
.end method
