.class public Lcom/netflix/mediaclient/android/widget/NetflixTextButton;
.super Landroid/support/v7/widget/AppCompatButton;
.source "NetflixTextButton.java"


# instance fields
.field private mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance v0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setAttributes(Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 56
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getColorState(Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private static getColorState(Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 323
    if-nez v0, :cond_0

    .line 324
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 326
    :cond_0
    return-object v0
.end method

.method private setAttributes(Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;)V
    .locals 2

    .prologue
    .line 86
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->simulatePreL:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 88
    new-instance v0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$NetflixButtonDrawableL;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$NetflixButtonDrawableL;-><init>(Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;

    iget-object v0, v0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 93
    return-void

    .line 90
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$NetflixButtonDrawablePreL;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$NetflixButtonDrawablePreL;-><init>(Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public applyFrom(I)V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1, p1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setAttributes(Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;)V

    .line 80
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    .line 99
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v2

    .line 103
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 105
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    .line 101
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 107
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatButton;->onFinishInflate()V

    .line 108
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_1
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;

    if-nez v0, :cond_0

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 142
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;

    iget-object v0, v0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->textColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;

    iget v1, v1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->iconSize:I

    .line 136
    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->tintAndGet(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->textColor:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;

    iget v2, v2, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->iconSize:I

    .line 137
    invoke-static {p2, v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->tintAndGet(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;

    iget-object v2, v2, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->textColor:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;

    iget v3, v3, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->iconSize:I

    .line 138
    invoke-static {p3, v2, v3}, Lcom/netflix/mediaclient/util/ViewUtils;->tintAndGet(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;

    iget-object v3, v3, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->textColor:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;

    iget v4, v4, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->iconSize:I

    .line 139
    invoke-static {p4, v3, v4}, Lcom/netflix/mediaclient/util/ViewUtils;->tintAndGet(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 135
    invoke-super {p0, v0, v1, v2, v3}, Landroid/support/v7/widget/AppCompatButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;

    if-nez v0, :cond_0

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatButton;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 156
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;

    iget-object v0, v0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->textColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;

    iget v1, v1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->iconSize:I

    .line 150
    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->tintAndGet(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->textColor:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;

    iget v2, v2, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->iconSize:I

    .line 151
    invoke-static {p2, v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->tintAndGet(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;

    iget-object v2, v2, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->textColor:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;

    iget v3, v3, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->iconSize:I

    .line 152
    invoke-static {p3, v2, v3}, Lcom/netflix/mediaclient/util/ViewUtils;->tintAndGet(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;

    iget-object v3, v3, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->textColor:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;

    iget v4, v4, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->iconSize:I

    .line 153
    invoke-static {p4, v3, v4}, Lcom/netflix/mediaclient/util/ViewUtils;->tintAndGet(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 149
    invoke-super {p0, v0, v1, v2, v3}, Landroid/support/v7/widget/AppCompatButton;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 122
    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v3, v1

    :goto_0
    if-eqz p2, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v1

    :goto_1
    if-eqz p3, :cond_3

    .line 125
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_2
    if-eqz p4, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 122
    :cond_0
    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 128
    return-void

    :cond_1
    move-object v3, v0

    .line 123
    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 124
    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 125
    goto :goto_2
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 112
    if-eqz p1, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v3, v1

    :goto_0
    if-eqz p2, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v1

    :goto_1
    if-eqz p3, :cond_3

    .line 115
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_2
    if-eqz p4, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 112
    :cond_0
    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 118
    return-void

    :cond_1
    move-object v3, v0

    .line 113
    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 114
    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 115
    goto :goto_2
.end method
