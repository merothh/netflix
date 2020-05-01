.class public Lcom/makeramen/RoundedImageView;
.super Landroid/widget/ImageView;
.source "RoundedImageView.java"


# static fields
.field public static final DEFAULT_BORDER_WIDTH:I = 0x0

.field public static final DEFAULT_RADIUS:I = 0x0

.field private static final SCALE_TYPES:[Landroid/widget/ImageView$ScaleType;

.field public static final TAG:Ljava/lang/String; = "RoundedImageView"


# instance fields
.field private mBorderColor:Landroid/content/res/ColorStateList;

.field private mBorderWidth:I

.field private mCornerRadius:I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mOval:Z

.field private mResource:I

.field private mRoundBackground:Z

.field private mScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    const/4 v1, 0x0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/makeramen/RoundedImageView;->SCALE_TYPES:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/makeramen/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/makeramen/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/high16 v5, -0x1000000

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v3, p0, Lcom/makeramen/RoundedImageView;->mCornerRadius:I

    iput v3, p0, Lcom/makeramen/RoundedImageView;->mBorderWidth:I

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    iput-boolean v3, p0, Lcom/makeramen/RoundedImageView;->mOval:Z

    iput-boolean v3, p0, Lcom/makeramen/RoundedImageView;->mRoundBackground:Z

    sget-object v0, Lcom/netflix/mediaclient/R$styleable;->RoundedImageView:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-ltz v1, :cond_3

    sget-object v2, Lcom/makeramen/RoundedImageView;->SCALE_TYPES:[Landroid/widget/ImageView$ScaleType;

    aget-object v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/makeramen/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/makeramen/RoundedImageView;->mCornerRadius:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/makeramen/RoundedImageView;->mBorderWidth:I

    iget v1, p0, Lcom/makeramen/RoundedImageView;->mCornerRadius:I

    if-gez v1, :cond_0

    iput v3, p0, Lcom/makeramen/RoundedImageView;->mCornerRadius:I

    :cond_0
    iget v1, p0, Lcom/makeramen/RoundedImageView;->mBorderWidth:I

    if-gez v1, :cond_1

    iput v3, p0, Lcom/makeramen/RoundedImageView;->mBorderWidth:I

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/makeramen/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/makeramen/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_2

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/makeramen/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/makeramen/RoundedImageView;->mRoundBackground:Z

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/makeramen/RoundedImageView;->mOval:Z

    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateDrawableAttrs()V

    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateBackgroundDrawableAttrs()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_3
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/makeramen/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method private resolveResource()Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/makeramen/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget v2, p0, Lcom/makeramen/RoundedImageView;->mResource:I

    if-eqz v2, :cond_1

    :try_start_0
    iget v2, p0, Lcom/makeramen/RoundedImageView;->mResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/makeramen/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "RoundedImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to find resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/makeramen/RoundedImageView;->mResource:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iput v5, p0, Lcom/makeramen/RoundedImageView;->mResource:I

    goto :goto_1
.end method

.method private updateAttrs(Landroid/graphics/drawable/Drawable;Z)V
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/makeramen/RoundedDrawable;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/makeramen/RoundedDrawable;

    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Lcom/makeramen/RoundedDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)Lcom/makeramen/RoundedDrawable;

    move-result-object v2

    if-eqz p2, :cond_2

    iget-boolean v0, p0, Lcom/makeramen/RoundedImageView;->mRoundBackground:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/makeramen/RoundedDrawable;->setCornerRadius(F)Lcom/makeramen/RoundedDrawable;

    move-result-object v2

    if-eqz p2, :cond_3

    iget-boolean v0, p0, Lcom/makeramen/RoundedImageView;->mRoundBackground:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Lcom/makeramen/RoundedDrawable;->setBorderWidth(I)Lcom/makeramen/RoundedDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/makeramen/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/makeramen/RoundedDrawable;->setBorderColors(Landroid/content/res/ColorStateList;)Lcom/makeramen/RoundedDrawable;

    move-result-object v0

    iget-boolean v1, p0, Lcom/makeramen/RoundedImageView;->mOval:Z

    invoke-virtual {v0, v1}, Lcom/makeramen/RoundedDrawable;->setOval(Z)Lcom/makeramen/RoundedDrawable;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/makeramen/RoundedImageView;->mCornerRadius:I

    int-to-float v0, v0

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/makeramen/RoundedImageView;->mBorderWidth:I

    goto :goto_2

    :cond_4
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/makeramen/RoundedImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private updateBackgroundDrawableAttrs()V
    .locals 0

    return-void
.end method

.method private updateDrawableAttrs()V
    .locals 2

    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/makeramen/RoundedImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/makeramen/RoundedImageView;->invalidate()V

    return-void
.end method

.method public getBorderColor()I
    .locals 1

    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBorderWidth()I
    .locals 1

    iget v0, p0, Lcom/makeramen/RoundedImageView;->mBorderWidth:I

    return v0
.end method

.method public getCornerRadius()I
    .locals 1

    iget v0, p0, Lcom/makeramen/RoundedImageView;->mCornerRadius:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public isOval()Z
    .locals 1

    iget-boolean v0, p0, Lcom/makeramen/RoundedImageView;->mOval:Z

    return v0
.end method

.method public isRoundBackground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/makeramen/RoundedImageView;->mRoundBackground:Z

    return v0
.end method

.method public setBorderColor(I)V
    .locals 1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/makeramen/RoundedImageView;->setBorderColors(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBorderColors(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    :goto_1
    iput-object p1, p0, Lcom/makeramen/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateDrawableAttrs()V

    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateBackgroundDrawableAttrs()V

    iget v0, p0, Lcom/makeramen/RoundedImageView;->mBorderWidth:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/makeramen/RoundedImageView;->invalidate()V

    goto :goto_0

    :cond_2
    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_1
.end method

.method public setBorderWidth(I)V
    .locals 1

    iget v0, p0, Lcom/makeramen/RoundedImageView;->mBorderWidth:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/makeramen/RoundedImageView;->mBorderWidth:I

    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateDrawableAttrs()V

    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateBackgroundDrawableAttrs()V

    invoke-virtual {p0}, Lcom/makeramen/RoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public setCornerRadius(I)V
    .locals 1

    iget v0, p0, Lcom/makeramen/RoundedImageView;->mCornerRadius:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/makeramen/RoundedImageView;->mCornerRadius:I

    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateDrawableAttrs()V

    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateBackgroundDrawableAttrs()V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/makeramen/RoundedImageView;->mResource:I

    invoke-static {p1}, Lcom/makeramen/RoundedDrawable;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/makeramen/RoundedDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateDrawableAttrs()V

    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/makeramen/RoundedImageView;->mResource:I

    invoke-static {p1}, Lcom/makeramen/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateDrawableAttrs()V

    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    iget v0, p0, Lcom/makeramen/RoundedImageView;->mResource:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/makeramen/RoundedImageView;->mResource:I

    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->resolveResource()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateDrawableAttrs()V

    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/makeramen/RoundedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/makeramen/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOval(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/makeramen/RoundedImageView;->mOval:Z

    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateDrawableAttrs()V

    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateBackgroundDrawableAttrs()V

    invoke-virtual {p0}, Lcom/makeramen/RoundedImageView;->invalidate()V

    return-void
.end method

.method public setRoundBackground(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/makeramen/RoundedImageView;->mRoundBackground:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/makeramen/RoundedImageView;->mRoundBackground:Z

    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateBackgroundDrawableAttrs()V

    invoke-virtual {p0}, Lcom/makeramen/RoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/makeramen/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v0, Lcom/makeramen/RoundedImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateDrawableAttrs()V

    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateBackgroundDrawableAttrs()V

    invoke-virtual {p0}, Lcom/makeramen/RoundedImageView;->invalidate()V

    :cond_1
    return-void

    :pswitch_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
