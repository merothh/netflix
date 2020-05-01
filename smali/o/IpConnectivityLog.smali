.class public Lo/IpConnectivityLog;
.super Landroid/graphics/drawable/Drawable;
.source ""


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/RectF;

.field private final c:Landroid/graphics/BitmapShader;

.field private final d:Landroid/graphics/RectF;

.field private final e:Landroid/graphics/RectF;

.field private final f:Landroid/graphics/Paint;

.field private final g:I

.field private final h:I

.field private final i:Landroid/graphics/RectF;

.field private final j:Landroid/graphics/Matrix;

.field private k:Landroid/content/res/ColorStateList;

.field private l:F

.field private m:Z

.field private n:Landroid/widget/ImageView$ScaleType;

.field private o:F


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 44
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/IpConnectivityLog;->d:Landroid/graphics/RectF;

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/IpConnectivityLog;->e:Landroid/graphics/RectF;

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/IpConnectivityLog;->b:Landroid/graphics/RectF;

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    .line 36
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/IpConnectivityLog;->j:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lo/IpConnectivityLog;->o:F

    const/4 v1, 0x0

    .line 39
    iput-boolean v1, p0, Lo/IpConnectivityLog;->m:Z

    .line 40
    iput v0, p0, Lo/IpConnectivityLog;->l:F

    const/high16 v1, -0x1000000

    .line 41
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lo/IpConnectivityLog;->k:Landroid/content/res/ColorStateList;

    .line 42
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v2, p0, Lo/IpConnectivityLog;->n:Landroid/widget/ImageView$ScaleType;

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lo/IpConnectivityLog;->g:I

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lo/IpConnectivityLog;->h:I

    .line 48
    iget-object v2, p0, Lo/IpConnectivityLog;->b:Landroid/graphics/RectF;

    iget v3, p0, Lo/IpConnectivityLog;->g:I

    int-to-float v3, v3

    iget v4, p0, Lo/IpConnectivityLog;->h:I

    int-to-float v4, v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 50
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lo/IpConnectivityLog;->c:Landroid/graphics/BitmapShader;

    .line 51
    iget-object p1, p0, Lo/IpConnectivityLog;->c:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lo/IpConnectivityLog;->j:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 53
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lo/IpConnectivityLog;->a:Landroid/graphics/Paint;

    .line 54
    iget-object p1, p0, Lo/IpConnectivityLog;->a:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object p1, p0, Lo/IpConnectivityLog;->a:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object p1, p0, Lo/IpConnectivityLog;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Lo/IpConnectivityLog;->c:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 58
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lo/IpConnectivityLog;->f:Landroid/graphics/Paint;

    .line 59
    iget-object p1, p0, Lo/IpConnectivityLog;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object p1, p0, Lo/IpConnectivityLog;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    iget-object p1, p0, Lo/IpConnectivityLog;->f:Landroid/graphics/Paint;

    iget-object v0, p0, Lo/IpConnectivityLog;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lo/IpConnectivityLog;->getState()[I

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object p1, p0, Lo/IpConnectivityLog;->f:Landroid/graphics/Paint;

    iget v0, p0, Lo/IpConnectivityLog;->l:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public static b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 102
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 103
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 107
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 108
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 110
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 112
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 113
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 115
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static b(Landroid/graphics/Bitmap;)Lo/IpConnectivityLog;
    .locals 1

    if-eqz p0, :cond_0

    .line 67
    new-instance v0, Lo/IpConnectivityLog;

    invoke-direct {v0, p0}, Lo/IpConnectivityLog;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4

    if-eqz p0, :cond_4

    .line 75
    instance-of v0, p0, Lo/IpConnectivityLog;

    if-eqz v0, :cond_0

    return-object p0

    .line 78
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_2

    .line 79
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    .line 80
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 84
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 85
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v3

    invoke-static {v2}, Lo/IpConnectivityLog;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    .line 91
    :cond_2
    invoke-static {p0}, Lo/IpConnectivityLog;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 93
    new-instance p0, Lo/IpConnectivityLog;

    invoke-direct {p0, v0}, Lo/IpConnectivityLog;-><init>(Landroid/graphics/Bitmap;)V

    return-object p0

    :cond_3
    const-string v0, "RoundedDrawable"

    const-string v1, "Failed to create bitmap from drawable!"

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object p0
.end method

.method private e()V
    .locals 6

    .line 143
    sget-object v0, Lo/IpConnectivityLog$2;->e:[I

    iget-object v1, p0, Lo/IpConnectivityLog;->n:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Lo/IpConnectivityLog;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 200
    iget-object v0, p0, Lo/IpConnectivityLog;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lo/IpConnectivityLog;->b:Landroid/graphics/RectF;

    iget-object v2, p0, Lo/IpConnectivityLog;->d:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 201
    iget-object v0, p0, Lo/IpConnectivityLog;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 202
    iget-object v0, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    iget v1, p0, Lo/IpConnectivityLog;->l:F

    div-float v2, v1, v4

    div-float/2addr v1, v4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 203
    iget-object v0, p0, Lo/IpConnectivityLog;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lo/IpConnectivityLog;->b:Landroid/graphics/RectF;

    iget-object v2, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    .line 223
    :cond_0
    iget-object v0, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Lo/IpConnectivityLog;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 224
    iget-object v0, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    iget v1, p0, Lo/IpConnectivityLog;->l:F

    div-float v3, v1, v4

    div-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 225
    iget-object v0, p0, Lo/IpConnectivityLog;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 226
    iget-object v0, p0, Lo/IpConnectivityLog;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lo/IpConnectivityLog;->b:Landroid/graphics/RectF;

    iget-object v2, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    .line 215
    :cond_1
    iget-object v0, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Lo/IpConnectivityLog;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 216
    iget-object v0, p0, Lo/IpConnectivityLog;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lo/IpConnectivityLog;->b:Landroid/graphics/RectF;

    iget-object v2, p0, Lo/IpConnectivityLog;->d:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 217
    iget-object v0, p0, Lo/IpConnectivityLog;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 218
    iget-object v0, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    iget v1, p0, Lo/IpConnectivityLog;->l:F

    div-float v2, v1, v4

    div-float/2addr v1, v4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 219
    iget-object v0, p0, Lo/IpConnectivityLog;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lo/IpConnectivityLog;->b:Landroid/graphics/RectF;

    iget-object v2, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    .line 207
    :cond_2
    iget-object v0, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Lo/IpConnectivityLog;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 208
    iget-object v0, p0, Lo/IpConnectivityLog;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lo/IpConnectivityLog;->b:Landroid/graphics/RectF;

    iget-object v2, p0, Lo/IpConnectivityLog;->d:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 209
    iget-object v0, p0, Lo/IpConnectivityLog;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 210
    iget-object v0, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    iget v1, p0, Lo/IpConnectivityLog;->l:F

    div-float v2, v1, v4

    div-float/2addr v1, v4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 211
    iget-object v0, p0, Lo/IpConnectivityLog;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lo/IpConnectivityLog;->b:Landroid/graphics/RectF;

    iget-object v2, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    .line 176
    :cond_3
    iget-object v0, p0, Lo/IpConnectivityLog;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 178
    iget v0, p0, Lo/IpConnectivityLog;->g:I

    int-to-float v0, v0

    iget-object v1, p0, Lo/IpConnectivityLog;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    iget v0, p0, Lo/IpConnectivityLog;->h:I

    int-to-float v0, v0

    iget-object v1, p0, Lo/IpConnectivityLog;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 181
    :cond_4
    iget-object v0, p0, Lo/IpConnectivityLog;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lo/IpConnectivityLog;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lo/IpConnectivityLog;->d:Landroid/graphics/RectF;

    .line 182
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lo/IpConnectivityLog;->h:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 181
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 185
    :goto_0
    iget-object v1, p0, Lo/IpConnectivityLog;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lo/IpConnectivityLog;->g:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    sub-float/2addr v1, v2

    mul-float v1, v1, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    .line 186
    iget-object v2, p0, Lo/IpConnectivityLog;->d:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v5, p0, Lo/IpConnectivityLog;->h:I

    int-to-float v5, v5

    mul-float v5, v5, v0

    sub-float/2addr v2, v5

    mul-float v2, v2, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    .line 188
    iget-object v3, p0, Lo/IpConnectivityLog;->j:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 189
    iget-object v0, p0, Lo/IpConnectivityLog;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 191
    iget-object v0, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Lo/IpConnectivityLog;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 192
    iget-object v0, p0, Lo/IpConnectivityLog;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 193
    iget-object v0, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    iget v1, p0, Lo/IpConnectivityLog;->l:F

    div-float v2, v1, v4

    div-float/2addr v1, v4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 194
    iget-object v0, p0, Lo/IpConnectivityLog;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lo/IpConnectivityLog;->b:Landroid/graphics/RectF;

    iget-object v2, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    .line 154
    :cond_5
    iget-object v0, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Lo/IpConnectivityLog;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 155
    iget-object v0, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    iget v1, p0, Lo/IpConnectivityLog;->l:F

    div-float v5, v1, v4

    div-float/2addr v1, v4

    invoke-virtual {v0, v5, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 157
    iget-object v0, p0, Lo/IpConnectivityLog;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 162
    iget v0, p0, Lo/IpConnectivityLog;->g:I

    int-to-float v0, v0

    iget-object v1, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v0, v0, v1

    iget-object v1, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lo/IpConnectivityLog;->h:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 163
    iget-object v0, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lo/IpConnectivityLog;->h:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 164
    iget-object v1, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v4, p0, Lo/IpConnectivityLog;->g:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    sub-float/2addr v1, v4

    mul-float v1, v1, v3

    goto :goto_1

    .line 166
    :cond_6
    iget-object v0, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lo/IpConnectivityLog;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 167
    iget-object v1, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v4, p0, Lo/IpConnectivityLog;->h:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    sub-float/2addr v1, v4

    mul-float v1, v1, v3

    move v2, v1

    const/4 v1, 0x0

    .line 170
    :goto_1
    iget-object v4, p0, Lo/IpConnectivityLog;->j:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 171
    iget-object v0, p0, Lo/IpConnectivityLog;->j:Landroid/graphics/Matrix;

    add-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    iget v4, p0, Lo/IpConnectivityLog;->l:F

    add-float/2addr v1, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 145
    :cond_7
    iget-object v0, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Lo/IpConnectivityLog;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 146
    iget-object v0, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    iget v1, p0, Lo/IpConnectivityLog;->l:F

    div-float v5, v1, v4

    div-float/2addr v1, v4

    invoke-virtual {v0, v5, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 148
    iget-object v0, p0, Lo/IpConnectivityLog;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 149
    iget-object v0, p0, Lo/IpConnectivityLog;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lo/IpConnectivityLog;->g:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    mul-float v1, v1, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    .line 150
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v4, p0, Lo/IpConnectivityLog;->h:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    mul-float v2, v2, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 230
    :goto_2
    iget-object v0, p0, Lo/IpConnectivityLog;->e:Landroid/graphics/RectF;

    iget-object v1, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 231
    iget-object v0, p0, Lo/IpConnectivityLog;->c:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lo/IpConnectivityLog;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ImageView$ScaleType;)Lo/IpConnectivityLog;
    .locals 1

    if-nez p1, :cond_0

    .line 355
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 357
    :cond_0
    iget-object v0, p0, Lo/IpConnectivityLog;->n:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    .line 358
    iput-object p1, p0, Lo/IpConnectivityLog;->n:Landroid/widget/ImageView$ScaleType;

    .line 359
    invoke-direct {p0}, Lo/IpConnectivityLog;->e()V

    :cond_1
    return-object p0
.end method

.method public a(Z)Lo/IpConnectivityLog;
    .locals 0

    .line 345
    iput-boolean p1, p0, Lo/IpConnectivityLog;->m:Z

    return-object p0
.end method

.method public b(I)Lo/IpConnectivityLog;
    .locals 1

    int-to-float p1, p1

    .line 317
    iput p1, p0, Lo/IpConnectivityLog;->l:F

    .line 318
    iget-object p1, p0, Lo/IpConnectivityLog;->f:Landroid/graphics/Paint;

    iget v0, p0, Lo/IpConnectivityLog;->l:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object p0
.end method

.method public c(F)Lo/IpConnectivityLog;
    .locals 0

    .line 308
    iput p1, p0, Lo/IpConnectivityLog;->o:F

    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 246
    iget-boolean v0, p0, Lo/IpConnectivityLog;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 247
    iget v0, p0, Lo/IpConnectivityLog;->l:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 248
    iget-object v0, p0, Lo/IpConnectivityLog;->e:Landroid/graphics/RectF;

    iget-object v1, p0, Lo/IpConnectivityLog;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 249
    iget-object v0, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Lo/IpConnectivityLog;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lo/IpConnectivityLog;->e:Landroid/graphics/RectF;

    iget-object v1, p0, Lo/IpConnectivityLog;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 254
    :cond_1
    iget v0, p0, Lo/IpConnectivityLog;->l:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 255
    iget-object v0, p0, Lo/IpConnectivityLog;->e:Landroid/graphics/RectF;

    iget v2, p0, Lo/IpConnectivityLog;->o:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Lo/IpConnectivityLog;->o:F

    .line 256
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v3, p0, Lo/IpConnectivityLog;->a:Landroid/graphics/Paint;

    .line 255
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 257
    iget-object v0, p0, Lo/IpConnectivityLog;->i:Landroid/graphics/RectF;

    iget v1, p0, Lo/IpConnectivityLog;->o:F

    iget-object v2, p0, Lo/IpConnectivityLog;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 259
    :cond_2
    iget-object v0, p0, Lo/IpConnectivityLog;->e:Landroid/graphics/RectF;

    iget v1, p0, Lo/IpConnectivityLog;->o:F

    iget-object v2, p0, Lo/IpConnectivityLog;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public e(Landroid/content/res/ColorStateList;)Lo/IpConnectivityLog;
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 335
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lo/IpConnectivityLog;->k:Landroid/content/res/ColorStateList;

    .line 336
    iget-object p1, p0, Lo/IpConnectivityLog;->f:Landroid/graphics/Paint;

    iget-object v0, p0, Lo/IpConnectivityLog;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lo/IpConnectivityLog;->getState()[I

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 300
    iget v0, p0, Lo/IpConnectivityLog;->h:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 295
    iget v0, p0, Lo/IpConnectivityLog;->g:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lo/IpConnectivityLog;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 236
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 238
    iget-object v0, p0, Lo/IpConnectivityLog;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 240
    invoke-direct {p0}, Lo/IpConnectivityLog;->e()V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2

    .line 129
    iget-object v0, p0, Lo/IpConnectivityLog;->k:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 130
    iget-object v1, p0, Lo/IpConnectivityLog;->f:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 131
    iget-object p1, p0, Lo/IpConnectivityLog;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x1

    return p1

    .line 134
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 271
    iget-object v0, p0, Lo/IpConnectivityLog;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 272
    invoke-virtual {p0}, Lo/IpConnectivityLog;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lo/IpConnectivityLog;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 278
    invoke-virtual {p0}, Lo/IpConnectivityLog;->invalidateSelf()V

    return-void
.end method

.method public setDither(Z)V
    .locals 1

    .line 283
    iget-object v0, p0, Lo/IpConnectivityLog;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 284
    invoke-virtual {p0}, Lo/IpConnectivityLog;->invalidateSelf()V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .line 289
    iget-object v0, p0, Lo/IpConnectivityLog;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 290
    invoke-virtual {p0}, Lo/IpConnectivityLog;->invalidateSelf()V

    return-void
.end method
