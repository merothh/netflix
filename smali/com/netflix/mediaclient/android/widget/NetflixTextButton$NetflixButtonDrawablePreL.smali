.class Lcom/netflix/mediaclient/android/widget/NetflixTextButton$NetflixButtonDrawablePreL;
.super Landroid/graphics/drawable/StateListDrawable;
.source "NetflixTextButton.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;)V
    .locals 8

    .prologue
    const v4, -0x101009e

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 243
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 244
    iget v0, p1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->animationDuration:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$NetflixButtonDrawablePreL;->setEnterFadeDuration(I)V

    .line 245
    iget v0, p1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->animationDuration:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$NetflixButtonDrawablePreL;->setExitFadeDuration(I)V

    .line 247
    new-array v0, v6, [I

    aput v4, v0, v5

    iget-object v1, p1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->buttonColor:Landroid/content/res/ColorStateList;

    new-array v2, v6, [I

    aput v4, v2, v5

    .line 250
    invoke-virtual {v1, v2, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget-object v2, p1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->strokeColor:Landroid/content/res/ColorStateList;

    new-array v3, v6, [I

    aput v4, v3, v5

    .line 251
    invoke-virtual {v2, v3, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget v3, p1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->strokeWidth:I

    iget v4, p1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->cornerRadius:I

    .line 249
    invoke-static {v1, v2, v3, v4}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$NetflixButtonDrawablePreL;->createRoundRectangleDrawable(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 247
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$NetflixButtonDrawablePreL;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 256
    new-array v0, v6, [I

    const v1, 0x10100a7

    aput v1, v0, v5

    iget-object v1, p1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->buttonColor:Landroid/content/res/ColorStateList;

    new-array v2, v7, [I

    fill-array-data v2, :array_0

    .line 259
    invoke-virtual {v1, v2, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget-object v2, p1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->strokeColor:Landroid/content/res/ColorStateList;

    new-array v3, v7, [I

    fill-array-data v3, :array_1

    .line 260
    invoke-virtual {v2, v3, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget v3, p1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->strokeWidth:I

    iget v4, p1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->cornerRadius:I

    .line 258
    invoke-static {v1, v2, v3, v4}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$NetflixButtonDrawablePreL;->createRoundRectangleDrawable(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 256
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$NetflixButtonDrawablePreL;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 264
    new-array v0, v5, [I

    iget-object v1, p1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->buttonColor:Landroid/content/res/ColorStateList;

    new-array v2, v7, [I

    fill-array-data v2, :array_2

    .line 267
    invoke-virtual {v1, v2, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget-object v2, p1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->strokeColor:Landroid/content/res/ColorStateList;

    new-array v3, v7, [I

    fill-array-data v3, :array_3

    .line 268
    invoke-virtual {v2, v3, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget v3, p1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->strokeWidth:I

    iget v4, p1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->cornerRadius:I

    .line 266
    invoke-static {v1, v2, v3, v4}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$NetflixButtonDrawablePreL;->createRoundRectangleDrawable(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 264
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$NetflixButtonDrawablePreL;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 272
    return-void

    .line 256
    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data

    .line 259
    :array_1
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data

    .line 264
    :array_2
    .array-data 4
        0x101009e
        -0x10100a7
    .end array-data

    .line 267
    :array_3
    .array-data 4
        0x101009e
        -0x10100a7
    .end array-data
.end method

.method private static createRoundRectangleDrawable(IIII)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 275
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 276
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 277
    if-lez p2, :cond_0

    .line 278
    invoke-virtual {v0, p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 280
    :cond_0
    int-to-float v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 281
    return-object v0
.end method
