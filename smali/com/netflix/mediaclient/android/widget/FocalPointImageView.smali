.class public Lcom/netflix/mediaclient/android/widget/FocalPointImageView;
.super Lcom/netflix/mediaclient/android/widget/TopCropImageView;
.source "FocalPointImageView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FocalPointImageView"


# instance fields
.field private cropPointXOffsetPercent:F

.field private cropPointYOffsetPercent:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->cropPointXOffsetPercent:F

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->cropPointYOffsetPercent:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->cropPointXOffsetPercent:F

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->cropPointYOffsetPercent:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->cropPointXOffsetPercent:F

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->cropPointYOffsetPercent:F

    return-void
.end method


# virtual methods
.method public recomputeImgMatrix()V
    .locals 9

    const/4 v1, 0x0

    new-instance v3, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->getPaddingRight()I

    move-result v2

    sub-int v4, v0, v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->getPaddingBottom()I

    move-result v2

    sub-int v5, v0, v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v1

    :goto_1
    mul-int v1, v0, v5

    mul-int v6, v2, v4

    if-le v1, v6, :cond_2

    int-to-float v1, v5

    int-to-float v4, v2

    div-float/2addr v1, v4

    :goto_2
    int-to-float v4, v0

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->cropPointXOffsetPercent:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->cropPointXOffsetPercent:F

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v0

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    int-to-float v5, v2

    mul-float/2addr v5, v1

    iget v6, p0, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->cropPointXOffsetPercent:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->cropPointXOffsetPercent:F

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v2

    mul-float/2addr v8, v1

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    neg-int v0, v0

    int-to-float v0, v0

    iget v6, p0, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->cropPointXOffsetPercent:F

    mul-float/2addr v0, v6

    neg-int v2, v2

    int-to-float v2, v2

    iget v6, p0, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->cropPointXOffsetPercent:F

    mul-float/2addr v2, v6

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v3, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    move v2, v1

    goto :goto_1

    :cond_2
    int-to-float v1, v4

    int-to-float v4, v0

    div-float/2addr v1, v4

    goto :goto_2
.end method

.method public setCropPointXOffsetPercent(F)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->cropPointXOffsetPercent:F

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->recomputeImgMatrix()V

    return-void
.end method

.method public setCropPointYOffsetPercent(F)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->cropPointYOffsetPercent:F

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->recomputeImgMatrix()V

    return-void
.end method
