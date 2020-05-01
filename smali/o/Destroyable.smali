.class public abstract Lo/Destroyable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AccountManagerInternal$ActionBar;
.implements Lo/AccountAndUser;
.implements Lo/RC2ParameterSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Destroyable$TaskDescription;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Path;

.field protected final b:Lo/CheckResult;

.field final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Path;

.field private final e:Landroid/graphics/PathMeasure;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Destroyable$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lo/DESKeySpec;

.field private final h:Landroid/graphics/RectF;

.field private final i:Lo/AccountManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AccountManagerInternal<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final j:[F

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AccountManagerInternal<",
            "*",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final l:Lo/AccountManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AccountManagerInternal<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lo/AccountManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AccountManagerInternal<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lo/AccountManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AccountManagerInternal<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/DESKeySpec;Lo/CheckResult;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLo/PathKeyframes;Lo/LayoutTransition;Ljava/util/List;Lo/LayoutTransition;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DESKeySpec;",
            "Lo/CheckResult;",
            "Landroid/graphics/Paint$Cap;",
            "Landroid/graphics/Paint$Join;",
            "F",
            "Lo/PathKeyframes;",
            "Lo/LayoutTransition;",
            "Ljava/util/List<",
            "Lo/LayoutTransition;",
            ">;",
            "Lo/LayoutTransition;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lo/Destroyable;->e:Landroid/graphics/PathMeasure;

    .line 40
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/Destroyable;->d:Landroid/graphics/Path;

    .line 41
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/Destroyable;->a:Landroid/graphics/Path;

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/Destroyable;->h:Landroid/graphics/RectF;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/Destroyable;->f:Ljava/util/List;

    .line 47
    new-instance v0, Lo/PBEKeySpec;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo/PBEKeySpec;-><init>(I)V

    iput-object v0, p0, Lo/Destroyable;->c:Landroid/graphics/Paint;

    .line 58
    iput-object p1, p0, Lo/Destroyable;->g:Lo/DESKeySpec;

    .line 59
    iput-object p2, p0, Lo/Destroyable;->b:Lo/CheckResult;

    .line 61
    iget-object p1, p0, Lo/Destroyable;->c:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object p1, p0, Lo/Destroyable;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 63
    iget-object p1, p0, Lo/Destroyable;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 64
    iget-object p1, p0, Lo/Destroyable;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 66
    invoke-virtual {p6}, Lo/PathKeyframes;->d()Lo/AccountManagerInternal;

    move-result-object p1

    iput-object p1, p0, Lo/Destroyable;->n:Lo/AccountManagerInternal;

    .line 67
    invoke-virtual {p7}, Lo/LayoutTransition;->d()Lo/AccountManagerInternal;

    move-result-object p1

    iput-object p1, p0, Lo/Destroyable;->i:Lo/AccountManagerInternal;

    if-nez p9, :cond_0

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lo/Destroyable;->l:Lo/AccountManagerInternal;

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p9}, Lo/LayoutTransition;->d()Lo/AccountManagerInternal;

    move-result-object p1

    iput-object p1, p0, Lo/Destroyable;->l:Lo/AccountManagerInternal;

    .line 74
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lo/Destroyable;->k:Ljava/util/List;

    .line 75
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Lo/Destroyable;->j:[F

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 77
    :goto_1
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_1

    .line 78
    iget-object p4, p0, Lo/Destroyable;->k:Ljava/util/List;

    invoke-interface {p8, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lo/LayoutTransition;

    invoke-virtual {p5}, Lo/LayoutTransition;->d()Lo/AccountManagerInternal;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 81
    :cond_1
    iget-object p3, p0, Lo/Destroyable;->n:Lo/AccountManagerInternal;

    invoke-virtual {p2, p3}, Lo/CheckResult;->d(Lo/AccountManagerInternal;)V

    .line 82
    iget-object p3, p0, Lo/Destroyable;->i:Lo/AccountManagerInternal;

    invoke-virtual {p2, p3}, Lo/CheckResult;->d(Lo/AccountManagerInternal;)V

    const/4 p3, 0x0

    .line 83
    :goto_2
    iget-object p4, p0, Lo/Destroyable;->k:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_2

    .line 84
    iget-object p4, p0, Lo/Destroyable;->k:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lo/AccountManagerInternal;

    invoke-virtual {p2, p4}, Lo/CheckResult;->d(Lo/AccountManagerInternal;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 86
    :cond_2
    iget-object p3, p0, Lo/Destroyable;->l:Lo/AccountManagerInternal;

    if-eqz p3, :cond_3

    .line 87
    invoke-virtual {p2, p3}, Lo/CheckResult;->d(Lo/AccountManagerInternal;)V

    .line 90
    :cond_3
    iget-object p2, p0, Lo/Destroyable;->n:Lo/AccountManagerInternal;

    invoke-virtual {p2, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    .line 91
    iget-object p2, p0, Lo/Destroyable;->i:Lo/AccountManagerInternal;

    invoke-virtual {p2, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    .line 93
    :goto_3
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 94
    iget-object p2, p0, Lo/Destroyable;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/AccountManagerInternal;

    invoke-virtual {p2, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 96
    :cond_4
    iget-object p1, p0, Lo/Destroyable;->l:Lo/AccountManagerInternal;

    if-eqz p1, :cond_5

    .line 97
    invoke-virtual {p1, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    :cond_5
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Lo/Destroyable$TaskDescription;Landroid/graphics/Matrix;)V
    .locals 12

    const-string v0, "StrokeContent#applyTrimPath"

    .line 182
    invoke-static {v0}, Lo/SecretKeyFactory;->d(Ljava/lang/String;)V

    .line 183
    invoke-static {p2}, Lo/Destroyable$TaskDescription;->a(Lo/Destroyable$TaskDescription;)Lo/AccountManagerCallback;

    move-result-object v1

    if-nez v1, :cond_0

    .line 184
    invoke-static {v0}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

    return-void

    .line 187
    :cond_0
    iget-object v1, p0, Lo/Destroyable;->d:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 188
    invoke-static {p2}, Lo/Destroyable$TaskDescription;->c(Lo/Destroyable$TaskDescription;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 189
    iget-object v2, p0, Lo/Destroyable;->d:Landroid/graphics/Path;

    invoke-static {p2}, Lo/Destroyable$TaskDescription;->c(Lo/Destroyable$TaskDescription;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/Account;

    invoke-interface {v3}, Lo/Account;->a()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 191
    :cond_1
    iget-object v1, p0, Lo/Destroyable;->e:Landroid/graphics/PathMeasure;

    iget-object v2, p0, Lo/Destroyable;->d:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 192
    iget-object v1, p0, Lo/Destroyable;->e:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    .line 193
    :goto_1
    iget-object v2, p0, Lo/Destroyable;->e:Landroid/graphics/PathMeasure;

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 194
    iget-object v2, p0, Lo/Destroyable;->e:Landroid/graphics/PathMeasure;

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    add-float/2addr v1, v2

    goto :goto_1

    .line 196
    :cond_2
    invoke-static {p2}, Lo/Destroyable$TaskDescription;->a(Lo/Destroyable$TaskDescription;)Lo/AccountManagerCallback;

    move-result-object v2

    invoke-virtual {v2}, Lo/AccountManagerCallback;->g()Lo/AccountManagerInternal;

    move-result-object v2

    invoke-virtual {v2}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float v2, v2, v1

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v2, v4

    .line 198
    invoke-static {p2}, Lo/Destroyable$TaskDescription;->a(Lo/Destroyable$TaskDescription;)Lo/AccountManagerCallback;

    move-result-object v4

    invoke-virtual {v4}, Lo/AccountManagerCallback;->d()Lo/AccountManagerInternal;

    move-result-object v4

    invoke-virtual {v4}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float v4, v4, v1

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v2

    .line 200
    invoke-static {p2}, Lo/Destroyable$TaskDescription;->a(Lo/Destroyable$TaskDescription;)Lo/AccountManagerCallback;

    move-result-object v6

    invoke-virtual {v6}, Lo/AccountManagerCallback;->b()Lo/AccountManagerInternal;

    move-result-object v6

    invoke-virtual {v6}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float v6, v6, v1

    div-float/2addr v6, v5

    add-float/2addr v6, v2

    .line 203
    invoke-static {p2}, Lo/Destroyable$TaskDescription;->c(Lo/Destroyable$TaskDescription;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ltz v2, :cond_a

    .line 204
    iget-object v8, p0, Lo/Destroyable;->a:Landroid/graphics/Path;

    invoke-static {p2}, Lo/Destroyable$TaskDescription;->c(Lo/Destroyable$TaskDescription;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/Account;

    invoke-interface {v9}, Lo/Account;->a()Landroid/graphics/Path;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 205
    iget-object v8, p0, Lo/Destroyable;->a:Landroid/graphics/Path;

    invoke-virtual {v8, p3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 206
    iget-object v8, p0, Lo/Destroyable;->e:Landroid/graphics/PathMeasure;

    iget-object v9, p0, Lo/Destroyable;->a:Landroid/graphics/Path;

    invoke-virtual {v8, v9, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 207
    iget-object v8, p0, Lo/Destroyable;->e:Landroid/graphics/PathMeasure;

    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v10, v6, v1

    if-lez v10, :cond_4

    sub-float v10, v6, v1

    add-float v11, v7, v8

    cmpg-float v11, v10, v11

    if-gez v11, :cond_4

    cmpg-float v11, v7, v10

    if-gez v11, :cond_4

    cmpl-float v11, v4, v1

    if-lez v11, :cond_3

    sub-float v11, v4, v1

    div-float/2addr v11, v8

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :goto_3
    div-float/2addr v10, v8

    .line 218
    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 219
    iget-object v10, p0, Lo/Destroyable;->a:Landroid/graphics/Path;

    invoke-static {v10, v11, v9, v5}, Lo/ActivityManagerNative;->d(Landroid/graphics/Path;FFF)V

    .line 220
    iget-object v9, p0, Lo/Destroyable;->a:Landroid/graphics/Path;

    iget-object v10, p0, Lo/Destroyable;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_4
    add-float v10, v7, v8

    cmpg-float v11, v10, v4

    if-ltz v11, :cond_9

    cmpl-float v11, v7, v6

    if-lez v11, :cond_5

    goto :goto_6

    :cond_5
    cmpg-float v11, v10, v6

    if-gtz v11, :cond_6

    cmpg-float v11, v4, v7

    if-gez v11, :cond_6

    .line 226
    iget-object v9, p0, Lo/Destroyable;->a:Landroid/graphics/Path;

    iget-object v10, p0, Lo/Destroyable;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_6
    cmpg-float v11, v4, v7

    if-gez v11, :cond_7

    const/4 v11, 0x0

    goto :goto_4

    :cond_7
    sub-float v11, v4, v7

    div-float/2addr v11, v8

    :goto_4
    cmpl-float v10, v6, v10

    if-lez v10, :cond_8

    goto :goto_5

    :cond_8
    sub-float v9, v6, v7

    div-float/2addr v9, v8

    .line 240
    :goto_5
    iget-object v10, p0, Lo/Destroyable;->a:Landroid/graphics/Path;

    invoke-static {v10, v11, v9, v5}, Lo/ActivityManagerNative;->d(Landroid/graphics/Path;FFF)V

    .line 241
    iget-object v9, p0, Lo/Destroyable;->a:Landroid/graphics/Path;

    iget-object v10, p0, Lo/Destroyable;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_9
    :goto_6
    add-float/2addr v7, v8

    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2

    .line 245
    :cond_a
    invoke-static {v0}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

    return-void
.end method

.method private b(Landroid/graphics/Matrix;)V
    .locals 5

    const-string v0, "StrokeContent#applyDashPattern"

    .line 274
    invoke-static {v0}, Lo/SecretKeyFactory;->d(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lo/Destroyable;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    invoke-static {v0}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

    return-void

    .line 280
    :cond_0
    invoke-static {p1}, Lo/ActivityManagerNative;->c(Landroid/graphics/Matrix;)F

    move-result p1

    const/4 v1, 0x0

    .line 281
    :goto_0
    iget-object v2, p0, Lo/Destroyable;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 282
    iget-object v2, p0, Lo/Destroyable;->j:[F

    iget-object v3, p0, Lo/Destroyable;->k:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/AccountManagerInternal;

    invoke-virtual {v3}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v1

    .line 287
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_1

    .line 288
    iget-object v2, p0, Lo/Destroyable;->j:[F

    aget v3, v2, v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 289
    aput v4, v2, v1

    goto :goto_1

    .line 292
    :cond_1
    iget-object v2, p0, Lo/Destroyable;->j:[F

    aget v3, v2, v1

    const v4, 0x3dcccccd    # 0.1f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 293
    aput v4, v2, v1

    .line 296
    :cond_2
    :goto_1
    iget-object v2, p0, Lo/Destroyable;->j:[F

    aget v3, v2, v1

    mul-float v3, v3, p1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    :cond_3
    iget-object p1, p0, Lo/Destroyable;->l:Lo/AccountManagerInternal;

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 299
    :goto_2
    iget-object v1, p0, Lo/Destroyable;->c:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    iget-object v3, p0, Lo/Destroyable;->j:[F

    invoke-direct {v2, v3, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 300
    invoke-static {v0}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

    return-void
.end method


# virtual methods
.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AccessibilityButtonController;",
            ">;",
            "Ljava/util/List<",
            "Lo/AccessibilityButtonController;",
            ">;)V"
        }
    .end annotation

    .line 107
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 108
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/AccessibilityButtonController;

    .line 109
    instance-of v4, v3, Lo/AccountManagerCallback;

    if-eqz v4, :cond_0

    check-cast v3, Lo/AccountManagerCallback;

    .line 110
    invoke-virtual {v3}, Lo/AccountManagerCallback;->a()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v4

    sget-object v5, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->a:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v4, v5, :cond_0

    move-object v2, v3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 115
    invoke-virtual {v2, p0}, Lo/AccountManagerCallback;->b(Lo/AccountManagerInternal$ActionBar;)V

    .line 119
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    move-object v0, v1

    :goto_1
    if-ltz p1, :cond_7

    .line 120
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/AccessibilityButtonController;

    .line 121
    instance-of v4, v3, Lo/AccountManagerCallback;

    if-eqz v4, :cond_4

    move-object v4, v3

    check-cast v4, Lo/AccountManagerCallback;

    .line 122
    invoke-virtual {v4}, Lo/AccountManagerCallback;->a()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v5

    sget-object v6, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->a:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v5, v6, :cond_4

    if-eqz v0, :cond_3

    .line 124
    iget-object v3, p0, Lo/Destroyable;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_3
    new-instance v0, Lo/Destroyable$TaskDescription;

    invoke-direct {v0, v4, v1}, Lo/Destroyable$TaskDescription;-><init>(Lo/AccountManagerCallback;Lo/Destroyable$1;)V

    .line 127
    invoke-virtual {v4, p0}, Lo/AccountManagerCallback;->b(Lo/AccountManagerInternal$ActionBar;)V

    goto :goto_2

    .line 128
    :cond_4
    instance-of v4, v3, Lo/Account;

    if-eqz v4, :cond_6

    if-nez v0, :cond_5

    .line 130
    new-instance v0, Lo/Destroyable$TaskDescription;

    invoke-direct {v0, v2, v1}, Lo/Destroyable$TaskDescription;-><init>(Lo/AccountManagerCallback;Lo/Destroyable$1;)V

    .line 132
    :cond_5
    invoke-static {v0}, Lo/Destroyable$TaskDescription;->c(Lo/Destroyable$TaskDescription;)Ljava/util/List;

    move-result-object v4

    check-cast v3, Lo/Account;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    .line 136
    iget-object p1, p0, Lo/Destroyable;->f:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method

.method public c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 6

    const-string p3, "StrokeContent#getBounds"

    .line 249
    invoke-static {p3}, Lo/SecretKeyFactory;->d(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lo/Destroyable;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 251
    :goto_0
    iget-object v2, p0, Lo/Destroyable;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 252
    iget-object v2, p0, Lo/Destroyable;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Destroyable$TaskDescription;

    const/4 v3, 0x0

    .line 253
    :goto_1
    invoke-static {v2}, Lo/Destroyable$TaskDescription;->c(Lo/Destroyable$TaskDescription;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 254
    iget-object v4, p0, Lo/Destroyable;->d:Landroid/graphics/Path;

    invoke-static {v2}, Lo/Destroyable$TaskDescription;->c(Lo/Destroyable$TaskDescription;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/Account;

    invoke-interface {v5}, Lo/Account;->a()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_1
    iget-object p2, p0, Lo/Destroyable;->d:Landroid/graphics/Path;

    iget-object v1, p0, Lo/Destroyable;->h:Landroid/graphics/RectF;

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 259
    iget-object p2, p0, Lo/Destroyable;->i:Lo/AccountManagerInternal;

    check-cast p2, Lo/ChooseAccountActivity;

    invoke-virtual {p2}, Lo/ChooseAccountActivity;->g()F

    move-result p2

    .line 260
    iget-object v0, p0, Lo/Destroyable;->h:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    sub-float/2addr v1, p2

    iget-object v2, p0, Lo/Destroyable;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, p2

    iget-object v3, p0, Lo/Destroyable;->h:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iget-object v4, p0, Lo/Destroyable;->h:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 262
    iget-object p2, p0, Lo/Destroyable;->h:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 264
    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p2, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v0

    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v0

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v0

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 270
    invoke-static {p3}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

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

    .line 312
    sget-object v0, Lo/IvParameterSpec;->c:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 313
    iget-object p1, p0, Lo/Destroyable;->n:Lo/AccountManagerInternal;

    invoke-virtual {p1, p2}, Lo/AccountManagerInternal;->c(Lo/AlarmManager;)V

    goto :goto_0

    .line 314
    :cond_0
    sget-object v0, Lo/IvParameterSpec;->o:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 315
    iget-object p1, p0, Lo/Destroyable;->i:Lo/AccountManagerInternal;

    invoke-virtual {p1, p2}, Lo/AccountManagerInternal;->c(Lo/AlarmManager;)V

    goto :goto_0

    .line 316
    :cond_1
    sget-object v0, Lo/IvParameterSpec;->C:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_2

    const/4 p1, 0x0

    .line 318
    iput-object p1, p0, Lo/Destroyable;->m:Lo/AccountManagerInternal;

    goto :goto_0

    .line 320
    :cond_2
    new-instance p1, Lo/AnimatorInflater;

    invoke-direct {p1, p2}, Lo/AnimatorInflater;-><init>(Lo/AlarmManager;)V

    iput-object p1, p0, Lo/Destroyable;->m:Lo/AccountManagerInternal;

    .line 322
    iget-object p1, p0, Lo/Destroyable;->m:Lo/AccountManagerInternal;

    invoke-virtual {p1, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    .line 323
    iget-object p1, p0, Lo/Destroyable;->b:Lo/CheckResult;

    iget-object p2, p0, Lo/Destroyable;->m:Lo/AccountManagerInternal;

    invoke-virtual {p1, p2}, Lo/CheckResult;->d(Lo/AccountManagerInternal;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public d(Lo/IntKeyframeSet;ILjava/util/List;Lo/IntKeyframeSet;)V
    .locals 0
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

    .line 305
    invoke-static {p1, p2, p3, p4, p0}, Lo/ActivityManagerInternal;->b(Lo/IntKeyframeSet;ILjava/util/List;Lo/IntKeyframeSet;Lo/AccountAndUser;)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 102
    iget-object v0, p0, Lo/Destroyable;->g:Lo/DESKeySpec;

    invoke-virtual {v0}, Lo/DESKeySpec;->invalidateSelf()V

    return-void
.end method

.method public e(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    const-string v0, "StrokeContent#draw"

    .line 141
    invoke-static {v0}, Lo/SecretKeyFactory;->d(Ljava/lang/String;)V

    .line 142
    invoke-static {p2}, Lo/ActivityManagerNative;->e(Landroid/graphics/Matrix;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-static {v0}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

    return-void

    :cond_0
    int-to-float p3, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p3, v1

    .line 146
    iget-object v2, p0, Lo/Destroyable;->n:Lo/AccountManagerInternal;

    check-cast v2, Lo/AuthenticatorDescription;

    invoke-virtual {v2}, Lo/AuthenticatorDescription;->g()I

    move-result v2

    int-to-float v2, v2

    mul-float p3, p3, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p3, v2

    mul-float p3, p3, v1

    float-to-int p3, p3

    .line 147
    iget-object v1, p0, Lo/Destroyable;->c:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-static {p3, v3, v2}, Lo/ActivityManagerInternal;->c(III)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 148
    iget-object p3, p0, Lo/Destroyable;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lo/Destroyable;->i:Lo/AccountManagerInternal;

    check-cast v1, Lo/ChooseAccountActivity;

    invoke-virtual {v1}, Lo/ChooseAccountActivity;->g()F

    move-result v1

    invoke-static {p2}, Lo/ActivityManagerNative;->c(Landroid/graphics/Matrix;)F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 149
    iget-object p3, p0, Lo/Destroyable;->c:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p3

    const/4 v1, 0x0

    cmpg-float p3, p3, v1

    if-gtz p3, :cond_1

    .line 151
    invoke-static {v0}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

    return-void

    .line 154
    :cond_1
    invoke-direct {p0, p2}, Lo/Destroyable;->b(Landroid/graphics/Matrix;)V

    .line 156
    iget-object p3, p0, Lo/Destroyable;->m:Lo/AccountManagerInternal;

    if-eqz p3, :cond_2

    .line 157
    iget-object v1, p0, Lo/Destroyable;->c:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 160
    :cond_2
    :goto_0
    iget-object p3, p0, Lo/Destroyable;->f:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v3, p3, :cond_5

    .line 161
    iget-object p3, p0, Lo/Destroyable;->f:Ljava/util/List;

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/Destroyable$TaskDescription;

    .line 164
    invoke-static {p3}, Lo/Destroyable$TaskDescription;->a(Lo/Destroyable$TaskDescription;)Lo/AccountManagerCallback;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 165
    invoke-direct {p0, p1, p3, p2}, Lo/Destroyable;->a(Landroid/graphics/Canvas;Lo/Destroyable$TaskDescription;Landroid/graphics/Matrix;)V

    goto :goto_2

    :cond_3
    const-string v1, "StrokeContent#buildPath"

    .line 167
    invoke-static {v1}, Lo/SecretKeyFactory;->d(Ljava/lang/String;)V

    .line 168
    iget-object v2, p0, Lo/Destroyable;->d:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 169
    invoke-static {p3}, Lo/Destroyable$TaskDescription;->c(Lo/Destroyable$TaskDescription;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_4

    .line 170
    iget-object v4, p0, Lo/Destroyable;->d:Landroid/graphics/Path;

    invoke-static {p3}, Lo/Destroyable$TaskDescription;->c(Lo/Destroyable$TaskDescription;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/Account;

    invoke-interface {v5}, Lo/Account;->a()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 172
    :cond_4
    invoke-static {v1}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

    const-string p3, "StrokeContent#drawPath"

    .line 173
    invoke-static {p3}, Lo/SecretKeyFactory;->d(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lo/Destroyable;->d:Landroid/graphics/Path;

    iget-object v2, p0, Lo/Destroyable;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 175
    invoke-static {p3}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    :cond_5
    invoke-static {v0}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

    return-void
.end method
