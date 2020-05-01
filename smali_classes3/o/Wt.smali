.class public final Lo/Wt;
.super Landroid/view/View;
.source ""

# interfaces
.implements Lo/Wq;


# instance fields
.field private a:I

.field private final b:Landroid/graphics/Paint;

.field private c:F

.field private final d:Landroid/graphics/Paint;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:I

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Lo/Wr;

.field private n:I

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private final t:Landroid/graphics/RectF;

.field private u:Z

.field private final v:Landroid/graphics/RectF;

.field private w:F

.field private x:Z

.field private final y:Landroid/graphics/RectF;

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/Wt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/Wt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lo/Wt;->b:Landroid/graphics/Paint;

    .line 26
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lo/Wt;->d:Landroid/graphics/Paint;

    .line 27
    sget p2, Lcom/netflix/mediaclient/ui/R$Application;->f:I

    invoke-static {p1, p2}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lo/Wt;->a:I

    .line 44
    new-instance p2, Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lo/Wt;->t:Landroid/graphics/RectF;

    .line 45
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lo/Wt;->v:Landroid/graphics/RectF;

    .line 46
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lo/Wt;->y:Landroid/graphics/RectF;

    .line 54
    sget p2, Lcom/netflix/mediaclient/ui/R$Activity;->aV:I

    invoke-static {p1, p2}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lo/Wt;->l:Landroid/graphics/drawable/Drawable;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->j:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lo/Wt;->n:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->g:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lo/Wt;->k:I

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->i:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p2, v0

    iput p2, p0, Lo/Wt;->c:F

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->m:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lo/Wt;->o:F

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->k:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lo/Wt;->w:F

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->i:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lo/Wt;->f:F

    .line 63
    iget p2, p0, Lo/Wt;->f:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    iput p2, p0, Lo/Wt;->h:F

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "context.resources"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    const-string v0, "config"

    .line 65
    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    if-ne p2, p3, :cond_0

    .line 66
    iput-boolean p3, p0, Lo/Wt;->u:Z

    .line 68
    :cond_0
    iget-object p2, p0, Lo/Wt;->b:Landroid/graphics/Paint;

    iget p3, p0, Lo/Wt;->a:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object p2, p0, Lo/Wt;->b:Landroid/graphics/Paint;

    const/high16 p3, 0x41a00000    # 20.0f

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    iget-object p2, p0, Lo/Wt;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget-object p2, p0, Lo/Wt;->d:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object p2, p0, Lo/Wt;->d:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    iget-object p2, p0, Lo/Wt;->d:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->o:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lo/Wt;->z:F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 22
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 23
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/Wt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lo/Wt;->x:Z

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lo/Wt;->x:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 102
    iget v0, p0, Lo/Wt;->f:F

    iget v1, p0, Lo/Wt;->j:F

    mul-float v1, v1, v0

    iput v1, p0, Lo/Wt;->h:F

    .line 104
    iget v1, p0, Lo/Wt;->h:F

    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    .line 105
    iput v0, p0, Lo/Wt;->h:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41a00000    # 20.0f

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_1

    .line 107
    iput v0, p0, Lo/Wt;->h:F

    .line 111
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/Wt;->t:Landroid/graphics/RectF;

    iget v1, p0, Lo/Wt;->w:F

    iget-object v2, p0, Lo/Wt;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 113
    iget-object v0, p0, Lo/Wt;->v:Landroid/graphics/RectF;

    iget v1, p0, Lo/Wt;->p:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 115
    iget v1, p0, Lo/Wt;->e:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lo/Wt;->f:F

    div-float v4, v3, v2

    sub-float/2addr v1, v4

    iget v4, p0, Lo/Wt;->h:F

    sub-float/2addr v3, v4

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 117
    iget v1, p0, Lo/Wt;->s:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 119
    iget v1, p0, Lo/Wt;->r:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 120
    iget v1, p0, Lo/Wt;->w:F

    iget-object v3, p0, Lo/Wt;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 122
    iget v0, p0, Lo/Wt;->f:F

    iget v1, p0, Lo/Wt;->h:F

    sub-float v3, v0, v1

    iget v4, p0, Lo/Wt;->w:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    const/4 v3, 0x2

    int-to-float v3, v3

    mul-float v3, v3, v4

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    .line 123
    iget-object v3, p0, Lo/Wt;->y:Landroid/graphics/RectF;

    iget v4, p0, Lo/Wt;->p:F

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 124
    iget v4, p0, Lo/Wt;->s:F

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 126
    iget v4, p0, Lo/Wt;->e:F

    div-float/2addr v4, v2

    div-float v5, v0, v2

    sub-float/2addr v4, v5

    sub-float/2addr v0, v1

    add-float/2addr v4, v0

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 127
    iget v0, v3, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lo/Wt;->w:F

    add-float/2addr v0, v1

    iput v0, v3, Landroid/graphics/RectF;->bottom:F

    .line 128
    iget-object v0, p0, Lo/Wt;->y:Landroid/graphics/RectF;

    iget-object v1, p0, Lo/Wt;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 132
    :cond_2
    iget-object v0, p0, Lo/Wt;->l:Landroid/graphics/drawable/Drawable;

    .line 133
    iget v1, p0, Lo/Wt;->e:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lo/Wt;->n:I

    sub-int/2addr v1, v2

    if-eqz v0, :cond_4

    .line 137
    iget-boolean v2, p0, Lo/Wt;->u:Z

    if-nez v2, :cond_3

    .line 138
    iget v2, p0, Lo/Wt;->p:F

    iget v3, p0, Lo/Wt;->o:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lo/Wt;->k:I

    add-int/2addr v2, v3

    goto :goto_1

    .line 140
    :cond_3
    iget v2, p0, Lo/Wt;->p:F

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lo/Wt;->k:I

    sub-int/2addr v2, v3

    :goto_1
    add-int/lit8 v3, v2, 0x0

    .line 145
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v2

    .line 146
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v2, v1

    .line 142
    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 148
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 79
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 80
    invoke-virtual {p0}, Lo/Wt;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lo/Wt;->e:F

    .line 81
    invoke-virtual {p0}, Lo/Wt;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lo/Wt;->g:F

    .line 82
    invoke-virtual {p0}, Lo/Wt;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lo/Wt;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lo/Wt;->setMeasuredDimension(II)V

    .line 83
    iget p1, p0, Lo/Wt;->g:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lo/Wt;->q:F

    .line 84
    iget-boolean p1, p0, Lo/Wt;->u:Z

    if-eqz p1, :cond_0

    .line 85
    iget p1, p0, Lo/Wt;->q:F

    iget v0, p0, Lo/Wt;->o:F

    div-float/2addr v0, p2

    sub-float/2addr p1, v0

    iget v0, p0, Lo/Wt;->z:F

    add-float/2addr p1, v0

    goto :goto_0

    .line 87
    :cond_0
    iget p1, p0, Lo/Wt;->q:F

    iget v0, p0, Lo/Wt;->o:F

    div-float/2addr v0, p2

    sub-float/2addr p1, v0

    iget v0, p0, Lo/Wt;->z:F

    sub-float/2addr p1, v0

    .line 84
    :goto_0
    iput p1, p0, Lo/Wt;->p:F

    .line 89
    iget p1, p0, Lo/Wt;->p:F

    iget v0, p0, Lo/Wt;->o:F

    add-float/2addr v0, p1

    iput v0, p0, Lo/Wt;->s:F

    .line 91
    iget v0, p0, Lo/Wt;->e:F

    div-float v1, v0, p2

    iget v2, p0, Lo/Wt;->f:F

    div-float v3, v2, p2

    add-float/2addr v1, v3

    iput v1, p0, Lo/Wt;->r:F

    .line 93
    iget-object v1, p0, Lo/Wt;->t:Landroid/graphics/RectF;

    iput p1, v1, Landroid/graphics/RectF;->left:F

    div-float/2addr v0, p2

    div-float/2addr v2, p2

    sub-float/2addr v0, v2

    .line 94
    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 95
    iget p1, p0, Lo/Wt;->s:F

    iput p1, v1, Landroid/graphics/RectF;->right:F

    .line 96
    iget p1, p0, Lo/Wt;->r:F

    iput p1, v1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-boolean v0, p0, Lo/Wt;->x:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 154
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 160
    :cond_1
    iget v0, p0, Lo/Wt;->r:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    iput v0, p0, Lo/Wt;->i:F

    .line 161
    iget p1, p0, Lo/Wt;->f:F

    iget v0, p0, Lo/Wt;->i:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_3

    cmpg-float v2, v0, p1

    if-gtz v2, :cond_3

    div-float/2addr v0, p1

    .line 162
    iput v0, p0, Lo/Wt;->j:F

    .line 163
    iget-object p1, p0, Lo/Wt;->m:Lo/Wr;

    if-eqz p1, :cond_2

    iget v0, p0, Lo/Wt;->j:F

    invoke-interface {p1, v0}, Lo/Wr;->e(F)V

    .line 164
    :cond_2
    invoke-virtual {p0}, Lo/Wt;->invalidate()V

    goto :goto_0

    .line 165
    :cond_3
    iget p1, p0, Lo/Wt;->i:F

    iget v0, p0, Lo/Wt;->f:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    const/high16 p1, 0x3f800000    # 1.0f

    .line 166
    iput p1, p0, Lo/Wt;->j:F

    .line 167
    iget-object p1, p0, Lo/Wt;->m:Lo/Wr;

    if-eqz p1, :cond_4

    iget v0, p0, Lo/Wt;->j:F

    invoke-interface {p1, v0}, Lo/Wr;->e(F)V

    .line 168
    :cond_4
    invoke-virtual {p0}, Lo/Wt;->invalidate()V

    goto :goto_0

    .line 172
    :cond_5
    iget-object p1, p0, Lo/Wt;->m:Lo/Wr;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lo/Wr;->aq_()V

    goto :goto_0

    .line 156
    :cond_6
    iget-object p1, p0, Lo/Wt;->m:Lo/Wr;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lo/Wr;->j()V

    :cond_7
    :goto_0
    return v1
.end method

.method public performClick()Z
    .locals 1

    .line 180
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    const/4 v0, 0x1

    return v0
.end method

.method public setBrightness(F)V
    .locals 0

    .line 189
    iput p1, p0, Lo/Wt;->j:F

    .line 190
    invoke-virtual {p0}, Lo/Wt;->invalidate()V

    return-void
.end method

.method public setBrightnessChangedListener(Lo/Wr;)V
    .locals 1

    const-string v0, "brightnessValueChangedListener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iput-object p1, p0, Lo/Wt;->m:Lo/Wr;

    return-void
.end method
