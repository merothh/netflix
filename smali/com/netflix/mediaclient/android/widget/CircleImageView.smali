.class public Lcom/netflix/mediaclient/android/widget/CircleImageView;
.super Lcom/netflix/mediaclient/android/widget/AdvancedImageView;
.source "CircleImageView.java"


# static fields
.field private static final SHADOW_COLOR:I = -0x1000000

.field private static final SHADOW_ENABLED:Z = false

.field private static final SHADOW_RADIUS:F = 1.0f

.field private static final SHADOW_X:F = 0.0f

.field private static final SHADOW_Y:F = 2.0f

.field private static final TAG:Ljava/lang/String; = "CircleImageView"


# instance fields
.field private mBorderWidth:I

.field private mCanvasSize:I

.field private mHasBorder:Z

.field private mHasSelector:Z

.field private mImage:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintBorder:Landroid/graphics/Paint;

.field private mPaintSelectorBorder:Landroid/graphics/Paint;

.field private mSelected:Z

.field private mSelectorFilter:Landroid/graphics/ColorFilter;

.field private mSelectorStrokeWidth:I

.field private mShader:Landroid/graphics/BitmapShader;

.field private mShadowColor:I

.field private mShadowEnabled:Z

.field private mShadowRadius:F

.field private mShadowX:F

.field private mShadowY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/android/widget/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const/16 v7, 0xb

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintBorder:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintBorder:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintSelectorBorder:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintSelectorBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/R$styleable;->CircleImageView:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mHasBorder:Z

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mHasSelector:Z

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowEnabled:Z

    iget-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mHasBorder:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v5

    add-float/2addr v1, v6

    float-to-int v1, v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->setBorderWidth(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->setBorderColor(I)V

    :cond_1
    iget-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mHasSelector:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v5

    add-float/2addr v1, v6

    float-to-int v1, v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->setSelectorColor(I)V

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->setSelectorStrokeWidth(I)V

    const/4 v1, 0x5

    const v2, -0xffff01

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->setSelectorStrokeColor(I)V

    :cond_2
    iget-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowEnabled:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowRadius:F

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowX:F

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowY:F

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowColor:I

    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->setShadowEnabled(Z)V

    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private measureHeight(I)I
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x2

    return v0

    :cond_1
    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    goto :goto_0
.end method

.method private updateShadow()V
    .locals 5

    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowRadius:F

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintBorder:Landroid/graphics/Paint;

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowX:F

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowY:F

    iget v4, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowColor:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintSelectorBorder:Landroid/graphics/Paint;

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowX:F

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowY:F

    iget v4, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowColor:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mSelected:Z

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->invalidate()V

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mSelected:Z

    goto :goto_1

    :pswitch_2
    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mSelected:Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    const-string/jumbo v0, "CircleImageView"

    const-string/jumbo v1, "Bitmap drawable!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v1, "CircleImageView"

    const-string/jumbo v2, "Encountered OutOfMemoryError while generating bitmap!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mSelected:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->getHeight()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->getWidth()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    if-eq v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->updateBitmapShader()V

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    div-int/lit8 v0, v0, 0x2

    iget-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mHasSelector:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mSelected:Z

    if-eqz v1, :cond_4

    iget v4, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mSelectorStrokeWidth:I

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    mul-int/lit8 v1, v4, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mSelectorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    add-int v1, v0, v4

    int-to-float v1, v1

    add-int v2, v0, v4

    int-to-float v2, v2

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    mul-int/lit8 v5, v4, 0x2

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v5, 0x40800000    # 4.0f

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintSelectorBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_2
    add-int v1, v0, v4

    int-to-float v1, v1

    add-int/2addr v0, v4

    int-to-float v0, v0

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    mul-int/lit8 v3, v4, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_4
    iget-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mHasBorder:Z

    if-eqz v1, :cond_5

    iget v7, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mBorderWidth:I

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    mul-int/lit8 v1, v7, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v6, v0, 0x2

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    new-instance v1, Landroid/graphics/RectF;

    div-int/lit8 v0, v7, 0x2

    add-int/lit8 v0, v0, 0x0

    int-to-float v0, v0

    div-int/lit8 v3, v7, 0x2

    add-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    iget v5, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    div-int/lit8 v8, v7, 0x2

    sub-int/2addr v5, v8

    int-to-float v5, v5

    iget v8, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    div-int/lit8 v9, v7, 0x2

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-direct {v1, v0, v3, v5, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v5, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintBorder:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move v0, v6

    move v4, v7

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->measureWidth(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintBorder:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->invalidate()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 2

    iput p1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mBorderWidth:I

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintBorder:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintBorder:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->requestLayout()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->invalidate()V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mImage:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->updateBitmapShader()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mImage:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->updateBitmapShader()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mImage:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->updateBitmapShader()V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setImageURI(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mImage:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->updateBitmapShader()V

    :cond_0
    return-void
.end method

.method public setSelectorColor(I)V
    .locals 2

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mSelectorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->invalidate()V

    return-void
.end method

.method public setSelectorStrokeColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintSelectorBorder:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintSelectorBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->invalidate()V

    return-void
.end method

.method public setSelectorStrokeWidth(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mSelectorStrokeWidth:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->requestLayout()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->invalidate()V

    return-void
.end method

.method public setShadow(FFFI)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowRadius:F

    iput p2, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowX:F

    iput p3, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowY:F

    iput p4, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowColor:I

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->updateShadow()V

    return-void
.end method

.method public setShadowEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowEnabled:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->updateShadow()V

    return-void
.end method

.method public updateBitmapShader()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mImage:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShader:Landroid/graphics/BitmapShader;

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    :cond_2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method
