.class public Lo/Dimension;
.super Lo/CheckResult;
.source ""


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final f:Landroid/graphics/Paint;

.field private g:Lo/AccountManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AccountManagerInternal<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/airbnb/lottie/model/layer/Layer;

.field private final i:Landroid/graphics/Path;

.field private final j:[F


# direct methods
.method constructor <init>(Lo/DESKeySpec;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1, p2}, Lo/CheckResult;-><init>(Lo/DESKeySpec;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 20
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lo/Dimension;->a:Landroid/graphics/RectF;

    .line 21
    new-instance p1, Lo/PBEKeySpec;

    invoke-direct {p1}, Lo/PBEKeySpec;-><init>()V

    iput-object p1, p0, Lo/Dimension;->f:Landroid/graphics/Paint;

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 22
    iput-object p1, p0, Lo/Dimension;->j:[F

    .line 23
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lo/Dimension;->i:Landroid/graphics/Path;

    .line 29
    iput-object p2, p0, Lo/Dimension;->h:Lcom/airbnb/lottie/model/layer/Layer;

    .line 31
    iget-object p1, p0, Lo/Dimension;->f:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 32
    iget-object p1, p0, Lo/Dimension;->f:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    iget-object p1, p0, Lo/Dimension;->f:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->p()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 2

    .line 73
    invoke-super {p0, p1, p2, p3}, Lo/CheckResult;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 74
    iget-object p2, p0, Lo/Dimension;->a:Landroid/graphics/RectF;

    iget-object p3, p0, Lo/Dimension;->h:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/layer/Layer;->t()I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lo/Dimension;->h:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->q()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, p3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 75
    iget-object p2, p0, Lo/Dimension;->c:Landroid/graphics/Matrix;

    iget-object p3, p0, Lo/Dimension;->a:Landroid/graphics/RectF;

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 76
    iget-object p2, p0, Lo/Dimension;->a:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public c(Ljava/lang/Object;Lo/AlarmManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lo/AlarmManager<",
            "TT;>;)V"
        }
    .end annotation

    .line 82
    invoke-super {p0, p1, p2}, Lo/CheckResult;->c(Ljava/lang/Object;Lo/AlarmManager;)V

    .line 83
    sget-object v0, Lo/IvParameterSpec;->C:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Lo/Dimension;->g:Lo/AccountManagerInternal;

    goto :goto_0

    .line 87
    :cond_0
    new-instance p1, Lo/AnimatorInflater;

    invoke-direct {p1, p2}, Lo/AnimatorInflater;-><init>(Lo/AlarmManager;)V

    iput-object p1, p0, Lo/Dimension;->g:Lo/AccountManagerInternal;

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    .line 37
    iget-object v0, p0, Lo/Dimension;->h:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->p()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v1, p0, Lo/Dimension;->d:Lo/AnimatorSet;

    invoke-virtual {v1}, Lo/AnimatorSet;->e()Lo/AccountManagerInternal;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v1, 0x64

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lo/Dimension;->d:Lo/AnimatorSet;

    invoke-virtual {v1}, Lo/AnimatorSet;->e()Lo/AccountManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    int-to-float p3, p3

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr p3, v2

    int-to-float v0, v0

    div-float/2addr v0, v2

    int-to-float v1, v1

    mul-float v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float p3, p3, v0

    mul-float p3, p3, v2

    float-to-int p3, p3

    .line 44
    iget-object v0, p0, Lo/Dimension;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 45
    iget-object v0, p0, Lo/Dimension;->g:Lo/AccountManagerInternal;

    if-eqz v0, :cond_2

    .line 46
    iget-object v1, p0, Lo/Dimension;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_2
    if-lez p3, :cond_3

    .line 49
    iget-object p3, p0, Lo/Dimension;->j:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p3, v0

    const/4 v2, 0x1

    .line 50
    aput v1, p3, v2

    .line 51
    iget-object v3, p0, Lo/Dimension;->h:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/Layer;->t()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x2

    aput v3, p3, v4

    .line 52
    iget-object p3, p0, Lo/Dimension;->j:[F

    const/4 v3, 0x3

    aput v1, p3, v3

    .line 53
    iget-object v5, p0, Lo/Dimension;->h:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/Layer;->t()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x4

    aput v5, p3, v6

    .line 54
    iget-object p3, p0, Lo/Dimension;->j:[F

    iget-object v5, p0, Lo/Dimension;->h:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/Layer;->q()I

    move-result v5

    int-to-float v5, v5

    const/4 v7, 0x5

    aput v5, p3, v7

    .line 55
    iget-object p3, p0, Lo/Dimension;->j:[F

    const/4 v5, 0x6

    aput v1, p3, v5

    .line 56
    iget-object v1, p0, Lo/Dimension;->h:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/Layer;->q()I

    move-result v1

    int-to-float v1, v1

    const/4 v8, 0x7

    aput v1, p3, v8

    .line 60
    iget-object p3, p0, Lo/Dimension;->j:[F

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 61
    iget-object p2, p0, Lo/Dimension;->i:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 62
    iget-object p2, p0, Lo/Dimension;->i:Landroid/graphics/Path;

    iget-object p3, p0, Lo/Dimension;->j:[F

    aget v1, p3, v0

    aget p3, p3, v2

    invoke-virtual {p2, v1, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 63
    iget-object p2, p0, Lo/Dimension;->i:Landroid/graphics/Path;

    iget-object p3, p0, Lo/Dimension;->j:[F

    aget v1, p3, v4

    aget p3, p3, v3

    invoke-virtual {p2, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 64
    iget-object p2, p0, Lo/Dimension;->i:Landroid/graphics/Path;

    iget-object p3, p0, Lo/Dimension;->j:[F

    aget v1, p3, v6

    aget p3, p3, v7

    invoke-virtual {p2, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 65
    iget-object p2, p0, Lo/Dimension;->i:Landroid/graphics/Path;

    iget-object p3, p0, Lo/Dimension;->j:[F

    aget v1, p3, v5

    aget p3, p3, v8

    invoke-virtual {p2, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 66
    iget-object p2, p0, Lo/Dimension;->i:Landroid/graphics/Path;

    iget-object p3, p0, Lo/Dimension;->j:[F

    aget v0, p3, v0

    aget p3, p3, v2

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 67
    iget-object p2, p0, Lo/Dimension;->i:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 68
    iget-object p2, p0, Lo/Dimension;->i:Landroid/graphics/Path;

    iget-object p3, p0, Lo/Dimension;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    return-void
.end method
