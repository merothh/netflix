.class public Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;
.super Landroid/widget/TextView;
.source "SimpleStrokedTextView.java"


# instance fields
.field private mCache:Landroid/graphics/Bitmap;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mPaint:Landroid/graphics/Paint;

.field private mStrokeColor:I

.field private mStrokeWidth:F

.field private mTextColor:I

.field private mUpdateCachedBitmap:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/netflix/mediaclient/R$styleable;->SimpleStrokedTextView:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mStrokeColor:I

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mStrokeWidth:F

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mTextColor:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v3, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mUpdateCachedBitmap:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v13, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mUpdateCachedBitmap:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    const-string/jumbo v7, "x"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v1, v8, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

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

    iget-object v11, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->getPaddingRight()I

    move-result v0

    sub-int v0, v2, v0

    sub-int/2addr v0, v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mStrokeWidth:F

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mStrokeColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->getTextSize()F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v5, v0

    int-to-float v6, v2

    iget-object v7, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mTextColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v0, v0

    int-to-float v2, v2

    iget-object v5, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v0, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mUpdateCachedBitmap:Z

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mCache:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v13, v13, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_1
    return-void

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mUpdateCachedBitmap:Z

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mCache:Landroid/graphics/Bitmap;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mCache:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mUpdateCachedBitmap:Z

    return-void
.end method

.method public setBoldEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/osp/SimpleStrokedTextView;->invalidate()V

    return-void
.end method
