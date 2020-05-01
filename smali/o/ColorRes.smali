.class public Lo/ColorRes;
.super Lo/CheckResult;
.source ""


# instance fields
.field private a:Lo/AccountManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AccountManagerInternal<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/graphics/RectF;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/CheckResult;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lo/DESKeySpec;Lcom/airbnb/lottie/model/layer/Layer;Ljava/util/List;Lo/DESedeKeySpec;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DESKeySpec;",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;",
            "Lo/DESedeKeySpec;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Lo/CheckResult;-><init>(Lo/DESKeySpec;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ColorRes;->i:Ljava/util/List;

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/ColorRes;->j:Landroid/graphics/RectF;

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/ColorRes;->f:Landroid/graphics/RectF;

    .line 36
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->w()Lo/LayoutTransition;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 38
    invoke-virtual {p2}, Lo/LayoutTransition;->d()Lo/AccountManagerInternal;

    move-result-object p2

    iput-object p2, p0, Lo/ColorRes;->a:Lo/AccountManagerInternal;

    .line 39
    iget-object p2, p0, Lo/ColorRes;->a:Lo/AccountManagerInternal;

    invoke-virtual {p0, p2}, Lo/ColorRes;->d(Lo/AccountManagerInternal;)V

    .line 41
    iget-object p2, p0, Lo/ColorRes;->a:Lo/AccountManagerInternal;

    invoke-virtual {p2, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    goto :goto_0

    .line 43
    :cond_0
    iput-object v0, p0, Lo/ColorRes;->a:Lo/AccountManagerInternal;

    .line 46
    :goto_0
    new-instance p2, Lo/Params;

    .line 47
    invoke-virtual {p4}, Lo/DESedeKeySpec;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p2, v1}, Lo/Params;-><init>(I)V

    .line 50
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move-object v3, v0

    :goto_1
    const/4 v4, 0x0

    if-ltz v1, :cond_4

    .line 51
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/model/layer/Layer;

    .line 52
    invoke-static {v5, p1, p4}, Lo/CheckResult;->a(Lcom/airbnb/lottie/model/layer/Layer;Lo/DESKeySpec;Lo/DESedeKeySpec;)Lo/CheckResult;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 56
    :cond_1
    invoke-virtual {v6}, Lo/CheckResult;->b()Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/Layer;->d()J

    move-result-wide v7

    invoke-virtual {p2, v7, v8, v6}, Lo/Params;->b(JLjava/lang/Object;)V

    if-eqz v3, :cond_2

    .line 58
    invoke-virtual {v3, v6}, Lo/CheckResult;->c(Lo/CheckResult;)V

    move-object v3, v0

    goto :goto_2

    .line 61
    :cond_2
    iget-object v7, p0, Lo/ColorRes;->i:Ljava/util/List;

    invoke-interface {v7, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 62
    sget-object v4, Lo/ColorRes$1;->b:[I

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/Layer;->n()Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v2, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v6

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 71
    :cond_4
    :goto_3
    invoke-virtual {p2}, Lo/Params;->a()I

    move-result p1

    if-ge v4, p1, :cond_7

    .line 72
    invoke-virtual {p2, v4}, Lo/Params;->d(I)J

    move-result-wide p3

    .line 73
    invoke-virtual {p2, p3, p4}, Lo/Params;->c(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/CheckResult;

    if-nez p1, :cond_5

    goto :goto_4

    .line 80
    :cond_5
    invoke-virtual {p1}, Lo/CheckResult;->b()Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/layer/Layer;->m()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lo/Params;->c(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/CheckResult;

    if-eqz p3, :cond_6

    .line 82
    invoke-virtual {p1, p3}, Lo/CheckResult;->a(Lo/CheckResult;)V

    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method


# virtual methods
.method protected b(Lo/IntKeyframeSet;ILjava/util/List;Lo/IntKeyframeSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/IntKeyframeSet;",
            "I",
            "Ljava/util/List<",
            "Lo/IntKeyframeSet;",
            ">;",
            "Lo/IntKeyframeSet;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 173
    :goto_0
    iget-object v1, p0, Lo/ColorRes;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 174
    iget-object v1, p0, Lo/ColorRes;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CheckResult;

    invoke-virtual {v1, p1, p2, p3, p4}, Lo/CheckResult;->d(Lo/IntKeyframeSet;ILjava/util/List;Lo/IntKeyframeSet;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 108
    invoke-super {p0, p1, p2, p3}, Lo/CheckResult;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 109
    iget-object p2, p0, Lo/ColorRes;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    :goto_0
    if-ltz p2, :cond_0

    .line 110
    iget-object v0, p0, Lo/ColorRes;->j:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 111
    iget-object v0, p0, Lo/ColorRes;->i:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CheckResult;

    iget-object v1, p0, Lo/ColorRes;->j:Landroid/graphics/RectF;

    iget-object v2, p0, Lo/ColorRes;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2, p3}, Lo/CheckResult;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 112
    iget-object v0, p0, Lo/ColorRes;->j:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
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

    .line 181
    invoke-super {p0, p1, p2}, Lo/CheckResult;->c(Ljava/lang/Object;Lo/AlarmManager;)V

    .line 183
    sget-object v0, Lo/IvParameterSpec;->D:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 185
    iput-object p1, p0, Lo/ColorRes;->a:Lo/AccountManagerInternal;

    goto :goto_0

    .line 187
    :cond_0
    new-instance p1, Lo/AnimatorInflater;

    invoke-direct {p1, p2}, Lo/AnimatorInflater;-><init>(Lo/AlarmManager;)V

    iput-object p1, p0, Lo/ColorRes;->a:Lo/AccountManagerInternal;

    .line 188
    iget-object p1, p0, Lo/ColorRes;->a:Lo/AccountManagerInternal;

    invoke-virtual {p0, p1}, Lo/ColorRes;->d(Lo/AccountManagerInternal;)V

    :cond_1
    :goto_0
    return-void
.end method

.method d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    const-string v0, "CompositionLayer#draw"

    .line 88
    invoke-static {v0}, Lo/SecretKeyFactory;->d(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 90
    iget-object v1, p0, Lo/ColorRes;->f:Landroid/graphics/RectF;

    iget-object v2, p0, Lo/ColorRes;->e:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/Layer;->h()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lo/ColorRes;->e:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/Layer;->i()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 91
    iget-object v1, p0, Lo/ColorRes;->f:Landroid/graphics/RectF;

    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 93
    iget-object v1, p0, Lo/ColorRes;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    .line 95
    iget-object v3, p0, Lo/ColorRes;->f:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 96
    iget-object v3, p0, Lo/ColorRes;->f:Landroid/graphics/RectF;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_1

    .line 99
    iget-object v3, p0, Lo/ColorRes;->i:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/CheckResult;

    .line 100
    invoke-virtual {v3, p1, p2, p3}, Lo/CheckResult;->e(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 104
    invoke-static {v0}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

    return-void
.end method

.method public e(F)V
    .locals 2

    .line 117
    invoke-super {p0, p1}, Lo/CheckResult;->e(F)V

    .line 118
    iget-object v0, p0, Lo/ColorRes;->a:Lo/AccountManagerInternal;

    if-eqz v0, :cond_0

    .line 119
    iget-object p1, p0, Lo/ColorRes;->b:Lo/DESKeySpec;

    invoke-virtual {p1}, Lo/DESKeySpec;->q()Lo/DESedeKeySpec;

    move-result-object p1

    invoke-virtual {p1}, Lo/DESedeKeySpec;->a()F

    move-result p1

    .line 120
    iget-object v0, p0, Lo/ColorRes;->a:Lo/AccountManagerInternal;

    invoke-virtual {v0}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-long v0, v0

    long-to-float v0, v0

    div-float p1, v0, p1

    .line 123
    :cond_0
    iget-object v0, p0, Lo/ColorRes;->e:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->c()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lo/ColorRes;->e:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->c()F

    move-result v0

    div-float/2addr p1, v0

    .line 127
    :cond_1
    iget-object v0, p0, Lo/ColorRes;->e:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->b()F

    move-result v0

    sub-float/2addr p1, v0

    .line 128
    iget-object v0, p0, Lo/ColorRes;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 129
    iget-object v1, p0, Lo/ColorRes;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CheckResult;

    invoke-virtual {v1, p1}, Lo/CheckResult;->e(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method
