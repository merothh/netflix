.class public Lcom/netflix/mediaclient/android/widget/MagicTextView;
.super Landroid/widget/TextView;
.source "MagicTextView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# instance fields
.field private canvasStore:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private foregroundDrawable:Landroid/graphics/drawable/Drawable;

.field private frozen:Z

.field private innerShadows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/mediaclient/android/widget/MagicTextView$Shadow;",
            ">;"
        }
    .end annotation
.end field

.field private lockedCompoundPadding:[I

.field private outerShadows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/mediaclient/android/widget/MagicTextView$Shadow;",
            ">;"
        }
    .end annotation
.end field

.field private strokeColor:Ljava/lang/Integer;

.field private strokeJoin:Landroid/graphics/Paint$Join;

.field private strokeMiter:F

.field private strokeWidth:F

.field private tempBitmap:Landroid/graphics/Bitmap;

.field private tempCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->frozen:Z

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->init(Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->frozen:Z

    .line 56
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->init(Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->frozen:Z

    .line 60
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->init(Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method private generateTempCanvas()V
    .locals 5

    .prologue
    .line 246
    const-string/jumbo v0, "%dx%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 247
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->canvasStore:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 248
    if-eqz v0, :cond_0

    .line 249
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Canvas;

    iput-object v1, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->tempCanvas:Landroid/graphics/Canvas;

    .line 250
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->tempBitmap:Landroid/graphics/Bitmap;

    .line 257
    :goto_0
    return-void

    .line 252
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->tempCanvas:Landroid/graphics/Canvas;

    .line 253
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->tempBitmap:Landroid/graphics/Bitmap;

    .line 254
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->tempCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 255
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->canvasStore:Ljava/util/WeakHashMap;

    new-instance v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->tempCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public addInnerShadow(FFFI)V
    .locals 2

    .prologue
    .line 146
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const p1, 0x38d1b717    # 1.0E-4f

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->innerShadows:Ljava/util/ArrayList;

    new-instance v1, Lcom/netflix/mediaclient/android/widget/MagicTextView$Shadow;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/netflix/mediaclient/android/widget/MagicTextView$Shadow;-><init>(FFFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method

.method public addOuterShadow(FFFI)V
    .locals 2

    .prologue
    .line 141
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const p1, 0x38d1b717    # 1.0E-4f

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->outerShadows:Ljava/util/ArrayList;

    new-instance v1, Lcom/netflix/mediaclient/android/widget/MagicTextView$Shadow;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/netflix/mediaclient/android/widget/MagicTextView$Shadow;-><init>(FFFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method public clearInnerShadows()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->innerShadows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 152
    return-void
.end method

.method public clearOuterShadows()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->outerShadows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 156
    return-void
.end method

.method public freeze()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 262
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 263
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->getCompoundPaddingLeft()I

    move-result v2

    aput v2, v0, v1

    .line 264
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->getCompoundPaddingRight()I

    move-result v1

    aput v1, v0, v3

    const/4 v1, 0x2

    .line 265
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->getCompoundPaddingTop()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 266
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->getCompoundPaddingBottom()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->lockedCompoundPadding:[I

    .line 268
    iput-boolean v3, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->frozen:Z

    .line 269
    return-void
.end method

.method public getCompoundPaddingBottom()I
    .locals 2

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->lockedCompoundPadding:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->lockedCompoundPadding:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->lockedCompoundPadding:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getCompoundPaddingTop()I
    .locals 2

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->lockedCompoundPadding:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->getCurrentTextColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method

.method public init(Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/16 v8, 0x9

    const/4 v7, 0x0

    const/high16 v6, -0x1000000

    const/4 v5, 0x0

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->outerShadows:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->innerShadows:Ljava/util/ArrayList;

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->canvasStore:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->canvasStore:Ljava/util/WeakHashMap;

    .line 71
    :cond_0
    if-eqz p1, :cond_7

    .line 72
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/R$styleable;->MagicTextView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 74
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string/jumbo v3, "fonts/%s.ttf"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 77
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 80
    :cond_1
    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_8

    .line 83
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->setForegroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    :cond_2
    :goto_0
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_9

    .line 92
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    :cond_3
    :goto_1
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 99
    const/4 v0, 0x1

    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v2, 0x2

    .line 100
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v3, 0x3

    .line 101
    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 102
    invoke-virtual {v1, v7, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 99
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->addInnerShadow(FFFI)V

    .line 105
    :cond_4
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    const/4 v0, 0x5

    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v2, 0x6

    .line 107
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v3, 0x7

    .line 108
    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    const/4 v4, 0x4

    .line 109
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 106
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->addOuterShadow(FFFI)V

    .line 112
    :cond_5
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 113
    const/16 v0, 0xb

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 114
    const/16 v0, 0xd

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 115
    const/16 v0, 0xc

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 116
    const/4 v0, 0x0

    .line 117
    const/16 v5, 0xe

    invoke-virtual {v1, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 122
    :goto_2
    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->setStroke(FILandroid/graphics/Paint$Join;F)V

    .line 125
    :cond_6
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    :cond_7
    return-void

    .line 85
    :cond_8
    invoke-virtual {v1, v8, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->setTextColor(I)V

    goto :goto_0

    .line 94
    :cond_9
    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->setBackgroundColor(I)V

    goto :goto_1

    .line 118
    :pswitch_0
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    goto :goto_2

    .line 119
    :pswitch_1
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_2

    .line 120
    :pswitch_2
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_2

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->frozen:Z

    if-nez v0, :cond_0

    .line 300
    invoke-super {p0}, Landroid/widget/TextView;->invalidate()V

    .line 302
    :cond_0
    return-void
.end method

.method public invalidate(IIII)V
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->frozen:Z

    if-nez v0, :cond_0

    .line 314
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 316
    :cond_0
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->frozen:Z

    if-nez v0, :cond_0

    .line 307
    invoke-super {p0, p1}, Landroid/widget/TextView;->invalidate(Landroid/graphics/Rect;)V

    .line 309
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 171
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->getCurrentTextColor()I

    move-result v1

    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->strokeColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 175
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 176
    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->strokeJoin:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 177
    iget v2, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->strokeMiter:F

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStrokeMiter(F)V

    .line 178
    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->strokeColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->setTextColor(I)V

    .line 179
    iget v2, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->strokeWidth:F

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 180
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 181
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 182
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->setTextColor(I)V

    .line 185
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 187
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->freeze()V

    .line 188
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 189
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 191
    invoke-virtual {p0, v10, v10, v10, v10}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 193
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->outerShadows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/MagicTextView$Shadow;

    .line 194
    iget v5, v0, Lcom/netflix/mediaclient/android/widget/MagicTextView$Shadow;->r:F

    iget v6, v0, Lcom/netflix/mediaclient/android/widget/MagicTextView$Shadow;->dx:F

    iget v7, v0, Lcom/netflix/mediaclient/android/widget/MagicTextView$Shadow;->dy:F

    iget v0, v0, Lcom/netflix/mediaclient/android/widget/MagicTextView$Shadow;->color:I

    invoke-virtual {p0, v5, v6, v7, v0}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->setShadowLayer(FFFI)V

    .line 195
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p0, v9, v9, v9, v11}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->setShadowLayer(FFFI)V

    .line 198
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->setTextColor(I)V

    .line 200
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    .line 201
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->generateTempCanvas()V

    .line 202
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->tempCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 203
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 204
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 205
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->tempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v9, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 208
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->tempCanvas:Landroid/graphics/Canvas;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v11, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->innerShadows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 212
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->generateTempCanvas()V

    .line 213
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 214
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->innerShadows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/MagicTextView$Shadow;

    .line 215
    iget v6, v0, Lcom/netflix/mediaclient/android/widget/MagicTextView$Shadow;->color:I

    invoke-virtual {p0, v6}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->setTextColor(I)V

    .line 216
    iget-object v6, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->tempCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v6}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 217
    const/high16 v6, -0x1000000

    invoke-virtual {p0, v6}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->setTextColor(I)V

    .line 218
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 219
    new-instance v6, Landroid/graphics/BlurMaskFilter;

    iget v7, v0, Lcom/netflix/mediaclient/android/widget/MagicTextView$Shadow;->r:F

    sget-object v8, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v6, v7, v8}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 221
    iget-object v6, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->tempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 222
    iget-object v6, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->tempCanvas:Landroid/graphics/Canvas;

    iget v7, v0, Lcom/netflix/mediaclient/android/widget/MagicTextView$Shadow;->dx:F

    iget v0, v0, Lcom/netflix/mediaclient/android/widget/MagicTextView$Shadow;->dy:F

    invoke-virtual {v6, v7, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->tempCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 224
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->tempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v9, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 226
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->tempCanvas:Landroid/graphics/Canvas;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v11, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 228
    invoke-virtual {v4, v10}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 229
    invoke-virtual {v4, v10}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 230
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->setTextColor(I)V

    .line 231
    invoke-virtual {p0, v9, v9, v9, v11}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->setShadowLayer(FFFI)V

    goto :goto_1

    .line 236
    :cond_3
    if-eqz v3, :cond_4

    .line 237
    aget-object v0, v3, v11

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const/4 v5, 0x2

    aget-object v5, v3, v5

    const/4 v6, 0x3

    aget-object v3, v3, v6

    invoke-virtual {p0, v0, v4, v5, v3}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 239
    :cond_4
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->setTextColor(I)V

    .line 242
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->unfreeze()V

    .line 243
    return-void
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->frozen:Z

    if-nez v0, :cond_0

    .line 286
    invoke-super {p0}, Landroid/widget/TextView;->postInvalidate()V

    .line 288
    :cond_0
    return-void
.end method

.method public postInvalidate(IIII)V
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->frozen:Z

    if-nez v0, :cond_0

    .line 293
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->postInvalidate(IIII)V

    .line 295
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->frozen:Z

    if-nez v0, :cond_0

    .line 279
    invoke-super {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 281
    :cond_0
    return-void
.end method

.method public setForegroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 160
    return-void
.end method

.method public setStroke(FI)V
    .locals 2

    .prologue
    .line 137
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/netflix/mediaclient/android/widget/MagicTextView;->setStroke(FILandroid/graphics/Paint$Join;F)V

    .line 138
    return-void
.end method

.method public setStroke(FILandroid/graphics/Paint$Join;F)V
    .locals 1

    .prologue
    .line 130
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->strokeWidth:F

    .line 131
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->strokeColor:Ljava/lang/Integer;

    .line 132
    iput-object p3, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->strokeJoin:Landroid/graphics/Paint$Join;

    .line 133
    iput p4, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->strokeMiter:F

    .line 134
    return-void
.end method

.method public unfreeze()V
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/MagicTextView;->frozen:Z

    .line 273
    return-void
.end method
