.class public Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$Activity;,
        Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;,
        Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$TaskDescription;,
        Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;
    }
.end annotation


# static fields
.field private static final c:[I


# instance fields
.field private final A:Landroid/graphics/Rect;

.field private C:Z

.field private a:Landroid/graphics/drawable/Drawable;

.field private b:I

.field private d:I

.field private final e:Landroid/graphics/Paint;

.field private f:Z

.field private g:Z

.field private h:Landroid/view/View;

.field private i:I

.field private j:I

.field private k:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

.field private l:Landroid/view/View;

.field private final m:Landroid/view/View$OnClickListener;

.field private n:F

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private final s:I

.field private t:Z

.field private u:F

.field private v:F

.field private w:F

.field private x:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$TaskDescription;

.field private final y:Lo/SequenceInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100af

    aput v2, v0, v1

    .line 56
    sput-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 240
    invoke-direct {p0, p1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 244
    invoke-direct {p0, p1, p2, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 248
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x190

    .line 63
    iput p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->b:I

    const/high16 v0, -0x67000000

    .line 68
    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d:I

    .line 73
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 83
    iput v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:I

    .line 88
    iput v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->j:I

    .line 110
    iput v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->o:I

    .line 117
    new-instance v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$5;

    invoke-direct {v2, p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$5;-><init>(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)V

    iput-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->m:Landroid/view/View$OnClickListener;

    .line 137
    sget-object v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->c:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    iput-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    const/4 v2, 0x0

    .line 178
    iput v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->v:F

    const/4 v2, 0x1

    .line 189
    iput-boolean v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->C:Z

    .line 191
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->A:Landroid/graphics/Rect;

    const/4 v3, 0x0

    if-eqz p2, :cond_5

    .line 250
    sget-object v4, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 253
    invoke-virtual {v4, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/16 v6, 0x30

    const/16 v7, 0x50

    if-eq v5, v6, :cond_1

    if-ne v5, v7, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "layout_gravity must be set to either top or bottom"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-ne v5, v7, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 257
    :goto_1
    iput-boolean v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->g:Z

    .line 260
    :cond_3
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 262
    sget-object v4, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->bM:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 265
    sget v4, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->bL:I

    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:I

    .line 266
    sget v4, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->bQ:I

    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->j:I

    .line 268
    sget v4, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->bT:I

    invoke-virtual {p2, v4, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->b:I

    .line 269
    sget p3, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->bS:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d:I

    .line 271
    sget p3, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->bR:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->o:I

    .line 274
    :cond_4
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 277
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 278
    iget p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:I

    const/high16 v0, 0x3f000000    # 0.5f

    if-ne p3, v1, :cond_6

    const/high16 p3, 0x42880000    # 68.0f

    mul-float p3, p3, p2

    add-float/2addr p3, v0

    float-to-int p3, p3

    .line 279
    iput p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:I

    .line 281
    :cond_6
    iget p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->j:I

    if-ne p3, v1, :cond_7

    const/high16 p3, 0x40800000    # 4.0f

    mul-float p3, p3, p2

    add-float/2addr p3, v0

    float-to-int p3, p3

    .line 282
    iput p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->j:I

    .line 285
    :cond_7
    invoke-virtual {p0, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setWillNotDraw(Z)V

    .line 287
    new-instance p3, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;-><init>(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$5;)V

    invoke-static {p0, v0, p3}, Lo/SequenceInputStream;->c(Landroid/view/ViewGroup;FLo/SequenceInputStream$StateListAnimator;)Lo/SequenceInputStream;

    move-result-object p3

    iput-object p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:Lo/SequenceInputStream;

    .line 288
    iget-object p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:Lo/SequenceInputStream;

    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->b:I

    int-to-float v0, v0

    mul-float v0, v0, p2

    invoke-virtual {p3, v0}, Lo/SequenceInputStream;->b(F)V

    .line 290
    iput-boolean v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->f:Z

    .line 291
    iput-boolean v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->q:Z

    .line 293
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 294
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:I

    return-void
.end method

.method static synthetic a(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F
    .locals 0

    .line 29
    iget p0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n:F

    return p0
.end method

.method private a(I)V
    .locals 2

    .line 869
    invoke-direct {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k()I

    move-result v0

    .line 870
    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->g:Z

    if-eqz v1, :cond_0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p1

    int-to-float p1, v0

    :goto_0
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->p:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n:F

    .line 874
    iget p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n:F

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    .line 875
    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n:F

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 878
    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n:F

    .line 881
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F
    .locals 0

    .line 29
    iget p0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->v:F

    return p0
.end method

.method private static b(Landroid/view/View;)Z
    .locals 2

    .line 453
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 455
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic c(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->p:I

    return p0
.end method

.method static synthetic d(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;)Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    return-object p1
.end method

.method static synthetic d(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Lo/SequenceInputStream;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:Lo/SequenceInputStream;

    return-object p0
.end method

.method static synthetic d(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(I)V

    return-void
.end method

.method private d(Landroid/view/View;I)Z
    .locals 0

    .line 751
    iget-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->C:Z

    if-nez p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(FI)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private d(Landroid/view/View;IF)Z
    .locals 0

    .line 744
    iget-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->C:Z

    if-nez p1, :cond_1

    invoke-virtual {p0, p3, p2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(FI)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private e(II)Z
    .locals 6

    .line 729
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Landroid/view/View;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 734
    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v2, v2, [I

    .line 736
    invoke-virtual {p0, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getLocationOnScreen([I)V

    .line 737
    aget v4, v2, v1

    add-int/2addr v4, p1

    const/4 p1, 0x1

    .line 738
    aget v2, v2, p1

    add-int/2addr v2, p2

    .line 739
    aget p2, v3, v1

    if-lt v4, p2, :cond_2

    aget p2, v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr p2, v5

    if-ge v4, p2, :cond_2

    aget p2, v3, p1

    if-lt v2, p2, :cond_2

    aget p2, v3, p1

    .line 740
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr p2, v0

    if-ge v2, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method static synthetic e(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->r:Z

    return p0
.end method

.method static synthetic f(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->g:Z

    return p0
.end method

.method static synthetic g(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Landroid/view/View;

    return-object p0
.end method

.method static synthetic h(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    return-object p0
.end method

.method static synthetic i(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k()I

    move-result p0

    return p0
.end method

.method static synthetic j(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:I

    return p0
.end method

.method private k()I
    .locals 2

    .line 758
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    return v0

    .line 766
    :cond_0
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v1

    goto :goto_0
.end method

.method private l()Z
    .locals 2

    .line 821
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/PowerSaveState;->e(FF)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lo/PowerSaveState;->e(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method a()V
    .locals 11

    .line 409
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 412
    :cond_0
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result v0

    .line 413
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 414
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v2

    .line 415
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 420
    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Landroid/view/View;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 421
    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 422
    iget-object v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    .line 423
    iget-object v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    .line 424
    iget-object v8, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 428
    :goto_0
    invoke-virtual {p0, v5}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 429
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 430
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 431
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 432
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lt v0, v4, :cond_2

    if-lt v2, v7, :cond_2

    if-gt v1, v6, :cond_2

    if-gt v3, v8, :cond_2

    const/4 v5, 0x4

    .line 440
    :cond_2
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->x:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$TaskDescription;

    if-eqz v0, :cond_0

    .line 403
    invoke-interface {v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$TaskDescription;->c(Landroid/view/View;)V

    :cond_0
    const/16 p1, 0x20

    .line 405
    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method a(FI)Z
    .locals 3

    .line 928
    iget-boolean p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->f:Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 933
    :cond_0
    invoke-direct {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k()I

    move-result p2

    .line 934
    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->g:Z

    int-to-float p2, p2

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->p:I

    int-to-float v1, v1

    mul-float p1, p1, v1

    add-float/2addr p2, p1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->p:I

    int-to-float v1, v1

    mul-float p1, p1, v1

    sub-float/2addr p2, p1

    :goto_0
    float-to-int p1, p2

    .line 938
    iget-object p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:Lo/SequenceInputStream;

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2, v1, v2, p1}, Lo/SequenceInputStream;->b(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 939
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d()V

    .line 940
    invoke-static {p0}, Lo/FilterWriter;->a(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public b()Z
    .locals 2

    .line 776
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method c(Landroid/view/View;)V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->x:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$TaskDescription;

    if-eqz v0, :cond_0

    .line 389
    invoke-interface {v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$TaskDescription;->e(Landroid/view/View;)V

    :cond_0
    const/16 p1, 0x20

    .line 391
    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    .line 786
    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e(F)Z

    move-result v0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1031
    instance-of v0, p1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$Activity;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public computeScroll()V
    .locals 2

    .line 948
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:Lo/SequenceInputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/SequenceInputStream;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 949
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->f:Z

    if-nez v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:Lo/SequenceInputStream;

    invoke-virtual {v0}, Lo/SequenceInputStream;->c()V

    return-void

    .line 954
    :cond_0
    invoke-static {p0}, Lo/FilterWriter;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method d()V
    .locals 6

    .line 444
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 445
    invoke-virtual {p0, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 446
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 447
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method d(Landroid/view/View;)V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->x:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$TaskDescription;

    if-eqz v0, :cond_0

    .line 383
    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n:F

    invoke-interface {v0, p1, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$TaskDescription;->b(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 960
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 962
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 967
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 970
    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->g:Z

    if-eqz v1, :cond_1

    .line 971
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->j:I

    sub-int/2addr v1, v2

    .line 972
    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    goto :goto_0

    .line 974
    :cond_1
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 975
    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->j:I

    add-int/2addr v2, v3

    .line 977
    :goto_0
    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 979
    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 980
    invoke-virtual {v4, v3, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 981
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .line 886
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$Activity;

    .line 888
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 892
    iget-boolean v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->f:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    iget-boolean v0, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$Activity;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 894
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->A:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 895
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->g:Z

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->A:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->A:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 902
    :goto_0
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 907
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 908
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    if-eqz v0, :cond_2

    .line 911
    iget p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d:I

    const/high16 p4, -0x1000000

    and-int/2addr p4, p3

    ushr-int/lit8 p4, p4, 0x18

    int-to-float p4, p4

    .line 912
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n:F

    sub-float/2addr v3, v0

    mul-float p4, p4, v3

    float-to-int p4, p4

    shl-int/lit8 p4, p4, 0x18

    const v0, 0xffffff

    and-int/2addr p3, v0

    or-int/2addr p3, p4

    .line 914
    iget-object p4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e:Landroid/graphics/Paint;

    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 915
    iget-object p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->A:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2
    return p2
.end method

.method public e()I
    .locals 1

    .line 341
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:I

    return v0
.end method

.method e(Landroid/view/View;)V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->x:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$TaskDescription;

    if-eqz v0, :cond_0

    .line 396
    invoke-interface {v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$TaskDescription;->d(Landroid/view/View;)V

    :cond_0
    const/16 p1, 0x20

    .line 398
    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public e(F)Z
    .locals 2

    .line 796
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 797
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->f()V

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d(Landroid/view/View;IF)Z

    move-result p1

    return p1
.end method

.method public f()V
    .locals 2

    .line 852
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 855
    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 856
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 857
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    return-void
.end method

.method public g()Z
    .locals 2

    .line 830
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->e:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1019
    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$Activity;

    invoke-direct {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$Activity;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1036
    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$Activity;

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$Activity;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1024
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$Activity;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$Activity;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$Activity;

    invoke-direct {v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$Activity;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0
.end method

.method public h()Z
    .locals 2

    .line 808
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->d:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 2

    .line 817
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->c:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 3

    .line 844
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 847
    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 848
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()V
    .locals 2

    .line 861
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 864
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 865
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 462
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 463
    iput-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->C:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 468
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    .line 469
    iput-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->C:Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 302
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 303
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 304
    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h:Landroid/view/View;

    .line 305
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 635
    invoke-static {p1}, Lo/File;->c(Landroid/view/MotionEvent;)I

    move-result v0

    .line 637
    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->f:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->q:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->r:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 647
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 648
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    if-eqz v0, :cond_6

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    goto :goto_0

    .line 659
    :cond_2
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->u:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 660
    iget v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->w:F

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 661
    iget-object v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:Lo/SequenceInputStream;

    invoke-virtual {v6}, Lo/SequenceInputStream;->a()I

    move-result v6

    .line 664
    iget-boolean v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->t:Z

    if-eqz v7, :cond_3

    .line 665
    iget v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:I

    int-to-float v8, v7

    cmpl-float v8, v0, v8

    if-lez v8, :cond_3

    int-to-float v7, v7

    cmpg-float v7, v5, v7

    if-gez v7, :cond_3

    .line 666
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3
    int-to-float v6, v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_4

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_5

    :cond_4
    float-to-int v0, v3

    float-to-int v3, v4

    .line 670
    invoke-direct {p0, v0, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e(II)Z

    move-result v0

    if-nez v0, :cond_7

    .line 671
    :cond_5
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:Lo/SequenceInputStream;

    invoke-virtual {p1}, Lo/SequenceInputStream;->e()V

    .line 672
    iput-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->r:Z

    return v2

    .line 652
    :cond_6
    iput-boolean v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->r:Z

    .line 653
    iput v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->u:F

    .line 654
    iput v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->w:F

    .line 679
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:Lo/SequenceInputStream;

    invoke-virtual {v0, p1}, Lo/SequenceInputStream;->d(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 643
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:Lo/SequenceInputStream;

    invoke-virtual {p1}, Lo/SequenceInputStream;->e()V

    return v2

    .line 638
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:Lo/SequenceInputStream;

    invoke-virtual {v0}, Lo/SequenceInputStream;->e()V

    .line 639
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 549
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result p1

    .line 550
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result p2

    .line 551
    invoke-direct {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k()I

    move-result p3

    .line 553
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result p4

    .line 555
    iget-boolean p5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->C:Z

    if-eqz p5, :cond_4

    .line 556
    sget-object p5, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$3;->a:[I

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->ordinal()I

    move-result v0

    aget p5, p5, v0

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq p5, v0, :cond_2

    const/4 v0, 0x2

    if-eq p5, v0, :cond_0

    .line 564
    iput v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n:F

    goto :goto_0

    .line 561
    :cond_0
    iget-boolean p5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->f:Z

    if-eqz p5, :cond_1

    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->v:F

    :cond_1
    iput v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n:F

    goto :goto_0

    .line 558
    :cond_2
    iget-boolean p5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->f:Z

    if-eqz p5, :cond_3

    const/4 v1, 0x0

    :cond_3
    iput v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n:F

    :cond_4
    :goto_0
    const/4 p5, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_a

    .line 570
    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 572
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5

    goto :goto_3

    .line 576
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$Activity;

    .line 577
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 579
    iget-boolean v4, v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$Activity;->a:Z

    if-eqz v4, :cond_6

    .line 580
    iget v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:I

    sub-int v4, v3, v4

    iput v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->p:I

    .line 584
    :cond_6
    iget-boolean v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->g:Z

    if-eqz v4, :cond_8

    .line 585
    iget-boolean v2, v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$Activity;->a:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->p:I

    int-to-float v2, v2

    iget v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n:F

    mul-float v2, v2, v4

    float-to-int v2, v2

    add-int/2addr v2, p3

    goto :goto_2

    :cond_7
    move v2, p2

    goto :goto_2

    .line 587
    :cond_8
    iget-boolean v2, v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$Activity;->a:Z

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->p:I

    int-to-float v2, v2

    iget v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n:F

    mul-float v2, v2, v4

    float-to-int v2, v2

    sub-int v2, p3, v2

    goto :goto_2

    :cond_9
    iget v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:I

    add-int/2addr v2, p2

    :goto_2
    add-int/2addr v3, v2

    .line 591
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, p1

    .line 596
    invoke-virtual {v1, p1, v2, v4, v3}, Landroid/view/View;->layout(IIII)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 599
    :cond_a
    iget-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->C:Z

    if-eqz p1, :cond_b

    .line 600
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a()V

    .line 603
    :cond_b
    iput-boolean p5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->C:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    .line 474
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 475
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 476
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 477
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v1, v5, :cond_8

    if-ne v3, v5, :cond_7

    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v1

    sub-int v1, v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    .line 486
    iget v3, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:I

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    .line 499
    iput-object v7, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Landroid/view/View;

    const/4 v7, 0x0

    .line 500
    iput-boolean v7, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->f:Z

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_6

    .line 504
    invoke-virtual {v0, v8}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 505
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$Activity;

    .line 508
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_0

    .line 509
    iput-boolean v7, v10, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$Activity;->e:Z

    goto :goto_4

    :cond_0
    const/4 v11, 0x1

    if-ne v8, v11, :cond_1

    .line 514
    iput-boolean v11, v10, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$Activity;->a:Z

    .line 515
    iput-boolean v11, v10, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$Activity;->e:Z

    .line 516
    iput-object v9, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Landroid/view/View;

    .line 517
    iput-boolean v11, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->f:Z

    move v11, v1

    goto :goto_1

    :cond_1
    sub-int v11, v1, v3

    .line 523
    :goto_1
    iget v12, v10, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$Activity;->width:I

    const/high16 v13, -0x80000000

    const/4 v14, -0x1

    const/4 v15, -0x2

    if-ne v12, v15, :cond_2

    .line 524
    invoke-static {v2, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    goto :goto_2

    .line 525
    :cond_2
    iget v12, v10, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$Activity;->width:I

    if-ne v12, v14, :cond_3

    .line 526
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    goto :goto_2

    .line 528
    :cond_3
    iget v12, v10, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$Activity;->width:I

    invoke-static {v12, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 532
    :goto_2
    iget v7, v10, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$Activity;->height:I

    if-ne v7, v15, :cond_4

    .line 533
    invoke-static {v11, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_3

    .line 534
    :cond_4
    iget v7, v10, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$Activity;->height:I

    if-ne v7, v14, :cond_5

    .line 535
    invoke-static {v11, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_3

    .line 537
    :cond_5
    iget v7, v10, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$Activity;->height:I

    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 540
    :goto_3
    invoke-virtual {v9, v12, v7}, Landroid/view/View;->measure(II)V

    :goto_4
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x0

    goto :goto_0

    .line 544
    :cond_6
    invoke-virtual {v0, v2, v4}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setMeasuredDimension(II)V

    return-void

    .line 482
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Height must have an exact value or MATCH_PARENT"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 480
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Width must have an exact value or MATCH_PARENT"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 608
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p2, p4, :cond_0

    const/4 p1, 0x1

    .line 611
    iput-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->C:Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 686
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->f:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->q:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:Lo/SequenceInputStream;

    invoke-virtual {v0, p1}, Lo/SequenceInputStream;->c(Landroid/view/MotionEvent;)V

    .line 692
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 705
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 706
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 707
    iget v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->u:F

    sub-float v2, v0, v2

    .line 708
    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->w:F

    sub-float v3, p1, v3

    .line 709
    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:Lo/SequenceInputStream;

    invoke-virtual {v4}, Lo/SequenceInputStream;->a()I

    move-result v4

    .line 710
    iget-object v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h:Landroid/view/View;

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Landroid/view/View;

    :goto_0
    mul-float v2, v2, v2

    mul-float v3, v3, v3

    add-float/2addr v2, v3

    mul-int v4, v4, v4

    int-to-float v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    float-to-int v0, v0

    float-to-int p1, p1

    .line 712
    invoke-direct {p0, v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e(II)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 713
    invoke-virtual {v5, p1}, Landroid/view/View;->playSoundEffect(I)V

    .line 714
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->g()Z

    move-result p1

    if-nez p1, :cond_3

    .line 715
    iget p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->v:F

    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e(F)Z

    goto :goto_1

    .line 717
    :cond_3
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->b()Z

    goto :goto_1

    .line 697
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 698
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 699
    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->u:F

    .line 700
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->w:F

    :cond_5
    :goto_1
    return v1

    .line 687
    :cond_6
    :goto_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAnchorPoint(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 369
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->v:F

    :cond_0
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 0

    .line 316
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d:I

    .line 317
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->invalidate()V

    return-void
.end method

.method public setDragView(Landroid/view/View;)V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 355
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    :cond_0
    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h:Landroid/view/View;

    .line 358
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setEnableDragViewTouchEvents(Z)V
    .locals 0

    .line 630
    iput-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->t:Z

    return-void
.end method

.method public setPanelHeight(I)V
    .locals 0

    .line 333
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:I

    .line 334
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    return-void
.end method

.method public setPanelSlideListener(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$TaskDescription;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->x:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$TaskDescription;

    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 0

    .line 620
    iput-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->q:Z

    return-void
.end method
