.class public Lo/AccessibilityServiceInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RC2ParameterSpec;
.implements Lo/AccountManagerInternal$ActionBar;
.implements Lo/AccountAndUser;


# instance fields
.field private final a:Lo/CheckResult;

.field private final b:Lo/Params;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Params<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Lo/Params;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Params<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/graphics/Matrix;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/Path;

.field private final i:Landroid/graphics/RectF;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/airbnb/lottie/model/content/GradientType;

.field private final l:Lo/AccountManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AccountManagerInternal<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lo/AccountManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AccountManagerInternal<",
            "Lo/AppIdInt;",
            "Lo/AppIdInt;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lo/AccountManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AccountManagerInternal<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lo/AccountManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AccountManagerInternal<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lo/DESKeySpec;

.field private final r:I

.field private s:Lo/AccountManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AccountManagerInternal<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lo/AnimatorInflater;


# direct methods
.method public constructor <init>(Lo/DESKeySpec;Lo/CheckResult;Lo/ArrayRes;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lo/Params;

    invoke-direct {v0}, Lo/Params;-><init>()V

    iput-object v0, p0, Lo/AccessibilityServiceInfo;->e:Lo/Params;

    .line 46
    new-instance v0, Lo/Params;

    invoke-direct {v0}, Lo/Params;-><init>()V

    iput-object v0, p0, Lo/AccessibilityServiceInfo;->b:Lo/Params;

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/AccessibilityServiceInfo;->f:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/AccessibilityServiceInfo;->h:Landroid/graphics/Path;

    .line 49
    new-instance v0, Lo/PBEKeySpec;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo/PBEKeySpec;-><init>(I)V

    iput-object v0, p0, Lo/AccessibilityServiceInfo;->g:Landroid/graphics/Paint;

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/AccessibilityServiceInfo;->i:Landroid/graphics/RectF;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/AccessibilityServiceInfo;->j:Ljava/util/List;

    .line 63
    iput-object p2, p0, Lo/AccessibilityServiceInfo;->a:Lo/CheckResult;

    .line 64
    invoke-virtual {p3}, Lo/ArrayRes;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/AccessibilityServiceInfo;->d:Ljava/lang/String;

    .line 65
    invoke-virtual {p3}, Lo/ArrayRes;->f()Z

    move-result v0

    iput-boolean v0, p0, Lo/AccessibilityServiceInfo;->c:Z

    .line 66
    iput-object p1, p0, Lo/AccessibilityServiceInfo;->q:Lo/DESKeySpec;

    .line 67
    invoke-virtual {p3}, Lo/ArrayRes;->c()Lcom/airbnb/lottie/model/content/GradientType;

    move-result-object v0

    iput-object v0, p0, Lo/AccessibilityServiceInfo;->k:Lcom/airbnb/lottie/model/content/GradientType;

    .line 68
    iget-object v0, p0, Lo/AccessibilityServiceInfo;->h:Landroid/graphics/Path;

    invoke-virtual {p3}, Lo/ArrayRes;->d()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 69
    invoke-virtual {p1}, Lo/DESKeySpec;->q()Lo/DESedeKeySpec;

    move-result-object p1

    invoke-virtual {p1}, Lo/DESedeKeySpec;->a()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lo/AccessibilityServiceInfo;->r:I

    .line 71
    invoke-virtual {p3}, Lo/ArrayRes;->e()Lo/Keyframes;

    move-result-object p1

    invoke-virtual {p1}, Lo/Keyframes;->d()Lo/AccountManagerInternal;

    move-result-object p1

    iput-object p1, p0, Lo/AccessibilityServiceInfo;->m:Lo/AccountManagerInternal;

    .line 72
    iget-object p1, p0, Lo/AccessibilityServiceInfo;->m:Lo/AccountManagerInternal;

    invoke-virtual {p1, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    .line 73
    iget-object p1, p0, Lo/AccessibilityServiceInfo;->m:Lo/AccountManagerInternal;

    invoke-virtual {p2, p1}, Lo/CheckResult;->d(Lo/AccountManagerInternal;)V

    .line 75
    invoke-virtual {p3}, Lo/ArrayRes;->a()Lo/PathKeyframes;

    move-result-object p1

    invoke-virtual {p1}, Lo/PathKeyframes;->d()Lo/AccountManagerInternal;

    move-result-object p1

    iput-object p1, p0, Lo/AccessibilityServiceInfo;->l:Lo/AccountManagerInternal;

    .line 76
    iget-object p1, p0, Lo/AccessibilityServiceInfo;->l:Lo/AccountManagerInternal;

    invoke-virtual {p1, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    .line 77
    iget-object p1, p0, Lo/AccessibilityServiceInfo;->l:Lo/AccountManagerInternal;

    invoke-virtual {p2, p1}, Lo/CheckResult;->d(Lo/AccountManagerInternal;)V

    .line 79
    invoke-virtual {p3}, Lo/ArrayRes;->g()Lo/TimeAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lo/TimeAnimator;->d()Lo/AccountManagerInternal;

    move-result-object p1

    iput-object p1, p0, Lo/AccessibilityServiceInfo;->n:Lo/AccountManagerInternal;

    .line 80
    iget-object p1, p0, Lo/AccessibilityServiceInfo;->n:Lo/AccountManagerInternal;

    invoke-virtual {p1, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    .line 81
    iget-object p1, p0, Lo/AccessibilityServiceInfo;->n:Lo/AccountManagerInternal;

    invoke-virtual {p2, p1}, Lo/CheckResult;->d(Lo/AccountManagerInternal;)V

    .line 83
    invoke-virtual {p3}, Lo/ArrayRes;->j()Lo/TimeAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lo/TimeAnimator;->d()Lo/AccountManagerInternal;

    move-result-object p1

    iput-object p1, p0, Lo/AccessibilityServiceInfo;->o:Lo/AccountManagerInternal;

    .line 84
    iget-object p1, p0, Lo/AccessibilityServiceInfo;->o:Lo/AccountManagerInternal;

    invoke-virtual {p1, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    .line 85
    iget-object p1, p0, Lo/AccessibilityServiceInfo;->o:Lo/AccountManagerInternal;

    invoke-virtual {p2, p1}, Lo/CheckResult;->d(Lo/AccountManagerInternal;)V

    return-void
.end method

.method private a()Landroid/graphics/RadialGradient;
    .locals 13

    .line 172
    invoke-direct {p0}, Lo/AccessibilityServiceInfo;->d()I

    move-result v0

    .line 173
    iget-object v1, p0, Lo/AccessibilityServiceInfo;->b:Lo/Params;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lo/Params;->c(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_0

    return-object v0

    .line 177
    :cond_0
    iget-object v0, p0, Lo/AccessibilityServiceInfo;->n:Lo/AccountManagerInternal;

    invoke-virtual {v0}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 178
    iget-object v1, p0, Lo/AccessibilityServiceInfo;->o:Lo/AccountManagerInternal;

    invoke-virtual {v1}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 179
    iget-object v4, p0, Lo/AccessibilityServiceInfo;->m:Lo/AccountManagerInternal;

    invoke-virtual {v4}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/AppIdInt;

    .line 180
    invoke-virtual {v4}, Lo/AppIdInt;->a()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lo/AccessibilityServiceInfo;->d([I)[I

    move-result-object v10

    .line 181
    invoke-virtual {v4}, Lo/AppIdInt;->e()[F

    move-result-object v11

    .line 182
    iget v7, v0, Landroid/graphics/PointF;->x:F

    .line 183
    iget v8, v0, Landroid/graphics/PointF;->y:F

    .line 184
    iget v0, v1, Landroid/graphics/PointF;->x:F

    .line 185
    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v7

    float-to-double v4, v0

    sub-float/2addr v1, v8

    float-to-double v0, v1

    .line 186
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    const v0, 0x3a83126f    # 0.001f

    const v9, 0x3a83126f    # 0.001f

    goto :goto_0

    :cond_1
    move v9, v0

    .line 190
    :goto_0
    new-instance v0, Landroid/graphics/RadialGradient;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 191
    iget-object v1, p0, Lo/AccessibilityServiceInfo;->b:Lo/Params;

    invoke-virtual {v1, v2, v3, v0}, Lo/Params;->b(JLjava/lang/Object;)V

    return-object v0
.end method

.method private b()Landroid/graphics/LinearGradient;
    .locals 14

    .line 155
    invoke-direct {p0}, Lo/AccessibilityServiceInfo;->d()I

    move-result v0

    .line 156
    iget-object v1, p0, Lo/AccessibilityServiceInfo;->e:Lo/Params;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lo/Params;->c(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    return-object v0

    .line 160
    :cond_0
    iget-object v0, p0, Lo/AccessibilityServiceInfo;->n:Lo/AccountManagerInternal;

    invoke-virtual {v0}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 161
    iget-object v1, p0, Lo/AccessibilityServiceInfo;->o:Lo/AccountManagerInternal;

    invoke-virtual {v1}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 162
    iget-object v4, p0, Lo/AccessibilityServiceInfo;->m:Lo/AccountManagerInternal;

    invoke-virtual {v4}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/AppIdInt;

    .line 163
    invoke-virtual {v4}, Lo/AppIdInt;->a()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lo/AccessibilityServiceInfo;->d([I)[I

    move-result-object v11

    .line 164
    invoke-virtual {v4}, Lo/AppIdInt;->e()[F

    move-result-object v12

    .line 165
    new-instance v4, Landroid/graphics/LinearGradient;

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget v10, v1, Landroid/graphics/PointF;->y:F

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v4

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 167
    iget-object v0, p0, Lo/AccessibilityServiceInfo;->e:Lo/Params;

    invoke-virtual {v0, v2, v3, v4}, Lo/Params;->b(JLjava/lang/Object;)V

    return-object v4
.end method

.method private d()I
    .locals 4

    .line 196
    iget-object v0, p0, Lo/AccessibilityServiceInfo;->n:Lo/AccountManagerInternal;

    invoke-virtual {v0}, Lo/AccountManagerInternal;->i()F

    move-result v0

    iget v1, p0, Lo/AccessibilityServiceInfo;->r:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 197
    iget-object v1, p0, Lo/AccessibilityServiceInfo;->o:Lo/AccountManagerInternal;

    invoke-virtual {v1}, Lo/AccountManagerInternal;->i()F

    move-result v1

    iget v2, p0, Lo/AccessibilityServiceInfo;->r:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 198
    iget-object v2, p0, Lo/AccessibilityServiceInfo;->m:Lo/AccountManagerInternal;

    invoke-virtual {v2}, Lo/AccountManagerInternal;->i()F

    move-result v2

    iget v3, p0, Lo/AccessibilityServiceInfo;->r:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-eqz v0, :cond_0

    const/16 v3, 0x20f

    mul-int v3, v3, v0

    goto :goto_0

    :cond_0
    const/16 v3, 0x11

    :goto_0
    if-eqz v1, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    mul-int v3, v3, v1

    :cond_1
    if-eqz v2, :cond_2

    mul-int/lit8 v3, v3, 0x1f

    mul-int v3, v3, v2

    :cond_2
    return v3
.end method

.method private d([I)[I
    .locals 4

    .line 213
    iget-object v0, p0, Lo/AccessibilityServiceInfo;->t:Lo/AnimatorInflater;

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v0}, Lo/AnimatorInflater;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    check-cast v0, [Ljava/lang/Integer;

    .line 215
    array-length v1, p1

    array-length v2, v0

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 216
    :goto_0
    array-length v1, p1

    if-ge v3, v1, :cond_1

    .line 217
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 220
    :cond_0
    array-length p1, v0

    new-array p1, p1, [I

    .line 221
    :goto_1
    array-length v1, v0

    if-ge v3, v1, :cond_1

    .line 222
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 2
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

    const/4 p1, 0x0

    .line 93
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 94
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AccessibilityButtonController;

    .line 95
    instance-of v1, v0, Lo/Account;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lo/AccessibilityServiceInfo;->j:Ljava/util/List;

    check-cast v0, Lo/Account;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lo/AccessibilityServiceInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 135
    iget-object p3, p0, Lo/AccessibilityServiceInfo;->h:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 136
    :goto_0
    iget-object v1, p0, Lo/AccessibilityServiceInfo;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 137
    iget-object v1, p0, Lo/AccessibilityServiceInfo;->h:Landroid/graphics/Path;

    iget-object v2, p0, Lo/AccessibilityServiceInfo;->j:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Account;

    invoke-interface {v2}, Lo/Account;->a()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    iget-object p2, p0, Lo/AccessibilityServiceInfo;->h:Landroid/graphics/Path;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 142
    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public c(Ljava/lang/Object;Lo/AlarmManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lo/AlarmManager<",
            "TT;>;)V"
        }
    .end annotation

    .line 237
    sget-object v0, Lo/IvParameterSpec;->c:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 238
    iget-object p1, p0, Lo/AccessibilityServiceInfo;->l:Lo/AccountManagerInternal;

    invoke-virtual {p1, p2}, Lo/AccountManagerInternal;->c(Lo/AlarmManager;)V

    goto :goto_0

    .line 239
    :cond_0
    sget-object v0, Lo/IvParameterSpec;->C:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_1

    .line 241
    iput-object v1, p0, Lo/AccessibilityServiceInfo;->s:Lo/AccountManagerInternal;

    goto :goto_0

    .line 243
    :cond_1
    new-instance p1, Lo/AnimatorInflater;

    invoke-direct {p1, p2}, Lo/AnimatorInflater;-><init>(Lo/AlarmManager;)V

    iput-object p1, p0, Lo/AccessibilityServiceInfo;->s:Lo/AccountManagerInternal;

    .line 245
    iget-object p1, p0, Lo/AccessibilityServiceInfo;->s:Lo/AccountManagerInternal;

    invoke-virtual {p1, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    .line 246
    iget-object p1, p0, Lo/AccessibilityServiceInfo;->a:Lo/CheckResult;

    iget-object p2, p0, Lo/AccessibilityServiceInfo;->s:Lo/AccountManagerInternal;

    invoke-virtual {p1, p2}, Lo/CheckResult;->d(Lo/AccountManagerInternal;)V

    goto :goto_0

    .line 248
    :cond_2
    sget-object v0, Lo/IvParameterSpec;->B:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_5

    if-nez p2, :cond_4

    .line 250
    iget-object p1, p0, Lo/AccessibilityServiceInfo;->t:Lo/AnimatorInflater;

    if-eqz p1, :cond_3

    .line 251
    iget-object p2, p0, Lo/AccessibilityServiceInfo;->a:Lo/CheckResult;

    invoke-virtual {p2, p1}, Lo/CheckResult;->e(Lo/AccountManagerInternal;)V

    .line 253
    :cond_3
    iput-object v1, p0, Lo/AccessibilityServiceInfo;->t:Lo/AnimatorInflater;

    goto :goto_0

    .line 255
    :cond_4
    new-instance p1, Lo/AnimatorInflater;

    invoke-direct {p1, p2}, Lo/AnimatorInflater;-><init>(Lo/AlarmManager;)V

    iput-object p1, p0, Lo/AccessibilityServiceInfo;->t:Lo/AnimatorInflater;

    .line 256
    iget-object p1, p0, Lo/AccessibilityServiceInfo;->t:Lo/AnimatorInflater;

    invoke-virtual {p1, p0}, Lo/AnimatorInflater;->d(Lo/AccountManagerInternal$ActionBar;)V

    .line 257
    iget-object p1, p0, Lo/AccessibilityServiceInfo;->a:Lo/CheckResult;

    iget-object p2, p0, Lo/AccessibilityServiceInfo;->t:Lo/AnimatorInflater;

    invoke-virtual {p1, p2}, Lo/CheckResult;->d(Lo/AccountManagerInternal;)V

    :cond_5
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

    .line 231
    invoke-static {p1, p2, p3, p4, p0}, Lo/ActivityManagerInternal;->b(Lo/IntKeyframeSet;ILjava/util/List;Lo/IntKeyframeSet;Lo/AccountAndUser;)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 89
    iget-object v0, p0, Lo/AccessibilityServiceInfo;->q:Lo/DESKeySpec;

    invoke-virtual {v0}, Lo/DESKeySpec;->invalidateSelf()V

    return-void
.end method

.method public e(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    .line 102
    iget-boolean v0, p0, Lo/AccessibilityServiceInfo;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "GradientFillContent#draw"

    .line 105
    invoke-static {v0}, Lo/SecretKeyFactory;->d(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lo/AccessibilityServiceInfo;->h:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 107
    :goto_0
    iget-object v3, p0, Lo/AccessibilityServiceInfo;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 108
    iget-object v3, p0, Lo/AccessibilityServiceInfo;->h:Landroid/graphics/Path;

    iget-object v4, p0, Lo/AccessibilityServiceInfo;->j:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/Account;

    invoke-interface {v4}, Lo/Account;->a()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_1
    iget-object v2, p0, Lo/AccessibilityServiceInfo;->h:Landroid/graphics/Path;

    iget-object v3, p0, Lo/AccessibilityServiceInfo;->i:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 114
    iget-object v2, p0, Lo/AccessibilityServiceInfo;->k:Lcom/airbnb/lottie/model/content/GradientType;

    sget-object v3, Lcom/airbnb/lottie/model/content/GradientType;->d:Lcom/airbnb/lottie/model/content/GradientType;

    if-ne v2, v3, :cond_2

    .line 115
    invoke-direct {p0}, Lo/AccessibilityServiceInfo;->b()Landroid/graphics/LinearGradient;

    move-result-object v2

    goto :goto_1

    .line 117
    :cond_2
    invoke-direct {p0}, Lo/AccessibilityServiceInfo;->a()Landroid/graphics/RadialGradient;

    move-result-object v2

    .line 119
    :goto_1
    iget-object v3, p0, Lo/AccessibilityServiceInfo;->f:Landroid/graphics/Matrix;

    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 120
    iget-object p2, p0, Lo/AccessibilityServiceInfo;->f:Landroid/graphics/Matrix;

    invoke-virtual {v2, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 121
    iget-object p2, p0, Lo/AccessibilityServiceInfo;->g:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 123
    iget-object p2, p0, Lo/AccessibilityServiceInfo;->s:Lo/AccountManagerInternal;

    if-eqz p2, :cond_3

    .line 124
    iget-object v2, p0, Lo/AccessibilityServiceInfo;->g:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_3
    int-to-float p2, p3

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p2, p3

    .line 127
    iget-object v2, p0, Lo/AccessibilityServiceInfo;->l:Lo/AccountManagerInternal;

    invoke-virtual {v2}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float p2, p2, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p2, v2

    mul-float p2, p2, p3

    float-to-int p2, p2

    .line 128
    iget-object p3, p0, Lo/AccessibilityServiceInfo;->g:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-static {p2, v1, v2}, Lo/ActivityManagerInternal;->c(III)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 130
    iget-object p2, p0, Lo/AccessibilityServiceInfo;->h:Landroid/graphics/Path;

    iget-object p3, p0, Lo/AccessibilityServiceInfo;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 131
    invoke-static {v0}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

    return-void
.end method
