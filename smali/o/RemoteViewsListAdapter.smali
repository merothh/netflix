.class public Lo/RemoteViewsListAdapter;
.super Lo/BaseAdapter;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lo/BaseAdapter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lo/RemoteViewsListAdapter;->c:Z

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lo/RemoteViewsListAdapter;->b:Z

    const/4 p1, 0x0

    .line 22
    invoke-direct {p0, p1}, Lo/RemoteViewsListAdapter;->d(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lo/BaseAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lo/RemoteViewsListAdapter;->c:Z

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lo/RemoteViewsListAdapter;->b:Z

    .line 27
    invoke-direct {p0, p2}, Lo/RemoteViewsListAdapter;->d(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lo/BaseAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lo/RemoteViewsListAdapter;->c:Z

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lo/RemoteViewsListAdapter;->b:Z

    .line 32
    invoke-direct {p0, p2}, Lo/RemoteViewsListAdapter;->d(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private d(Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "scaleType"

    .line 58
    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 60
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lo/RemoteViewsListAdapter;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lo/RemoteViewsListAdapter;->c:Z

    goto :goto_0

    .line 63
    :cond_0
    iput-object v0, p0, Lo/RemoteViewsListAdapter;->a:Ljava/lang/String;

    .line 64
    iput-boolean v2, p0, Lo/RemoteViewsListAdapter;->c:Z

    .line 67
    :goto_0
    invoke-virtual {p0}, Lo/RemoteViewsListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->cm:[I

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 69
    :try_start_0
    sget v0, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->cj:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lo/RemoteViewsListAdapter;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    throw v0
.end method


# virtual methods
.method public h()V
    .locals 7

    .line 94
    iget-boolean v0, p0, Lo/RemoteViewsListAdapter;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lo/RemoteViewsListAdapter;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 101
    invoke-virtual {p0}, Lo/RemoteViewsListAdapter;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lo/RemoteViewsListAdapter;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lo/RemoteViewsListAdapter;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 102
    invoke-virtual {p0}, Lo/RemoteViewsListAdapter;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lo/RemoteViewsListAdapter;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lo/RemoteViewsListAdapter;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 103
    invoke-virtual {p0}, Lo/RemoteViewsListAdapter;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lo/RemoteViewsListAdapter;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 104
    :goto_0
    invoke-virtual {p0}, Lo/RemoteViewsListAdapter;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lo/RemoteViewsListAdapter;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    :goto_1
    mul-int v5, v3, v2

    mul-int v6, v4, v1

    if-le v5, v6, :cond_3

    int-to-float v2, v2

    int-to-float v4, v4

    goto :goto_2

    :cond_3
    int-to-float v2, v1

    int-to-float v4, v3

    :goto_2
    div-float/2addr v2, v4

    .line 117
    iget v4, p0, Lo/RemoteViewsListAdapter;->e:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v2, v5, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 119
    iget-boolean v4, p0, Lo/RemoteViewsListAdapter;->b:Z

    if-eqz v4, :cond_4

    int-to-float v3, v3

    mul-float v3, v3, v2

    int-to-float v1, v1

    cmpl-float v2, v3, v1

    if-lez v2, :cond_4

    sub-float/2addr v3, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v3, v1

    neg-float v1, v3

    .line 122
    invoke-virtual {v0, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 125
    :cond_4
    invoke-virtual {p0, v0}, Lo/RemoteViewsListAdapter;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 88
    invoke-super/range {p0 .. p5}, Lo/BaseAdapter;->onLayout(ZIIII)V

    .line 89
    invoke-virtual {p0}, Lo/RemoteViewsListAdapter;->h()V

    return-void
.end method

.method public setCenterHorizontally(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lo/RemoteViewsListAdapter;->b:Z

    .line 53
    invoke-virtual {p0}, Lo/RemoteViewsListAdapter;->h()V

    return-void
.end method

.method public setCropPointYOffsetPx(I)V
    .locals 0

    .line 76
    iput p1, p0, Lo/RemoteViewsListAdapter;->e:I

    .line 77
    invoke-virtual {p0}, Lo/RemoteViewsListAdapter;->h()V

    return-void
.end method

.method public setCutomCroppingEnabled(Z)V
    .locals 1

    .line 42
    iput-boolean p1, p0, Lo/RemoteViewsListAdapter;->c:Z

    if-eqz p1, :cond_0

    .line 44
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lo/RemoteViewsListAdapter;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 45
    invoke-virtual {p0}, Lo/RemoteViewsListAdapter;->h()V

    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lo/RemoteViewsListAdapter;->a:Ljava/lang/String;

    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 47
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    iget-object v0, p0, Lo/RemoteViewsListAdapter;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lo/RemoteViewsListAdapter;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 0

    .line 82
    invoke-virtual {p0}, Lo/RemoteViewsListAdapter;->h()V

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Lo/BaseAdapter;->setFrame(IIII)Z

    move-result p1

    return p1
.end method
