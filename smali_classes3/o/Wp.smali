.class public final Lo/Wp;
.super Landroid/view/View;
.source ""

# interfaces
.implements Lo/Wq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Wp$ActionBar;
    }
.end annotation


# static fields
.field public static final b:Lo/Wp$ActionBar;


# instance fields
.field private A:Z

.field private D:Landroid/graphics/drawable/Drawable;

.field private final a:Landroid/graphics/Paint;

.field private c:I

.field private d:F

.field private final e:Landroid/graphics/Paint;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:I

.field private m:F

.field private n:Lo/Wr;

.field private o:I

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private final t:Landroid/graphics/RectF;

.field private u:Z

.field private v:Landroid/graphics/drawable/Drawable;

.field private final w:Landroid/graphics/RectF;

.field private final x:Landroid/graphics/RectF;

.field private y:F

.field private z:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Wp$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Wp$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/Wp;->b:Lo/Wp$ActionBar;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/Wp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

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

    invoke-direct/range {v0 .. v5}, Lo/Wp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lo/Wp;->e:Landroid/graphics/Paint;

    .line 29
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lo/Wp;->a:Landroid/graphics/Paint;

    .line 30
    sget p2, Lcom/netflix/mediaclient/ui/R$Application;->f:I

    invoke-static {p1, p2}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lo/Wp;->c:I

    .line 47
    new-instance p2, Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lo/Wp;->t:Landroid/graphics/RectF;

    .line 48
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lo/Wp;->x:Landroid/graphics/RectF;

    .line 49
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lo/Wp;->w:Landroid/graphics/RectF;

    .line 58
    sget p2, Lcom/netflix/mediaclient/ui/R$Activity;->aT:I

    invoke-static {p1, p2}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lo/Wp;->v:Landroid/graphics/drawable/Drawable;

    .line 59
    sget p2, Lcom/netflix/mediaclient/ui/R$Activity;->aU:I

    invoke-static {p1, p2}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lo/Wp;->D:Landroid/graphics/drawable/Drawable;

    .line 60
    sget p2, Lcom/netflix/mediaclient/ui/R$Activity;->aS:I

    invoke-static {p1, p2}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lo/Wp;->z:Landroid/graphics/drawable/Drawable;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->j:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lo/Wp;->l:I

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->i:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p2, v0

    iput p2, p0, Lo/Wp;->d:F

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->m:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lo/Wp;->k:F

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->k:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lo/Wp;->y:F

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->i:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lo/Wp;->m:F

    .line 68
    iget p2, p0, Lo/Wp;->m:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    iput p2, p0, Lo/Wp;->j:F

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "context.resources"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    const-string v0, "config"

    .line 70
    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    if-ne p2, p3, :cond_0

    .line 71
    iput-boolean p3, p0, Lo/Wp;->u:Z

    .line 73
    :cond_0
    iget-object p2, p0, Lo/Wp;->e:Landroid/graphics/Paint;

    iget p3, p0, Lo/Wp;->c:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object p2, p0, Lo/Wp;->e:Landroid/graphics/Paint;

    const/high16 p3, 0x41a00000    # 20.0f

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    iget-object p2, p0, Lo/Wp;->e:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iget-object p2, p0, Lo/Wp;->a:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget-object p2, p0, Lo/Wp;->a:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 79
    iget-object p2, p0, Lo/Wp;->a:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->h:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lo/Wp;->o:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 21
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 22
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/Wp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 203
    iput-boolean v0, p0, Lo/Wp;->A:Z

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 199
    iput-boolean v0, p0, Lo/Wp;->A:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 104
    iget v0, p0, Lo/Wp;->m:F

    iget v1, p0, Lo/Wp;->f:F

    mul-float v1, v1, v0

    iput v1, p0, Lo/Wp;->j:F

    .line 106
    iget v1, p0, Lo/Wp;->j:F

    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    .line 107
    iput v0, p0, Lo/Wp;->j:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41a00000    # 20.0f

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_1

    .line 109
    iput v0, p0, Lo/Wp;->j:F

    .line 113
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/Wp;->t:Landroid/graphics/RectF;

    iget v1, p0, Lo/Wp;->y:F

    iget-object v2, p0, Lo/Wp;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 115
    iget-object v0, p0, Lo/Wp;->x:Landroid/graphics/RectF;

    iget v1, p0, Lo/Wp;->r:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 117
    iget v1, p0, Lo/Wp;->i:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lo/Wp;->m:F

    div-float v4, v3, v2

    sub-float/2addr v1, v4

    iget v4, p0, Lo/Wp;->j:F

    sub-float/2addr v3, v4

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 119
    iget v1, p0, Lo/Wp;->p:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 121
    iget v1, p0, Lo/Wp;->q:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 122
    iget v1, p0, Lo/Wp;->y:F

    iget-object v3, p0, Lo/Wp;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 124
    iget v0, p0, Lo/Wp;->m:F

    iget v1, p0, Lo/Wp;->j:F

    sub-float v3, v0, v1

    iget v4, p0, Lo/Wp;->y:F

    const/4 v5, 0x2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    int-to-float v3, v5

    mul-float v3, v3, v4

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    .line 125
    iget-object v3, p0, Lo/Wp;->w:Landroid/graphics/RectF;

    iget v4, p0, Lo/Wp;->r:F

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 126
    iget v4, p0, Lo/Wp;->p:F

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 128
    iget v4, p0, Lo/Wp;->i:F

    div-float/2addr v4, v2

    div-float v2, v0, v2

    sub-float/2addr v4, v2

    sub-float/2addr v0, v1

    add-float/2addr v4, v0

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 129
    iget v0, v3, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lo/Wp;->y:F

    add-float/2addr v0, v1

    iput v0, v3, Landroid/graphics/RectF;->bottom:F

    .line 130
    iget-object v0, p0, Lo/Wp;->w:Landroid/graphics/RectF;

    iget-object v1, p0, Lo/Wp;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 134
    :cond_2
    iget v0, p0, Lo/Wp;->f:F

    float-to-double v1, v0

    const-wide v3, 0x3fd51eb851eb851fL    # 0.33

    cmpg-double v6, v1, v3

    if-gez v6, :cond_3

    .line 135
    iget-object v0, p0, Lo/Wp;->z:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    float-to-double v1, v0

    cmpl-double v6, v1, v3

    if-ltz v6, :cond_4

    float-to-double v0, v0

    const-wide v2, 0x3fe570a3d70a3d71L    # 0.67

    cmpg-double v4, v0, v2

    if-gez v4, :cond_4

    .line 137
    iget-object v0, p0, Lo/Wp;->D:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 139
    :cond_4
    iget-object v0, p0, Lo/Wp;->v:Landroid/graphics/drawable/Drawable;

    :goto_1
    if-eqz v0, :cond_5

    .line 143
    iget-object v1, p0, Lo/Wp;->t:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lo/Wp;->o:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 144
    iget v2, p0, Lo/Wp;->s:F

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/2addr v3, v5

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v3, v2, 0x0

    float-to-int v1, v1

    .line 148
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v2

    .line 149
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v2, v1

    .line 145
    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 152
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 84
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 85
    invoke-virtual {p0}, Lo/Wp;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lo/Wp;->i:F

    .line 86
    invoke-virtual {p0}, Lo/Wp;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lo/Wp;->h:F

    .line 87
    invoke-virtual {p0}, Lo/Wp;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lo/Wp;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lo/Wp;->setMeasuredDimension(II)V

    .line 88
    iget p1, p0, Lo/Wp;->h:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lo/Wp;->s:F

    .line 89
    iget p1, p0, Lo/Wp;->s:F

    iget v0, p0, Lo/Wp;->k:F

    div-float v1, v0, p2

    sub-float/2addr p1, v1

    iput p1, p0, Lo/Wp;->r:F

    .line 91
    iget p1, p0, Lo/Wp;->r:F

    add-float/2addr v0, p1

    iput v0, p0, Lo/Wp;->p:F

    .line 93
    iget v0, p0, Lo/Wp;->i:F

    div-float v1, v0, p2

    iget v2, p0, Lo/Wp;->m:F

    div-float v3, v2, p2

    add-float/2addr v1, v3

    iput v1, p0, Lo/Wp;->q:F

    .line 95
    iget-object v1, p0, Lo/Wp;->t:Landroid/graphics/RectF;

    iput p1, v1, Landroid/graphics/RectF;->left:F

    div-float/2addr v0, p2

    div-float/2addr v2, p2

    sub-float/2addr v0, v2

    .line 96
    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 97
    iget p1, p0, Lo/Wp;->p:F

    iput p1, v1, Landroid/graphics/RectF;->right:F

    .line 98
    iget p1, p0, Lo/Wp;->q:F

    iput p1, v1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-boolean v0, p0, Lo/Wp;->A:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 159
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    iget v0, p0, Lo/Wp;->q:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    iput v0, p0, Lo/Wp;->g:F

    .line 166
    iget p1, p0, Lo/Wp;->m:F

    iget v0, p0, Lo/Wp;->g:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_3

    cmpg-float v2, v0, p1

    if-gtz v2, :cond_3

    div-float/2addr v0, p1

    .line 167
    iput v0, p0, Lo/Wp;->f:F

    .line 168
    iget-object p1, p0, Lo/Wp;->n:Lo/Wr;

    if-eqz p1, :cond_2

    iget v0, p0, Lo/Wp;->f:F

    invoke-interface {p1, v0}, Lo/Wr;->e(F)V

    .line 169
    :cond_2
    invoke-virtual {p0}, Lo/Wp;->invalidate()V

    goto :goto_0

    .line 170
    :cond_3
    iget p1, p0, Lo/Wp;->g:F

    iget v0, p0, Lo/Wp;->m:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    const/high16 p1, 0x3f800000    # 1.0f

    .line 171
    iput p1, p0, Lo/Wp;->f:F

    .line 172
    iget-object p1, p0, Lo/Wp;->n:Lo/Wr;

    if-eqz p1, :cond_4

    iget v0, p0, Lo/Wp;->f:F

    invoke-interface {p1, v0}, Lo/Wr;->e(F)V

    .line 173
    :cond_4
    invoke-virtual {p0}, Lo/Wp;->invalidate()V

    goto :goto_0

    .line 177
    :cond_5
    iget-object p1, p0, Lo/Wp;->n:Lo/Wr;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lo/Wr;->aq_()V

    goto :goto_0

    .line 161
    :cond_6
    iget-object p1, p0, Lo/Wp;->n:Lo/Wr;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lo/Wr;->j()V

    :cond_7
    :goto_0
    return v1
.end method

.method public performClick()Z
    .locals 1

    .line 185
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    const/4 v0, 0x1

    return v0
.end method

.method public setBrightness(F)V
    .locals 0

    .line 194
    iput p1, p0, Lo/Wp;->f:F

    .line 195
    invoke-virtual {p0}, Lo/Wp;->invalidate()V

    return-void
.end method

.method public setBrightnessChangedListener(Lo/Wr;)V
    .locals 1

    const-string v0, "brightnessValueChangedListener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iput-object p1, p0, Lo/Wp;->n:Lo/Wr;

    return-void
.end method
