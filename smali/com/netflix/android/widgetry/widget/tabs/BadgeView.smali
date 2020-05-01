.class public Lcom/netflix/android/widgetry/widget/tabs/BadgeView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;
    }
.end annotation


# static fields
.field private static final c:I

.field private static final e:I


# instance fields
.field private a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

.field private b:Landroid/graphics/Paint;

.field private f:Landroid/graphics/RectF;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/RectF;

.field private i:Landroid/graphics/RectF;

.field private j:I

.field private k:I

.field private l:Landroid/graphics/RectF;

.field private m:I

.field private n:I

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lo/RemoteException;->a(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->e:I

    .line 35
    sget v0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 37
    sget-object p1, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->d:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    .line 38
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->b:Landroid/graphics/Paint;

    .line 39
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->g:Landroid/graphics/Paint;

    .line 42
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->f:Landroid/graphics/RectF;

    .line 43
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->i:Landroid/graphics/RectF;

    .line 44
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->h:Landroid/graphics/RectF;

    .line 45
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->l:Landroid/graphics/RectF;

    const/high16 p1, -0x1000000

    .line 52
    iput p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->p:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, p1, v0}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->e(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    sget-object p1, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->d:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    .line 38
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->b:Landroid/graphics/Paint;

    .line 39
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->g:Landroid/graphics/Paint;

    .line 42
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->f:Landroid/graphics/RectF;

    .line 43
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->i:Landroid/graphics/RectF;

    .line 44
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->h:Landroid/graphics/RectF;

    .line 45
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->l:Landroid/graphics/RectF;

    const/high16 p1, -0x1000000

    .line 52
    iput p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->p:I

    const/4 p1, 0x0

    .line 70
    invoke-virtual {p0, p2, p1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->e(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    sget-object p1, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->d:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    .line 38
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->b:Landroid/graphics/Paint;

    .line 39
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->g:Landroid/graphics/Paint;

    .line 42
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->f:Landroid/graphics/RectF;

    .line 43
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->i:Landroid/graphics/RectF;

    .line 44
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->h:Landroid/graphics/RectF;

    .line 45
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->l:Landroid/graphics/RectF;

    const/high16 p1, -0x1000000

    .line 52
    iput p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->p:I

    .line 76
    invoke-virtual {p0, p2, p3}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->e(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public c()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public e(Landroid/util/AttributeSet;I)V
    .locals 3

    if-eqz p1, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lo/IHwInterface$Fragment;->v:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 83
    sget p2, Lo/IHwInterface$Fragment;->w:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 84
    sget p2, Lo/IHwInterface$Fragment;->w:I

    iget v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->p:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->p:I

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    :cond_1
    iget-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->b:Landroid/graphics/Paint;

    const p2, -0xffff01

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->b:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    iget-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->b:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    iget-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->g:Landroid/graphics/Paint;

    iget v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->p:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    iget-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->g:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lo/RemoteException;->a(Landroid/content/Context;I)I

    move-result p1

    .line 95
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->g:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x2

    .line 96
    div-int/2addr p1, v0

    iput p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->j:I

    .line 97
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lo/RemoteException;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->m:I

    .line 98
    iget p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->m:I

    div-int/2addr p1, v0

    iput p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->k:I

    const/16 p1, 0x11

    .line 99
    invoke-virtual {p0, p1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setGravity(I)V

    .line 100
    invoke-virtual {p0, p2}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setMinLines(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 120
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    sget-object v1, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->e:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    if-ne v0, v1, :cond_1

    .line 121
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    sget-object v1, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->d:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    if-ne v0, v1, :cond_2

    .line 127
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->f:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    div-float v9, v0, v1

    .line 128
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->f:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    .line 129
    sget v0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->c:I

    int-to-float v1, v0

    sub-float v1, v9, v1

    int-to-float v2, v0

    sub-float v2, v10, v2

    int-to-float v3, v0

    add-float/2addr v3, v9

    int-to-float v0, v0

    add-float v4, v10, v0

    const/4 v5, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->g:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 138
    sget v0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->e:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->f:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->f:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 142
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    sget-object v1, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    const/16 v2, 0xb4

    if-ne v0, v1, :cond_3

    const/16 v6, 0xb4

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->n:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v6, v0

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    sget-object v1, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->n:I

    sub-int/2addr v0, v2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 144
    :goto_1
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->i:Landroid/graphics/RectF;

    const/high16 v3, 0x42b40000    # 90.0f

    int-to-float v4, v2

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 145
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->i:Landroid/graphics/RectF;

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->g:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 146
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->l:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 147
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->l:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->l:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->l:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->l:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->g:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 148
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->l:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->l:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->l:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->l:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->g:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 149
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->h:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    int-to-float v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->b:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 150
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->h:Landroid/graphics/RectF;

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->g:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 152
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    sget-object v1, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->b:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    if-ne v0, v1, :cond_7

    .line 153
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->m:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 156
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->k:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->k:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->k:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->k:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    const/high16 v5, 0x42b40000    # 90.0f

    const/high16 v6, 0x43340000    # 180.0f

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 159
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->l:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->k:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->l:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->k:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 161
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->l:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->k:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->l:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->k:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 163
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->h:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->k:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->h:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->k:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->h:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->k:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->h:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->k:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    const/high16 v5, 0x43870000    # 270.0f

    iget-object v8, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 167
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_3

    .line 170
    :cond_5
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    sget-object v1, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    if-ne v0, v1, :cond_6

    const/16 v0, 0x168

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->n:I

    .line 171
    :goto_2
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->f:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    int-to-float v3, v0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 172
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->f:Landroid/graphics/RectF;

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->g:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 173
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    sget-object v1, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->b:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    if-ne v0, v1, :cond_7

    .line 174
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 175
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->m:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 176
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->f:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->k:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->f:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->k:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->f:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->k:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->f:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->k:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    const/high16 v5, 0x43870000    # 270.0f

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 179
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 183
    :cond_7
    :goto_3
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 105
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 106
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->getMeasuredWidth()I

    move-result p1

    .line 107
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->getMeasuredHeight()I

    move-result p2

    if-ge p1, p2, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    .line 109
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .line 213
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextView;->onSizeChanged(IIII)V

    .line 215
    iget-object p3, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->f:Landroid/graphics/RectF;

    iget p4, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->j:I

    int-to-float v0, p4

    int-to-float v1, p4

    sub-int v2, p1, p4

    int-to-float v2, v2

    sub-int p4, p2, p4

    int-to-float p4, p4

    invoke-virtual {p3, v0, v1, v2, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 216
    iget-object p3, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->i:Landroid/graphics/RectF;

    iget p4, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->j:I

    int-to-float v0, p4

    int-to-float v1, p4

    sub-int v2, p2, p4

    int-to-float v2, v2

    sub-int p4, p2, p4

    int-to-float p4, p4

    invoke-virtual {p3, v0, v1, v2, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 217
    iget-object p3, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->l:Landroid/graphics/RectF;

    div-int/lit8 p4, p2, 0x2

    int-to-float v0, p4

    iget v1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->j:I

    int-to-float v2, v1

    sub-int p4, p1, p4

    int-to-float p4, p4

    sub-int v1, p2, v1

    int-to-float v1, v1

    invoke-virtual {p3, v0, v2, p4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 218
    iget-object p3, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->h:Landroid/graphics/RectF;

    sub-int p4, p1, p2

    iget v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->j:I

    add-int/2addr p4, v0

    int-to-float p4, p4

    int-to-float v1, v0

    sub-int v2, p1, v0

    int-to-float v2, v2

    sub-int v0, p2, v0

    int-to-float v0, v0

    invoke-virtual {p3, p4, v1, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 219
    iget-object p3, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->o:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    const/4 p4, 0x0

    .line 220
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setBackgroundShadowColor(I)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setDisplayType(Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    .line 188
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->postInvalidate()V

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 197
    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->o:Landroid/graphics/drawable/Drawable;

    .line 198
    iget-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->o:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x5

    .line 192
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    mul-int/lit16 p1, p1, 0x168

    .line 193
    div-int/lit8 p1, p1, 0x64

    iput p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->n:I

    return-void
.end method
