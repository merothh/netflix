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

    .prologue
    .line 22
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

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/makeramen/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/makeramen/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/high16 v5, -0x1000000

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput v3, p0, Lcom/makeramen/RoundedImageView;->mCornerRadius:I

    .line 34
    iput v3, p0, Lcom/makeramen/RoundedImageView;->mBorderWidth:I

    .line 36
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 37
    iput-boolean v3, p0, Lcom/makeramen/RoundedImageView;->mOval:Z

    .line 38
    iput-boolean v3, p0, Lcom/makeramen/RoundedImageView;->mRoundBackground:Z

    .line 58
    sget-object v0, Lcom/netflix/mediaclient/R$styleable;->RoundedImageView:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 61
    if-ltz v1, :cond_3

    .line 62
    sget-object v2, Lcom/makeramen/RoundedImageView;->SCALE_TYPES:[Landroid/widget/ImageView$ScaleType;

    aget-object v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/makeramen/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 68
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/makeramen/RoundedImageView;->mCornerRadius:I

    .line 69
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/makeramen/RoundedImageView;->mBorderWidth:I

    .line 72
    iget v1, p0, Lcom/makeramen/RoundedImageView;->mCornerRadius:I

    if-gez v1, :cond_0

    .line 73
    iput v3, p0, Lcom/makeramen/RoundedImageView;->mCornerRadius:I

    .line 75
    :cond_0
    iget v1, p0, Lcom/makeramen/RoundedImageView;->mBorderWidth:I

    if-gez v1, :cond_1

    .line 76
    iput v3, p0, Lcom/makeramen/RoundedImageView;->mBorderWidth:I

    .line 79
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/makeramen/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 80
    iget-object v1, p0, Lcom/makeramen/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_2

    .line 81
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/makeramen/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 84
    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/makeramen/RoundedImageView;->mRoundBackground:Z

    .line 85
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/makeramen/RoundedImageView;->mOval:Z

    .line 87
    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateDrawableAttrs()V

    .line 88
    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateBackgroundDrawableAttrs()V

    .line 90
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    return-void

    .line 65
    :cond_3
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/makeramen/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method private resolveResource()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/makeramen/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 180
    if-nez v1, :cond_0

    .line 195
    :goto_0
    return-object v0

    .line 186
    :cond_0
    iget v2, p0, Lcom/makeramen/RoundedImageView;->mResource:I

    if-eqz v2, :cond_1

    .line 188
    :try_start_0
    iget v2, p0, Lcom/makeramen/RoundedImageView;->mResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 195
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/makeramen/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v1

    .line 190
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

    .line 192
    iput v5, p0, Lcom/makeramen/RoundedImageView;->mResource:I

    goto :goto_1
.end method

.method private updateAttrs(Landroid/graphics/drawable/Drawable;Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 234
    if-nez p1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    instance-of v0, p1, Lcom/makeramen/RoundedDrawable;

    if-eqz v0, :cond_4

    .line 239
    check-cast p1, Lcom/makeramen/RoundedDrawable;

    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 240
    invoke-virtual {p1, v0}, Lcom/makeramen/RoundedDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)Lcom/makeramen/RoundedDrawable;

    move-result-object v2

    if-eqz p2, :cond_2

    iget-boolean v0, p0, Lcom/makeramen/RoundedImageView;->mRoundBackground:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 241
    :goto_1
    invoke-virtual {v2, v0}, Lcom/makeramen/RoundedDrawable;->setCornerRadius(F)Lcom/makeramen/RoundedDrawable;

    move-result-object v2

    if-eqz p2, :cond_3

    iget-boolean v0, p0, Lcom/makeramen/RoundedImageView;->mRoundBackground:Z

    if-nez v0, :cond_3

    move v0, v1

    .line 242
    :goto_2
    invoke-virtual {v2, v0}, Lcom/makeramen/RoundedDrawable;->setBorderWidth(I)Lcom/makeramen/RoundedDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/makeramen/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 243
    invoke-virtual {v0, v1}, Lcom/makeramen/RoundedDrawable;->setBorderColors(Landroid/content/res/ColorStateList;)Lcom/makeramen/RoundedDrawable;

    move-result-object v0

    iget-boolean v1, p0, Lcom/makeramen/RoundedImageView;->mOval:Z

    .line 244
    invoke-virtual {v0, v1}, Lcom/makeramen/RoundedDrawable;->setOval(Z)Lcom/makeramen/RoundedDrawable;

    goto :goto_0

    .line 240
    :cond_2
    iget v0, p0, Lcom/makeramen/RoundedImageView;->mCornerRadius:I

    int-to-float v0, v0

    goto :goto_1

    .line 241
    :cond_3
    iget v0, p0, Lcom/makeramen/RoundedImageView;->mBorderWidth:I

    goto :goto_2

    .line 245
    :cond_4
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    .line 247
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 248
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    .line 249
    :goto_3
    if-ge v1, v0, :cond_0

    .line 250
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/makeramen/RoundedImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Z)V

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private updateBackgroundDrawableAttrs()V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method private updateDrawableAttrs()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/makeramen/RoundedImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Z)V

    .line 227
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 96
    invoke-virtual {p0}, Lcom/makeramen/RoundedImageView;->invalidate()V

    .line 97
    return-void
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBorderWidth()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/makeramen/RoundedImageView;->mBorderWidth:I

    return v0
