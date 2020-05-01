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

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/LoggingImageView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0201e1

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->defaultForegroundResId:I

    iput-object v1, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/LoggingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0201e1

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->defaultForegroundResId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/widget/LoggingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f0201e1

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->defaultForegroundResId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;-><init>(Landroid/view/View;)V

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/R$styleable;->AdvancedImageView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/android/widget/RipplePressedStateHandler;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/widget/RipplePressedStateHandler;-><init>(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;)V

    goto :goto_0

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

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->shouldDispatchToPressHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->handleSetPressed(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/LoggingImageView;->dispatchSetPressed(Z)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/LoggingImageView;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Lcom/netflix/mediaclient/android/widget/LoggingImageView;->drawableStateChanged()V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public getForegroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageLoaderInfo()Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;
    .locals 1

    const v0, 0x7f0f0010

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "AdvancedImageView"

    return-object v0
.end method

.method public getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Lcom/netflix/mediaclient/android/widget/LoggingImageView;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/LoggingImageView;->onMeasure(II)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/android/widget/LoggingImageView;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

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

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/LoggingImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public refreshImageIfNecessary()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->refreshImgIfNecessary(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;)V

    :cond_0
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->requestLayout()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->invalidate()V

    goto :goto_0
.end method

.method public setForegroundResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageLoaderInfo(Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;)V
    .locals 1

    const v0, 0x7f0f0010

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setPressedStateHandlerEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->setEnabled(Z)V

    return-void
.end method

.method protected shouldDispatchToPressHandler()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

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
