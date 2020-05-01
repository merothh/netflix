.class public Lo/AbstractAccountAuthenticator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Account;
.implements Lo/AccountManagerInternal$ActionBar;
.implements Lo/AccountAndUser;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Lo/AccountManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AccountManagerInternal<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lo/DESKeySpec;

.field private final d:Ljava/lang/String;

.field private final e:Lo/AccountManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AccountManagerInternal<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lo/TypeEvaluator;

.field private g:Lo/RC5ParameterSpec;

.field private h:Z


# direct methods
.method public constructor <init>(Lo/DESKeySpec;Lo/CheckResult;Lo/TypeEvaluator;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/AbstractAccountAuthenticator;->a:Landroid/graphics/Path;

    .line 32
    new-instance v0, Lo/RC5ParameterSpec;

    invoke-direct {v0}, Lo/RC5ParameterSpec;-><init>()V

    iput-object v0, p0, Lo/AbstractAccountAuthenticator;->g:Lo/RC5ParameterSpec;

    .line 36
    invoke-virtual {p3}, Lo/TypeEvaluator;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/AbstractAccountAuthenticator;->d:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lo/AbstractAccountAuthenticator;->c:Lo/DESKeySpec;

    .line 38
    invoke-virtual {p3}, Lo/TypeEvaluator;->e()Lo/TimeAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lo/TimeAnimator;->d()Lo/AccountManagerInternal;

    move-result-object p1

    iput-object p1, p0, Lo/AbstractAccountAuthenticator;->b:Lo/AccountManagerInternal;

    .line 39
    invoke-virtual {p3}, Lo/TypeEvaluator;->c()Lo/AnimRes;

    move-result-object p1

    invoke-interface {p1}, Lo/AnimRes;->d()Lo/AccountManagerInternal;

    move-result-object p1

    iput-object p1, p0, Lo/AbstractAccountAuthenticator;->e:Lo/AccountManagerInternal;

    .line 40
    iput-object p3, p0, Lo/AbstractAccountAuthenticator;->f:Lo/TypeEvaluator;

    .line 42
    iget-object p1, p0, Lo/AbstractAccountAuthenticator;->b:Lo/AccountManagerInternal;

    invoke-virtual {p2, p1}, Lo/CheckResult;->d(Lo/AccountManagerInternal;)V

    .line 43
    iget-object p1, p0, Lo/AbstractAccountAuthenticator;->e:Lo/AccountManagerInternal;

    invoke-virtual {p2, p1}, Lo/CheckResult;->d(Lo/AccountManagerInternal;)V

    .line 45
    iget-object p1, p0, Lo/AbstractAccountAuthenticator;->b:Lo/AccountManagerInternal;

    invoke-virtual {p1, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    .line 46
    iget-object p1, p0, Lo/AbstractAccountAuthenticator;->e:Lo/AccountManagerInternal;

    invoke-virtual {p1, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lo/AbstractAccountAuthenticator;->h:Z

    .line 55
    iget-object v0, p0, Lo/AbstractAccountAuthenticator;->c:Lo/DESKeySpec;

    invoke-virtual {v0}, Lo/DESKeySpec;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Path;
    .locals 22

    move-object/from16 v0, p0

    .line 74
    iget-boolean v1, v0, Lo/AbstractAccountAuthenticator;->h:Z

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, v0, Lo/AbstractAccountAuthenticator;->a:Landroid/graphics/Path;

    return-object v1

    .line 78
    :cond_0
    iget-object v1, v0, Lo/AbstractAccountAuthenticator;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 80
    iget-object v1, v0, Lo/AbstractAccountAuthenticator;->f:Lo/TypeEvaluator;

    invoke-virtual {v1}, Lo/TypeEvaluator;->a()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 81
    iput-boolean v2, v0, Lo/AbstractAccountAuthenticator;->h:Z

    .line 82
    iget-object v1, v0, Lo/AbstractAccountAuthenticator;->a:Landroid/graphics/Path;

    return-object v1

    .line 85
    :cond_1
    iget-object v1, v0, Lo/AbstractAccountAuthenticator;->b:Lo/AccountManagerInternal;

    invoke-virtual {v1}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 86
    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 87
    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v4

    const v4, 0x3f0d6239    # 0.55228f

    mul-float v12, v3, v4

    mul-float v4, v4, v1

    .line 93
    iget-object v5, v0, Lo/AbstractAccountAuthenticator;->a:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 94
    iget-object v5, v0, Lo/AbstractAccountAuthenticator;->f:Lo/TypeEvaluator;

    invoke-virtual {v5}, Lo/TypeEvaluator;->b()Z

    move-result v5

    const/4 v13, 0x0

    if-eqz v5, :cond_2

    .line 95
    iget-object v5, v0, Lo/AbstractAccountAuthenticator;->a:Landroid/graphics/Path;

    neg-float v11, v1

    invoke-virtual {v5, v13, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 96
    iget-object v14, v0, Lo/AbstractAccountAuthenticator;->a:Landroid/graphics/Path;

    sub-float v8, v13, v12

    neg-float v6, v3

    sub-float v21, v13, v4

    const/16 v20, 0x0

    move v15, v8

    move/from16 v16, v11

    move/from16 v17, v6

    move/from16 v18, v21

    move/from16 v19, v6

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 97
    iget-object v5, v0, Lo/AbstractAccountAuthenticator;->a:Landroid/graphics/Path;

    add-float/2addr v4, v13

    const/4 v10, 0x0

    move v7, v4

    move v9, v1

    move v14, v11

    move v11, v1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 98
    iget-object v5, v0, Lo/AbstractAccountAuthenticator;->a:Landroid/graphics/Path;

    add-float/2addr v12, v13

    const/4 v11, 0x0

    move v6, v12

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 99
    iget-object v5, v0, Lo/AbstractAccountAuthenticator;->a:Landroid/graphics/Path;

    const/4 v10, 0x0

    move v6, v3

    move/from16 v7, v21

    move v8, v12

    move v9, v14

    move v11, v14

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v5, v0, Lo/AbstractAccountAuthenticator;->a:Landroid/graphics/Path;

    neg-float v15, v1

    invoke-virtual {v5, v13, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 102
    iget-object v5, v0, Lo/AbstractAccountAuthenticator;->a:Landroid/graphics/Path;

    add-float v14, v12, v13

    sub-float v16, v13, v4

    const/4 v11, 0x0

    move v6, v14

    move v7, v15

    move v8, v3

    move/from16 v9, v16

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 103
    iget-object v5, v0, Lo/AbstractAccountAuthenticator;->a:Landroid/graphics/Path;

    add-float/2addr v4, v13

    const/4 v10, 0x0

    move v6, v3

    move v7, v4

    move v8, v14

    move v9, v1

    move v11, v1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 104
    iget-object v5, v0, Lo/AbstractAccountAuthenticator;->a:Landroid/graphics/Path;

    sub-float v17, v13, v12

    neg-float v3, v3

    const/4 v11, 0x0

    move/from16 v6, v17

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 105
    iget-object v14, v0, Lo/AbstractAccountAuthenticator;->a:Landroid/graphics/Path;

    const/16 v19, 0x0

    move v1, v15

    move v15, v3

    move/from16 v18, v1

    move/from16 v20, v1

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 108
    :goto_0
    iget-object v1, v0, Lo/AbstractAccountAuthenticator;->e:Lo/AccountManagerInternal;

    invoke-virtual {v1}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 109
    iget-object v3, v0, Lo/AbstractAccountAuthenticator;->a:Landroid/graphics/Path;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 111
    iget-object v1, v0, Lo/AbstractAccountAuthenticator;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 113
    iget-object v1, v0, Lo/AbstractAccountAuthenticator;->g:Lo/RC5ParameterSpec;

    iget-object v3, v0, Lo/AbstractAccountAuthenticator;->a:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, Lo/RC5ParameterSpec;->e(Landroid/graphics/Path;)V

    .line 115
    iput-boolean v2, v0, Lo/AbstractAccountAuthenticator;->h:Z

    .line 116
    iget-object v1, v0, Lo/AbstractAccountAuthenticator;->a:Landroid/graphics/Path;

    return-object v1
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

    .line 59
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 60
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AccessibilityButtonController;

    .line 61
    instance-of v1, v0, Lo/AccountManagerCallback;

    if-eqz v1, :cond_0

    check-cast v0, Lo/AccountManagerCallback;

    invoke-virtual {v0}, Lo/AccountManagerCallback;->a()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->c:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v1, v2, :cond_0

    .line 63
    iget-object v1, p0, Lo/AbstractAccountAuthenticator;->g:Lo/RC5ParameterSpec;

    invoke-virtual {v1, v0}, Lo/RC5ParameterSpec;->e(Lo/AccountManagerCallback;)V

    .line 64
    invoke-virtual {v0, p0}, Lo/AccountManagerCallback;->b(Lo/AccountManagerInternal$ActionBar;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lo/AbstractAccountAuthenticator;->d:Ljava/lang/String;

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

    .line 127
    sget-object v0, Lo/IvParameterSpec;->f:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_0

    .line 128
    iget-object p1, p0, Lo/AbstractAccountAuthenticator;->b:Lo/AccountManagerInternal;

    invoke-virtual {p1, p2}, Lo/AccountManagerInternal;->c(Lo/AlarmManager;)V

    goto :goto_0

    .line 129
    :cond_0
    sget-object v0, Lo/IvParameterSpec;->j:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    .line 130
    iget-object p1, p0, Lo/AbstractAccountAuthenticator;->e:Lo/AccountManagerInternal;

    invoke-virtual {p1, p2}, Lo/AccountManagerInternal;->c(Lo/AlarmManager;)V

    :cond_1
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

    .line 121
    invoke-static {p1, p2, p3, p4, p0}, Lo/ActivityManagerInternal;->b(Lo/IntKeyframeSet;ILjava/util/List;Lo/IntKeyframeSet;Lo/AccountAndUser;)V

    return-void
.end method

.method public e()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lo/AbstractAccountAuthenticator;->b()V

    return-void
.end method