.end method

.method public getCornerRadius()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/makeramen/RoundedImageView;->mCornerRadius:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public isOval()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/makeramen/RoundedImageView;->mOval:Z

    return v0
.end method

.method public isRoundBackground()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/makeramen/RoundedImageView;->mRoundBackground:Z

    return v0
.end method

.method public setBorderColor(I)V
    .locals 1

    .prologue
    .line 289
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/makeramen/RoundedImageView;->setBorderColors(Landroid/content/res/ColorStateList;)V

    .line 290
    return-void
.end method

.method public setBorderColors(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    if-eqz p1, :cond_2

    .line 302
    :goto_1
    iput-object p1, p0, Lcom/makeramen/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 303
    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateDrawableAttrs()V

    .line 304
    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateBackgroundDrawableAttrs()V

    .line 305
    iget v0, p0, Lcom/makeramen/RoundedImageView;->mBorderWidth:I

    if-lez v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/makeramen/RoundedImageView;->invalidate()V

    goto :goto_0

    .line 301
    :cond_2
    const/high16 v0, -0x1000000

    .line 302
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_1
.end method

.method public setBorderWidth(I)V
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/makeramen/RoundedImageView;->mBorderWidth:I

    if-ne v0, p1, :cond_0

    .line 282
    :goto_0
    return-void

    .line 278
    :cond_0
    iput p1, p0, Lcom/makeramen/RoundedImageView;->mBorderWidth:I

    .line 279
    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateDrawableAttrs()V

    .line 280
    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateBackgroundDrawableAttrs()V

    .line 281
    invoke-virtual {p0}, Lcom/makeramen/RoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public setCornerRadius(I)V
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/makeramen/RoundedImageView;->mCornerRadius:I

    if-ne v0, p1, :cond_0

    .line 267
    :goto_0
    return-void

    .line 264
    :cond_0
    iput p1, p0, Lcom/makeramen/RoundedImageView;->mCornerRadius:I

    .line 265
    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateDrawableAttrs()V

    .line 266
    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateBackgroundDrawableAttrs()V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lcom/makeramen/RoundedImageView;->mResource:I

    .line 158
    invoke-static {p1}, Lcom/makeramen/RoundedDrawable;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/makeramen/RoundedDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 159
    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateDrawableAttrs()V

    .line 160
    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/makeramen/RoundedImageView;->mResource:I

    .line 150
    invoke-static {p1}, Lcom/makeramen/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 151
    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateDrawableAttrs()V

    .line 152
    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/makeramen/RoundedImageView;->mResource:I

    if-eq v0, p1, :cond_0

    .line 166
    iput p1, p0, Lcom/makeramen/RoundedImageView;->mResource:I

    .line 167
    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->resolveResource()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 168
    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateDrawableAttrs()V

    .line 169
    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 175
    invoke-virtual {p0}, Lcom/makeramen/RoundedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/makeramen/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    return-void
.end method

.method public setOval(Z)V
    .locals 0

    .prologue
    .line 315
    iput-boolean p1, p0, Lcom/makeramen/RoundedImageView;->mOval:Z

    .line 316
    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateDrawableAttrs()V

    .line 317
    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateBackgroundDrawableAttrs()V

    .line 318
    invoke-virtual {p0}, Lcom/makeramen/RoundedImageView;->invalidate()V

    .line 319
    return-void
.end method

.method public setRoundBackground(Z)V
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/makeramen/RoundedImageView;->mRoundBackground:Z

    if-ne v0, p1, :cond_0

    .line 333
    :goto_0
    return-void

    .line 330
    :cond_0
    iput-boolean p1, p0, Lcom/makeramen/RoundedImageView;->mRoundBackground:Z

    .line 331
    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateBackgroundDrawableAttrs()V

    .line 332
    invoke-virtual {p0}, Lcom/makeramen/RoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    .line 124
    iput-object p1, p0, Lcom/makeramen/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 126
    sget-object v0, Lcom/makeramen/RoundedImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 137
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 141
    :goto_0
    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateDrawableAttrs()V

    .line 142
    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->updateBackgroundDrawableAttrs()V

    .line 143
    invoke-virtual {p0}, Lcom/makeramen/RoundedImageView;->invalidate()V

    .line 145
    :cond_1
    return-void

    .line 134
    :pswitch_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 126
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
