.class public Lcom/netflix/mediaclient/android/widget/AdvancedImageView;
.super Lcom/netflix/mediaclient/android/widget/LoggingImageView;
.source "AdvancedImageView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdvancedImageView"


# instance fields
.field private defaultForegroundResId:I

.field private foreground:Landroid/graphics/drawable/Drawable;

.field protected pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/LoggingImageView;-><init>(Landroid/content/Context;)V

    .line 19
    const v0, 0x7f0201e1

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->defaultForegroundResId:I

    .line 34
    iput-object v1, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    .line 38
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->init(Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/LoggingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const v0, 0x7f0201e1

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->defaultForegroundResId:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    .line 43
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->init(Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/widget/LoggingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const v0, 0x7f0201e1

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->defaultForegroundResId:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    .line 48
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->init(Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 52
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;-><init>(Landroid/view/View;)V

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    .line 56
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/R$styleable;->AdvancedImageView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    return-void

    .line 52
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/android/widget/RipplePressedStateHandler;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/widget/RipplePressedStateHandler;-><init>(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->defaultForegroundResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->shouldDispatchToPressHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->handleSetPressed(Z)V

    .line 105
    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/LoggingImageView;->dispatchSetPressed(Z)V

    .line 106
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/LoggingImageView;->draw(Landroid/graphics/Canvas;)V

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 195
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Lcom/netflix/mediaclient/android/widget/LoggingImageView;->drawableStateChanged()V

    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 169
    :cond_0
    return-void
.end method

.method public getForegroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageLoaderInfo()Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;
    .locals 1

    .prologue
    .line 76
    const v0, 0x7f0f0010

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string/jumbo v0, "AdvancedImageView"

    return-object v0
.end method

.method public getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Lcom/netflix/mediaclient/android/widget/LoggingImageView;->jumpDrawablesToCurrentState()V

    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 161
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 173
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/LoggingImageView;->onMeasure(II)V

    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 176
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->invalidate()V

    .line 178
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-super {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/android/widget/LoggingImageView;->onSizeChanged(IIII)V

    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 185
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->invalidate()V

    .line 187
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v3, 0x15

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 206
    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/LoggingImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    move v0, v2

    .line 202
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public refreshImageIfNecessary()V
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->refreshImgIfNecessary(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;)V

    .line 93
    :cond_0
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    .line 139
    if-eqz p1, :cond_2

    .line 140
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 141
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 146
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->requestLayout()V

    .line 147
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->invalidate()V

    goto :goto_0
.end method

.method public setForegroundResource(I)V
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 120
    return-void
.end method

.method public setImageLoaderInfo(Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;)V
    .locals 1

    .prologue
    .line 72
    const v0, 0x7f0f0010

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setTag(ILjava/lang/Object;)V

    .line 73
    return-void
.end method

.method public setPressedStateHandlerEnabled(Z)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->setEnabled(Z)V

    .line 81
    return-void
.end method

.method protected shouldDispatchToPressHandler()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/LoggingImageView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
