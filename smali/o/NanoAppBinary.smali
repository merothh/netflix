.class public Lo/NanoAppBinary;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final c:Lcom/facebook/common/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x2

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x7

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x5

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 33
    invoke-static {v1}, Lcom/facebook/common/internal/ImmutableList;->a([Ljava/lang/Object;)Lcom/facebook/common/internal/ImmutableList;

    move-result-object v0

    sput-object v0, Lo/NanoAppBinary;->c:Lcom/facebook/common/internal/ImmutableList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 1

    const/16 v0, 0x8

    .line 168
    div-int/2addr v0, p0

    const/4 p0, 0x1

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static a(Lo/CameraDevice;Lo/LegacyFaceDetectMapper;)I
    .locals 1

    .line 103
    invoke-virtual {p0}, Lo/CameraDevice;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 106
    :cond_0
    invoke-static {p1}, Lo/NanoAppBinary;->c(Lo/LegacyFaceDetectMapper;)I

    move-result p1

    .line 107
    invoke-virtual {p0}, Lo/CameraDevice;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    return p1

    .line 110
    :cond_1
    invoke-virtual {p0}, Lo/CameraDevice;->b()I

    move-result p0

    add-int/2addr p1, p0

    rem-int/lit16 p1, p1, 0x168

    return p1
.end method

.method public static b(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Lo/CameraConstrainedHighSpeedCaptureSession;II)F
    .locals 3

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 142
    :cond_0
    iget v0, p0, Lo/CameraConstrainedHighSpeedCaptureSession;->c:I

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 143
    iget v1, p0, Lo/CameraConstrainedHighSpeedCaptureSession;->a:I

    int-to-float v1, v1

    int-to-float p2, p2

    div-float/2addr v1, p2

    .line 144
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v1, p1, v0

    .line 146
    iget v2, p0, Lo/CameraConstrainedHighSpeedCaptureSession;->d:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 147
    iget v0, p0, Lo/CameraConstrainedHighSpeedCaptureSession;->d:F

    div-float/2addr v0, p1

    :cond_1
    mul-float p1, p2, v0

    .line 149
    iget v1, p0, Lo/CameraConstrainedHighSpeedCaptureSession;->d:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    .line 150
    iget p0, p0, Lo/CameraConstrainedHighSpeedCaptureSession;->d:F

    div-float v0, p0, p2

    :cond_2
    return v0
.end method

.method private static c(Lo/LegacyFaceDetectMapper;)I
    .locals 2

    .line 235
    invoke-virtual {p0}, Lo/LegacyFaceDetectMapper;->h()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 239
    :cond_0
    invoke-virtual {p0}, Lo/LegacyFaceDetectMapper;->h()I

    move-result p0

    return p0
.end method

.method public static c(Lo/LegacyFaceDetectMapper;Lo/CameraDevice;)Landroid/graphics/Matrix;
    .locals 2

    .line 184
    sget-object v0, Lo/NanoAppBinary;->c:Lcom/facebook/common/internal/ImmutableList;

    .line 185
    invoke-virtual {p0}, Lo/LegacyFaceDetectMapper;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Lcom/facebook/common/internal/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-static {p1, p0}, Lo/NanoAppBinary;->d(Lo/CameraDevice;Lo/LegacyFaceDetectMapper;)I

    move-result p0

    .line 190
    invoke-static {p0}, Lo/NanoAppBinary;->d(I)Landroid/graphics/Matrix;

    move-result-object p0

    goto :goto_0

    .line 193
    :cond_0
    invoke-static {p1, p0}, Lo/NanoAppBinary;->a(Lo/CameraDevice;Lo/LegacyFaceDetectMapper;)I

    move-result p0

    if-eqz p0, :cond_1

    .line 195
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p0, p0

    .line 196
    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    move-object p0, p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static d(FF)I
    .locals 1

    const/high16 v0, 0x41000000    # 8.0f

    mul-float p0, p0, v0

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static d(Lo/CameraDevice;Lo/LegacyFaceDetectMapper;)I
    .locals 2

    .line 122
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->j()I

    move-result p1

    .line 123
    sget-object v0, Lo/NanoAppBinary;->c:Lcom/facebook/common/internal/ImmutableList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/common/internal/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0}, Lo/CameraDevice;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    invoke-virtual {p0}, Lo/CameraDevice;->b()I

    move-result v0

    .line 131
    :cond_0
    div-int/lit8 v0, v0, 0x5a

    .line 132
    sget-object p0, Lo/NanoAppBinary;->c:Lcom/facebook/common/internal/ImmutableList;

    add-int/2addr p1, v0

    .line 133
    invoke-virtual {p0}, Lcom/facebook/common/internal/ImmutableList;->size()I

    move-result v0

    rem-int/2addr p1, v0

    .line 132
    invoke-virtual {p0, p1}, Lcom/facebook/common/internal/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 125
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only accepts inverted exif orientations"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static d(I)Landroid/graphics/Matrix;
    .locals 4

    .line 211
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    if-eq p0, v1, :cond_3

    const/4 v1, 0x7

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/high16 p0, 0x42b40000    # 90.0f

    .line 225
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 226
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    :cond_1
    const/high16 p0, 0x43340000    # 180.0f

    .line 221
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 222
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    :cond_2
    const/high16 p0, -0x3d4c0000    # -90.0f

    .line 217
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 218
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 214
    :cond_3
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_0
    return-object v0
