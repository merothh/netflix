.class public Lcom/netflix/mediaclient/android/widget/TopCropImageView;
.super Lcom/netflix/mediaclient/android/widget/AdvancedImageView;
.source "TopCropImageView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TopCropImageView"


# instance fields
.field private cropPointYOffset:I

.field private isTopCropEnabled:Z

.field private lastScaleType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->isTopCropEnabled:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->isTopCropEnabled:Z

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->isTopCropEnabled:Z

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v1, "scaleType"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->isTopCropEnabled:Z

    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/R$styleable;->TopCropImageView:[I

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->cropPointYOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_0
    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->lastScaleType:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->isTopCropEnabled:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->recomputeImgMatrix()V

    return-void
.end method

.method public recomputeImgMatrix()V
    .locals 9

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->isTopCropEnabled:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v3, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getPaddingRight()I

    move-result v2

    sub-int v4, v0, v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getPaddingBottom()I

    move-result v2

    sub-int v5, v0, v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v1

    :goto_2
    mul-int v1, v0, v5

    mul-int v6, v2, v4

    if-le v1, v6, :cond_4

    int-to-float v1, v5

    int-to-float v6, v2

    div-float/2addr v1, v6

    :goto_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "TopCropImageView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Matrix scale: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", drawable height: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ", drawable width: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", view height: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", view width: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", crop y-offset: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->cropPointYOffset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->cropPointYOffset:I

    int-to-float v2, v2

    invoke-virtual {v3, v1, v1, v0, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    move v2, v1

    goto :goto_2

    :cond_4
    int-to-float v1, v4

    int-to-float v6, v0

    div-float/2addr v1, v6

    goto :goto_3
.end method

.method public setCropPointYOffsetPx(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->cropPointYOffset:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->recomputeImgMatrix()V

    return-void
.end method

.method public setCutomCroppingEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->isTopCropEnabled:Z

    if-eqz p1, :cond_1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->recomputeImgMatrix()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->lastScaleType:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->lastScaleType:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->recomputeImgMatrix()V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method
