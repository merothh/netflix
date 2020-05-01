.class Lcom/netflix/mediaclient/android/widget/NetflixTextButton$NetflixButtonDrawablePreL;
.super Landroid/graphics/drawable/StateListDrawable;
.source "NetflixTextButton.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;)V
    .locals 8

    const v4, -0x101009e

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iget v0, p1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->animationDuration:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$NetflixButtonDrawablePreL;->setEnterFadeDuration(I)V

    iget v0, p1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->animationDuration:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$NetflixButtonDrawablePreL;->setExitFadeDuration(I)V

    new-array v0, v6, [I

    aput v4, v0, v5

    iget-object v1, p1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->buttonColor:Landroid/content/res/ColorStateList;

    new-array v2, v6, [I

    aput v4, v2, v5

    invoke-virtual {v1, v2, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget-object v2, p1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->strokeColor:Landroid/content/res/ColorStateList;

    new-array v3, v6, [I

    aput v4, v3, v5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget v3, p1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->strokeWidth:I

    iget v4, p1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->cornerRadius:I

    invoke-static {v1, v2, v3, v4}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$NetflixButtonDrawablePreL;->createRoundRectangleDrawable(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$NetflixButtonDrawablePreL;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v0, v6, [I

    const v1, 0x10100a7

    aput v1, v0, v5

    iget-object v1, p1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->buttonColor:Landroid/content/res/ColorStateList;

    new-array v2, v7, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget-object v2, p1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->strokeColor:Landroid/content/res/ColorStateList;

    new-array v3, v7, [I

    fill-array-data v3, :array_1

    invoke-virtual {v2, v3, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget v3, p1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->strokeWidth:I

    iget v4, p1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->cornerRadius:I

    invoke-static {v1, v2, v3, v4}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$NetflixButtonDrawablePreL;->createRoundRectangleDrawable(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$NetflixButtonDrawablePreL;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v0, v5, [I

    iget-object v1, p1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->buttonColor:Landroid/content/res/ColorStateList;

    new-array v2, v7, [I

    fill-array-data v2, :array_2

    invoke-virtual {v1, v2, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget-object v2, p1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->strokeColor:Landroid/content/res/ColorStateList;

    new-array v3, v7, [I

    fill-array-data v3, :array_3

    invoke-virtual {v2, v3, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget v3, p1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->strokeWidth:I

    iget v4, p1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->cornerRadius:I

    invoke-static {v1, v2, v3, v4}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$NetflixButtonDrawablePreL;->createRoundRectangleDrawable(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$NetflixButtonDrawablePreL;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-void

    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data

    :array_2
    .array-data 4
        0x101009e
        -0x10100a7
    .end array-data

    :array_3
    .array-data 4
        0x101009e
        -0x10100a7
    .end array-data
.end method

.method private static createRoundRectangleDrawable(IIII)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    if-lez p2, :cond_0

    invoke-virtual {v0, p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_0
    int-to-float v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method