.end method

.method public static e(Lo/CameraDevice;Lo/CameraConstrainedHighSpeedCaptureSession;Lo/LegacyFaceDetectMapper;Z)I
    .locals 4

    const/16 v0, 0x8

    if-nez p3, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    return v0

    .line 78
    :cond_1
    invoke-static {p0, p2}, Lo/NanoAppBinary;->a(Lo/CameraDevice;Lo/LegacyFaceDetectMapper;)I

    move-result p3

    .line 80
    sget-object v1, Lo/NanoAppBinary;->c:Lcom/facebook/common/internal/ImmutableList;

    invoke-virtual {p2}, Lo/LegacyFaceDetectMapper;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/common/internal/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 81
    invoke-static {p0, p2}, Lo/NanoAppBinary;->d(Lo/CameraDevice;Lo/LegacyFaceDetectMapper;)I

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    const/16 v1, 0x5a

    const/4 v3, 0x1

    if-eq p3, v1, :cond_3

    const/16 v1, 0x10e

    if-eq p3, v1, :cond_3

    const/4 p3, 0x5

    if-eq p0, p3, :cond_3

    const/4 p3, 0x7

    if-ne p0, p3, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_5

    .line 90
    invoke-virtual {p2}, Lo/LegacyFaceDetectMapper;->g()I

    move-result p0

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Lo/LegacyFaceDetectMapper;->i()I

    move-result p0

    :goto_1
    if-eqz v2, :cond_6

    .line 92
    invoke-virtual {p2}, Lo/LegacyFaceDetectMapper;->i()I

    move-result p2

    goto :goto_2

    :cond_6
    invoke-virtual {p2}, Lo/LegacyFaceDetectMapper;->g()I

    move-result p2

    .line 94
    :goto_2
    invoke-static {p1, p0, p2}, Lo/NanoAppBinary;->c(Lo/CameraConstrainedHighSpeedCaptureSession;II)F

    move-result p0

    .line 95
    iget p1, p1, Lo/CameraConstrainedHighSpeedCaptureSession;->e:F

    invoke-static {p0, p1}, Lo/NanoAppBinary;->d(FF)I

    move-result p0

    if-le p0, v0, :cond_7

    return v0

    :cond_7
    if-ge p0, v3, :cond_8

    const/4 p0, 0x1

    :cond_8
    return p0
.end method

.method public static e(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x10e

    if-gt p0, v0, :cond_0

    .line 46
    rem-int/lit8 p0, p0, 0x5a

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
