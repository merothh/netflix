.class public Lo/AccountAuthenticatorActivity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AccountManagerInternal$ActionBar;
.implements Lo/AccountAndUser;
.implements Lo/Account;


# instance fields
.field private final a:Z

.field private final b:Lo/DESKeySpec;

.field private final c:Landroid/graphics/RectF;

.field private final d:Ljava/lang/String;

.field private final e:Landroid/graphics/Path;

.field private final f:Lo/AccountManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AccountManagerInternal<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Lo/RC5ParameterSpec;

.field private final i:Lo/AccountManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AccountManagerInternal<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lo/AccountManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AccountManagerInternal<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/DESKeySpec;Lo/CheckResult;Lo/AttrRes;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/AccountAuthenticatorActivity;->e:Landroid/graphics/Path;

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/AccountAuthenticatorActivity;->c:Landroid/graphics/RectF;

    .line 34
    new-instance v0, Lo/RC5ParameterSpec;

    invoke-direct {v0}, Lo/RC5ParameterSpec;-><init>()V

    iput-object v0, p0, Lo/AccountAuthenticatorActivity;->h:Lo/RC5ParameterSpec;

    .line 38
    invoke-virtual {p3}, Lo/AttrRes;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/AccountAuthenticatorActivity;->d:Ljava/lang/String;

    .line 39
    invoke-virtual {p3}, Lo/AttrRes;->c()Z

    move-result v0

    iput-boolean v0, p0, Lo/AccountAuthenticatorActivity;->a:Z

    .line 40
    iput-object p1, p0, Lo/AccountAuthenticatorActivity;->b:Lo/DESKeySpec;

    .line 41
    invoke-virtual {p3}, Lo/AttrRes;->d()Lo/AnimRes;

    move-result-object p1

    invoke-interface {p1}, Lo/AnimRes;->d()Lo/AccountManagerInternal;

    move-result-object p1

    iput-object p1, p0, Lo/AccountAuthenticatorActivity;->j:Lo/AccountManagerInternal;

    .line 42
    invoke-virtual {p3}, Lo/AttrRes;->e()Lo/TimeAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lo/TimeAnimator;->d()Lo/AccountManagerInternal;

    move-result-object p1

    iput-object p1, p0, Lo/AccountAuthenticatorActivity;->i:Lo/AccountManagerInternal;

    .line 43
    invoke-virtual {p3}, Lo/AttrRes;->a()Lo/LayoutTransition;

    move-result-object p1

    invoke-virtual {p1}, Lo/LayoutTransition;->d()Lo/AccountManagerInternal;

    move-result-object p1

    iput-object p1, p0, Lo/AccountAuthenticatorActivity;->f:Lo/AccountManagerInternal;

    .line 45
    iget-object p1, p0, Lo/AccountAuthenticatorActivity;->j:Lo/AccountManagerInternal;

    invoke-virtual {p2, p1}, Lo/CheckResult;->d(Lo/AccountManagerInternal;)V

    .line 46
    iget-object p1, p0, Lo/AccountAuthenticatorActivity;->i:Lo/AccountManagerInternal;

    invoke-virtual {p2, p1}, Lo/CheckResult;->d(Lo/AccountManagerInternal;)V

    .line 47
    iget-object p1, p0, Lo/AccountAuthenticatorActivity;->f:Lo/AccountManagerInternal;

    invoke-virtual {p2, p1}, Lo/CheckResult;->d(Lo/AccountManagerInternal;)V

    .line 49
    iget-object p1, p0, Lo/AccountAuthenticatorActivity;->j:Lo/AccountManagerInternal;

    invoke-virtual {p1, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    .line 50
    iget-object p1, p0, Lo/AccountAuthenticatorActivity;->i:Lo/AccountManagerInternal;

    invoke-virtual {p1, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    .line 51
    iget-object p1, p0, Lo/AccountAuthenticatorActivity;->f:Lo/AccountManagerInternal;

    invoke-virtual {p1, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    return-void
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lo/AccountAuthenticatorActivity;->g:Z

    .line 66
    iget-object v0, p0, Lo/AccountAuthenticatorActivity;->b:Lo/DESKeySpec;

    invoke-virtual {v0}, Lo/DESKeySpec;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Path;
    .locals 15

    .line 84
    iget-boolean v0, p0, Lo/AccountAuthenticatorActivity;->g:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lo/AccountAuthenticatorActivity;->e:Landroid/graphics/Path;

    return-object v0

    .line 88
    :cond_0
    iget-object v0, p0, Lo/AccountAuthenticatorActivity;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 90
    iget-boolean v0, p0, Lo/AccountAuthenticatorActivity;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 91
    iput-boolean v1, p0, Lo/AccountAuthenticatorActivity;->g:Z

    .line 92
    iget-object v0, p0, Lo/AccountAuthenticatorActivity;->e:Landroid/graphics/Path;

    return-object v0

    .line 95
    :cond_1
    iget-object v0, p0, Lo/AccountAuthenticatorActivity;->i:Lo/AccountManagerInternal;

    invoke-virtual {v0}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 96
    iget v2, v0, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 97
    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v3

    .line 98
    iget-object v4, p0, Lo/AccountAuthenticatorActivity;->f:Lo/AccountManagerInternal;

    const/4 v5, 0x0

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    check-cast v4, Lo/ChooseAccountActivity;

    .line 99
    invoke-virtual {v4}, Lo/ChooseAccountActivity;->g()F

    move-result v4

    .line 100
    :goto_0
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    cmpl-float v7, v4, v6

    if-lez v7, :cond_3

    move v4, v6

    .line 106
    :cond_3
    iget-object v6, p0, Lo/AccountAuthenticatorActivity;->j:Lo/AccountManagerInternal;

    invoke-virtual {v6}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 108
    iget-object v7, p0, Lo/AccountAuthenticatorActivity;->e:Landroid/graphics/Path;

    iget v8, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v2

    iget v9, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v0

    add-float/2addr v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 110
    iget-object v7, p0, Lo/AccountAuthenticatorActivity;->e:Landroid/graphics/Path;

    iget v8, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v2

    iget v9, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v0

    sub-float/2addr v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v7, 0x0

    const/high16 v8, 0x42b40000    # 90.0f

    cmpl-float v9, v4, v5

    if-lez v9, :cond_4

    .line 113
    iget-object v10, p0, Lo/AccountAuthenticatorActivity;->c:Landroid/graphics/RectF;

    iget v11, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v2

    mul-float v12, v4, v3

    sub-float/2addr v11, v12

    iget v13, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v0

    sub-float/2addr v13, v12

    iget v12, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v12, v2

    iget v14, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v14, v0

    invoke-virtual {v10, v11, v13, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 117
    iget-object v10, p0, Lo/AccountAuthenticatorActivity;->e:Landroid/graphics/Path;

    iget-object v11, p0, Lo/AccountAuthenticatorActivity;->c:Landroid/graphics/RectF;

    invoke-virtual {v10, v11, v5, v8, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 120
    :cond_4
    iget-object v5, p0, Lo/AccountAuthenticatorActivity;->e:Landroid/graphics/Path;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v2

    add-float/2addr v10, v4

    iget v11, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v0

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v9, :cond_5

    .line 123
    iget-object v5, p0, Lo/AccountAuthenticatorActivity;->c:Landroid/graphics/RectF;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v2

    iget v11, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v0

    mul-float v12, v4, v3

    sub-float/2addr v11, v12

    iget v13, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v13, v2

    add-float/2addr v13, v12

    iget v12, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v12, v0

    invoke-virtual {v5, v10, v11, v13, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 127
    iget-object v5, p0, Lo/AccountAuthenticatorActivity;->e:Landroid/graphics/Path;

    iget-object v10, p0, Lo/AccountAuthenticatorActivity;->c:Landroid/graphics/RectF;

    invoke-virtual {v5, v10, v8, v8, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 130
    :cond_5
    iget-object v5, p0, Lo/AccountAuthenticatorActivity;->e:Landroid/graphics/Path;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v2

    iget v11, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v0

    add-float/2addr v11, v4

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v9, :cond_6

    .line 133
    iget-object v5, p0, Lo/AccountAuthenticatorActivity;->c:Landroid/graphics/RectF;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v2

    iget v11, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v0

    iget v12, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v12, v2

    mul-float v13, v4, v3

    add-float/2addr v12, v13

    iget v14, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v14, v0

    add-float/2addr v14, v13

    invoke-virtual {v5, v10, v11, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 137
    iget-object v5, p0, Lo/AccountAuthenticatorActivity;->e:Landroid/graphics/Path;

    iget-object v10, p0, Lo/AccountAuthenticatorActivity;->c:Landroid/graphics/RectF;

    const/high16 v11, 0x43340000    # 180.0f

    invoke-virtual {v5, v10, v11, v8, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 140
    :cond_6
    iget-object v5, p0, Lo/AccountAuthenticatorActivity;->e:Landroid/graphics/Path;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v2

    sub-float/2addr v10, v4

    iget v11, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v0

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v9, :cond_7

    .line 143
    iget-object v5, p0, Lo/AccountAuthenticatorActivity;->c:Landroid/graphics/RectF;

    iget v9, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v2

    mul-float v4, v4, v3

    sub-float/2addr v9, v4

    iget v3, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v0

    iget v10, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v2

    iget v2, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v0

    add-float/2addr v2, v4

    invoke-virtual {v5, v9, v3, v10, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 147
    iget-object v0, p0, Lo/AccountAuthenticatorActivity;->e:Landroid/graphics/Path;

    iget-object v2, p0, Lo/AccountAuthenticatorActivity;->c:Landroid/graphics/RectF;

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v0, v2, v3, v8, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 149
    :cond_7
    iget-object v0, p0, Lo/AccountAuthenticatorActivity;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 151
    iget-object v0, p0, Lo/AccountAuthenticatorActivity;->h:Lo/RC5ParameterSpec;

    iget-object v2, p0, Lo/AccountAuthenticatorActivity;->e:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Lo/RC5ParameterSpec;->e(Landroid/graphics/Path;)V

    .line 153
    iput-boolean v1, p0, Lo/AccountAuthenticatorActivity;->g:Z

    .line 154
    iget-object v0, p0, Lo/AccountAuthenticatorActivity;->e:Landroid/graphics/Path;

    return-object v0
.end method

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 3
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

    const/4 p2, 0x0

    .line 71
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 72
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AccessibilityButtonController;

    .line 73
    instance-of v1, v0, Lo/AccountManagerCallback;

    if-eqz v1, :cond_0

    check-cast v0, Lo/AccountManagerCallback;

    .line 74
    invoke-virtual {v0}, Lo/AccountManagerCallback;->a()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->c:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v1, v2, :cond_0

    .line 76
    iget-object v1, p0, Lo/AccountAuthenticatorActivity;->h:Lo/RC5ParameterSpec;

    invoke-virtual {v1, v0}, Lo/RC5ParameterSpec;->e(Lo/AccountManagerCallback;)V

    .line 77
    invoke-virtual {v0, p0}, Lo/AccountManagerCallback;->b(Lo/AccountManagerInternal$ActionBar;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lo/AccountAuthenticatorActivity;->d:Ljava/lang/String;

    return-object v0
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

    .line 165
    sget-object v0, Lo/IvParameterSpec;->g:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_0

    .line 166
    iget-object p1, p0, Lo/AccountAuthenticatorActivity;->i:Lo/AccountManagerInternal;

    invoke-virtual {p1, p2}, Lo/AccountManagerInternal;->c(Lo/AlarmManager;)V

    goto :goto_0

    .line 167
    :cond_0
    sget-object v0, Lo/IvParameterSpec;->j:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    .line 168
    iget-object p1, p0, Lo/AccountAuthenticatorActivity;->j:Lo/AccountManagerInternal;

    invoke-virtual {p1, p2}, Lo/AccountManagerInternal;->c(Lo/AlarmManager;)V

    goto :goto_0

    .line 169
    :cond_1
    sget-object v0, Lo/IvParameterSpec;->i:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    .line 170
    iget-object p1, p0, Lo/AccountAuthenticatorActivity;->f:Lo/AccountManagerInternal;

    invoke-virtual {p1, p2}, Lo/AccountManagerInternal;->c(Lo/AlarmManager;)V

    :cond_2
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

    .line 160
    invoke-static {p1, p2, p3, p4, p0}, Lo/ActivityManagerInternal;->b(Lo/IntKeyframeSet;ILjava/util/List;Lo/IntKeyframeSet;Lo/AccountAndUser;)V

    return-void
.end method

.method public e()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lo/AccountAuthenticatorActivity;->d()V

    return-void
.end method
