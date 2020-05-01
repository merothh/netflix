.class public abstract Lo/NetworkMetrics;
.super Lo/CursorTreeAdapter;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;


# static fields
.field private static final b:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private a:I

.field private c:Landroid/content/res/ColorStateList;

.field private d:Z

.field private e:I

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/widget/ImageView$ScaleType;

.field private h:I

.field private i:Z

.field private j:Z

.field private l:Lo/DdmRegister;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/DdmRegister<",
            "Lo/SqliteWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    .line 37
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lo/NetworkMetrics;->b:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Lo/NetworkMetrics;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0}, Lo/NetworkMetrics;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lo/CursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lo/NetworkMetrics;->a:I

    .line 49
    iput v0, p0, Lo/NetworkMetrics;->e:I

    const/high16 v1, -0x1000000

    .line 50
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lo/NetworkMetrics;->c:Landroid/content/res/ColorStateList;

    .line 51
    iput-boolean v0, p0, Lo/NetworkMetrics;->d:Z

    .line 52
    iput-boolean v0, p0, Lo/NetworkMetrics;->j:Z

    .line 83
    sget-object v2, Lo/TagLostException$TaskDescription;->L:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 85
    sget p2, Lo/TagLostException$TaskDescription;->R:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_0

    .line 87
    sget-object v2, Lo/NetworkMetrics;->b:[Landroid/widget/ImageView$ScaleType;

    aget-object p2, v2, p2

    invoke-virtual {p0, p2}, Lo/NetworkMetrics;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 90
    :cond_0
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Lo/NetworkMetrics;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 93
    :goto_0
    sget p2, Lo/TagLostException$TaskDescription;->O:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lo/NetworkMetrics;->a:I

    .line 94
    sget p2, Lo/TagLostException$TaskDescription;->S:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lo/NetworkMetrics;->e:I

    .line 97
    iget p2, p0, Lo/NetworkMetrics;->a:I

    if-gez p2, :cond_1

    .line 98
    iput v0, p0, Lo/NetworkMetrics;->a:I

    .line 100
    :cond_1
    iget p2, p0, Lo/NetworkMetrics;->e:I

    if-gez p2, :cond_2

    .line 101
    iput v0, p0, Lo/NetworkMetrics;->e:I

    .line 104
    :cond_2
    sget p2, Lo/TagLostException$TaskDescription;->P:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lo/NetworkMetrics;->c:Landroid/content/res/ColorStateList;

    .line 105
    iget-object p2, p0, Lo/NetworkMetrics;->c:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_3

    .line 106
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lo/NetworkMetrics;->c:Landroid/content/res/ColorStateList;

    .line 109
    :cond_3
    sget p2, Lo/TagLostException$TaskDescription;->X:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lo/NetworkMetrics;->j:Z

    .line 110
    sget p2, Lo/TagLostException$TaskDescription;->Q:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lo/NetworkMetrics;->d:Z

    .line 112
    invoke-direct {p0}, Lo/NetworkMetrics;->h()V

    .line 114
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    invoke-static {}, Lo/CursorToBulkCursorAdaptor;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 117
    new-instance p1, Lo/SQLiteStatementInfo;

    invoke-virtual {p0}, Lo/NetworkMetrics;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p1, p2}, Lo/SQLiteStatementInfo;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {p1}, Lo/SQLiteStatementInfo;->q()Lo/SqliteWrapper;

    move-result-object p1

    .line 118
    invoke-virtual {p0}, Lo/NetworkMetrics;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lo/DdmRegister;->c(Lo/DdmHandleHeap;Landroid/content/Context;)Lo/DdmRegister;

    move-result-object p1

    iput-object p1, p0, Lo/NetworkMetrics;->l:Lo/DdmRegister;

    .line 119
    invoke-virtual {p0}, Lo/NetworkMetrics;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_4

    .line 121
    iget-object p1, p0, Lo/NetworkMetrics;->l:Lo/DdmRegister;

    invoke-virtual {p1}, Lo/DdmRegister;->h()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-super {p0, p1}, Lo/CursorTreeAdapter;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method private d(Landroid/graphics/drawable/Drawable;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 285
    :cond_0
    instance-of v0, p1, Lo/IpConnectivityLog;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 286
    check-cast p1, Lo/IpConnectivityLog;

    iget-object v0, p0, Lo/NetworkMetrics;->g:Landroid/widget/ImageView$ScaleType;

    .line 287
    invoke-virtual {p1, v0}, Lo/IpConnectivityLog;->a(Landroid/widget/ImageView$ScaleType;)Lo/IpConnectivityLog;

    move-result-object p1

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lo/NetworkMetrics;->j:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lo/NetworkMetrics;->a:I

    int-to-float v0, v0

    .line 288
    :goto_0
    invoke-virtual {p1, v0}, Lo/IpConnectivityLog;->c(F)Lo/IpConnectivityLog;

    move-result-object p1

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lo/NetworkMetrics;->j:Z

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    iget v1, p0, Lo/NetworkMetrics;->e:I

    .line 289
    :goto_1
    invoke-virtual {p1, v1}, Lo/IpConnectivityLog;->b(I)Lo/IpConnectivityLog;

    move-result-object p1

    iget-object p2, p0, Lo/NetworkMetrics;->c:Landroid/content/res/ColorStateList;

    .line 290
    invoke-virtual {p1, p2}, Lo/IpConnectivityLog;->e(Landroid/content/res/ColorStateList;)Lo/IpConnectivityLog;

    move-result-object p1

    iget-boolean p2, p0, Lo/NetworkMetrics;->d:Z

    .line 291
    invoke-virtual {p1, p2}, Lo/IpConnectivityLog;->a(Z)Lo/IpConnectivityLog;

    goto :goto_3

    .line 292
    :cond_3
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_4

    .line 294
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 295
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_4

    .line 297
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lo/NetworkMetrics;->d(Landroid/graphics/drawable/Drawable;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method private g()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 257
    invoke-virtual {p0}, Lo/NetworkMetrics;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 264
    :cond_0
    iget v2, p0, Lo/NetworkMetrics;->h:I

    if-eqz v2, :cond_1

    .line 266
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lo/NetworkMetrics;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "RoundedImageView"

    invoke-static {v0, v2, v3}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 270
    iput v4, p0, Lo/NetworkMetrics;->h:I

    .line 273
    :cond_1
    :goto_0
    invoke-static {v1}, Lo/IpConnectivityLog;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 2

    .line 277
    iget-object v0, p0, Lo/NetworkMetrics;->f:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/NetworkMetrics;->d(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method


# virtual methods
.method public am_()V
    .locals 1

    .line 245
    iget-object v0, p0, Lo/NetworkMetrics;->l:Lo/DdmRegister;

    invoke-virtual {v0}, Lo/DdmRegister;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Lo/CursorTreeAdapter;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public b()Lo/DdmRegister;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/DdmRegister<",
            "Lo/SqliteWrapper;",
            ">;"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lo/NetworkMetrics;->l:Lo/DdmRegister;

    if-eqz v0, :cond_0

    return-object v0

    .line 436
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public d()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lo/NetworkMetrics;->i:Z

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 128
    invoke-super {p0}, Lo/CursorTreeAdapter;->drawableStateChanged()V

    .line 129
    invoke-virtual {p0}, Lo/NetworkMetrics;->invalidate()V

    return-void
.end method

.method public e()Landroid/widget/ImageView;
    .locals 0

    return-object p0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 140
    iget-object v0, p0, Lo/NetworkMetrics;->g:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 414
    invoke-super {p0}, Lo/CursorTreeAdapter;->onAttachedToWindow()V

    .line 415
    iget-object v0, p0, Lo/NetworkMetrics;->l:Lo/DdmRegister;

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v0}, Lo/DdmRegister;->c()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 398
    invoke-super {p0}, Lo/CursorTreeAdapter;->onDetachedFromWindow()V

    .line 399
    iget-object v0, p0, Lo/NetworkMetrics;->l:Lo/DdmRegister;

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0}, Lo/DdmRegister;->b()V

    :cond_0
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 1

    .line 422
    invoke-super {p0}, Lo/CursorTreeAdapter;->onFinishTemporaryDetach()V

    .line 425
    iget-object v0, p0, Lo/NetworkMetrics;->l:Lo/DdmRegister;

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {v0}, Lo/DdmRegister;->c()V

    :cond_0
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 1

    .line 406
    invoke-super {p0}, Lo/CursorTreeAdapter;->onStartTemporaryDetach()V

    .line 407
    iget-object v0, p0, Lo/NetworkMetrics;->l:Lo/DdmRegister;

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {v0}, Lo/DdmRegister;->b()V

    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    .line 334
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/NetworkMetrics;->setBorderColors(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBorderColors(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lo/NetworkMetrics;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p1, -0x1000000

    .line 347
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lo/NetworkMetrics;->c:Landroid/content/res/ColorStateList;

    .line 348
    invoke-direct {p0}, Lo/NetworkMetrics;->h()V

    .line 349
    iget p1, p0, Lo/NetworkMetrics;->e:I

    if-lez p1, :cond_2

    .line 350
    invoke-virtual {p0}, Lo/NetworkMetrics;->invalidate()V

    :cond_2
    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 320
    iget v0, p0, Lo/NetworkMetrics;->e:I

    if-ne v0, p1, :cond_0

    return-void

    .line 324
    :cond_0
    iput p1, p0, Lo/NetworkMetrics;->e:I

    .line 325
    invoke-direct {p0}, Lo/NetworkMetrics;->h()V

    .line 326
    invoke-virtual {p0}, Lo/NetworkMetrics;->invalidate()V

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 1

    .line 307
    iget v0, p0, Lo/NetworkMetrics;->a:I

    if-ne v0, p1, :cond_0

    return-void

    .line 311
    :cond_0
    iput p1, p0, Lo/NetworkMetrics;->a:I

    .line 312
    invoke-direct {p0}, Lo/NetworkMetrics;->h()V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 206
    iget-object v0, p0, Lo/NetworkMetrics;->l:Lo/DdmRegister;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 207
    invoke-virtual {v0, v1}, Lo/DdmRegister;->e(Lo/DdmHandleExit;)V

    .line 210
    :cond_0
    iget v0, p0, Lo/NetworkMetrics;->a:I

    if-nez v0, :cond_1

    iget v0, p0, Lo/NetworkMetrics;->e:I

    if-nez v0, :cond_1

    .line 211
    invoke-super {p0, p1}, Lo/CursorTreeAdapter;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 213
    iput v0, p0, Lo/NetworkMetrics;->h:I

    .line 214
    invoke-static {p1}, Lo/IpConnectivityLog;->b(Landroid/graphics/Bitmap;)Lo/IpConnectivityLog;

    move-result-object p1

    iput-object p1, p0, Lo/NetworkMetrics;->f:Landroid/graphics/drawable/Drawable;

    .line 215
    invoke-direct {p0}, Lo/NetworkMetrics;->h()V

    .line 216
    iget-object p1, p0, Lo/NetworkMetrics;->f:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Lo/CursorTreeAdapter;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 190
    iget-object v0, p0, Lo/NetworkMetrics;->l:Lo/DdmRegister;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 191
    invoke-virtual {v0, v1}, Lo/DdmRegister;->e(Lo/DdmHandleExit;)V

    .line 194
    :cond_0
    iget v0, p0, Lo/NetworkMetrics;->a:I

    if-nez v0, :cond_1

    iget v0, p0, Lo/NetworkMetrics;->e:I

    if-nez v0, :cond_1

    .line 195
    invoke-super {p0, p1}, Lo/CursorTreeAdapter;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 197
    iput v0, p0, Lo/NetworkMetrics;->h:I

    .line 198
    invoke-static {p1}, Lo/IpConnectivityLog;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lo/NetworkMetrics;->f:Landroid/graphics/drawable/Drawable;

    .line 199
    invoke-direct {p0}, Lo/NetworkMetrics;->h()V

    .line 200
    iget-object p1, p0, Lo/NetworkMetrics;->f:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Lo/CursorTreeAdapter;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public abstract setImageLoaderInfo(Lo/DigitalClock;)V
.end method

.method public setImageResource(I)V
    .locals 2

    .line 222
    iget-object v0, p0, Lo/NetworkMetrics;->l:Lo/DdmRegister;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 223
    invoke-virtual {v0, v1}, Lo/DdmRegister;->e(Lo/DdmHandleExit;)V

    .line 225
    :cond_0
    iget v0, p0, Lo/NetworkMetrics;->a:I

    if-nez v0, :cond_1

    iget v0, p0, Lo/NetworkMetrics;->e:I

    if-nez v0, :cond_1

    .line 226
    invoke-super {p0, p1}, Lo/CursorTreeAdapter;->setImageResource(I)V

    goto :goto_0

    .line 228
    :cond_1
    iget v0, p0, Lo/NetworkMetrics;->h:I

    if-eq v0, p1, :cond_2

    .line 229
    iput p1, p0, Lo/NetworkMetrics;->h:I

    .line 230
    invoke-direct {p0}, Lo/NetworkMetrics;->g()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lo/NetworkMetrics;->f:Landroid/graphics/drawable/Drawable;

    .line 231
    invoke-direct {p0}, Lo/NetworkMetrics;->h()V

    .line 232
    iget-object p1, p0, Lo/NetworkMetrics;->f:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Lo/CursorTreeAdapter;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 239
    invoke-super {p0, p1}, Lo/CursorTreeAdapter;->setImageURI(Landroid/net/Uri;)V

    .line 240
    invoke-virtual {p0}, Lo/NetworkMetrics;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/NetworkMetrics;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOval(Z)V
    .locals 0

    .line 359
    iput-boolean p1, p0, Lo/NetworkMetrics;->d:Z

    .line 360
    invoke-direct {p0}, Lo/NetworkMetrics;->h()V

    .line 361
    invoke-virtual {p0}, Lo/NetworkMetrics;->invalidate()V

    return-void
.end method

.method public setPassActualScaleTypeToParent(Z)V
    .locals 0

    .line 253
    iput-boolean p1, p0, Lo/NetworkMetrics;->i:Z

    return-void
.end method

.method public setRoundBackground(Z)V
    .locals 1

    .line 369
    iget-boolean v0, p0, Lo/NetworkMetrics;->j:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 373
    :cond_0
    iput-boolean p1, p0, Lo/NetworkMetrics;->j:Z

    .line 374
    invoke-virtual {p0}, Lo/NetworkMetrics;->invalidate()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 156
    iget-object v0, p0, Lo/NetworkMetrics;->g:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 157
    :goto_0
    iput-object p1, p0, Lo/NetworkMetrics;->g:Landroid/widget/ImageView$ScaleType;

    .line 159
    invoke-virtual {p0}, Lo/NetworkMetrics;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    invoke-super {p0, p1}, Lo/CursorTreeAdapter;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    .line 165
    sget-object v0, Lo/NetworkMetrics$4;->c:[I

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 176
    invoke-super {p0, p1}, Lo/CursorTreeAdapter;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    .line 173
    :pswitch_0
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Lo/CursorTreeAdapter;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 182
    :cond_2
    :goto_1
    invoke-direct {p0}, Lo/NetworkMetrics;->h()V

    .line 183
    invoke-virtual {p0}, Lo/NetworkMetrics;->invalidate()V

    :goto_2
    return-void

    .line 153
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

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

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 390
    iget-object v0, p0, Lo/NetworkMetrics;->l:Lo/DdmRegister;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/DdmRegister;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 393
    :cond_0
    invoke-super {p0, p1}, Lo/CursorTreeAdapter;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    return p1
.end method
