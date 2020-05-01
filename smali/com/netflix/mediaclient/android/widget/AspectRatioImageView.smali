.class public Lcom/netflix/mediaclient/android/widget/AspectRatioImageView;
.super Landroid/widget/ImageView;
.source "AspectRatioImageView.java"


# static fields
.field public static final MEASURE_BY_HEIGHT:I = 0x1

.field public static final MEASURE_BY_WIDTH:I


# instance fields
.field private mMeasureBy:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AspectRatioImageView;->mMeasureBy:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/netflix/mediaclient/android/widget/AspectRatioImageView;->mMeasureBy:I

    sget-object v0, Lcom/netflix/mediaclient/R$styleable;->AspectRatioImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/AspectRatioImageView;->mMeasureBy:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AspectRatioImageView;->mMeasureBy:I

    return-void
.end method


# virtual methods
.method public getMeasureBy()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/AspectRatioImageView;->mMeasureBy:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AspectRatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/AspectRatioImageView;->mMeasureBy:I

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    mul-int/2addr v2, v1

    div-int v0, v2, v0

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/android/widget/AspectRatioImageView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-gtz v1, :cond_2

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    mul-int/2addr v2, v0

    div-int v1, v2, v1

    goto :goto_1

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    goto :goto_0
.end method

.method public setMeasureBy(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "nvalid measureBy type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/AspectRatioImageView;->mMeasureBy:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AspectRatioImageView;->requestLayout()V

    return-void
.end method
