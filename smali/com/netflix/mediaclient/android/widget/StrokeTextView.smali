.class public Lcom/netflix/mediaclient/android/widget/StrokeTextView;
.super Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;
.source "StrokeTextView.java"


# instance fields
.field private mCache:Landroid/graphics/Bitmap;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mPaint:Landroid/graphics/Paint;

.field private mStrokeColor:I

.field private mStrokeWidth:I

.field private mTextColor:I

.field private mUpdateCachedBitmap:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mStrokeColor:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mStrokeColor:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mStrokeColor:I

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/R$styleable;->StrokeTextView:[I

    invoke-virtual {v0, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move v0, v1

    :goto_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_0
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mStrokeColor:I

    goto :goto_2

    :pswitch_1
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mStrokeWidth:I

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v4, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mUpdateCachedBitmap:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v13, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mUpdateCachedBitmap:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    const-string/jumbo v7, "x"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v1, v8, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mCanvas:Landroid/graphics/Canvas;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v9

    move v0, v1

    :goto_0
    array-length v10, v9

    if-ge v0, v10, :cond_1

    aget-object v10, v9, v0

    if-eqz v10, :cond_0

    aget-object v10, v9, v0

    aget-object v11, v9, v0

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    add-int/2addr v11, v7

    aget-object v12, v9, v0

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    add-int/2addr v12, v8

    invoke-virtual {v10, v7, v8, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    aget-object v10, v9, v0

    iget-object v11, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->getPaddingRight()I

    move-result v0

    sub-int v0, v2, v0

    sub-int/2addr v0, v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mStrokeWidth:I

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mStrokeColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->getTextSize()F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v5, v0

    int-to-float v6, v2

    iget-object v7, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mTextColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v0, v0

    int-to-float v2, v2

    iget-object v5, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v0, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mUpdateCachedBitmap:Z

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mCache:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v13, v13, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_1
    return-void

    :cond_3
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->onSizeChanged(IIII)V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mUpdateCachedBitmap:Z

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mCache:Landroid/graphics/Bitmap;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mCache:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mUpdateCachedBitmap:Z

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mStrokeColor:I

    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mStrokeWidth:I

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->setTextColor(I)V

    iput p1, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->mTextColor:I

    return-void
.end method
