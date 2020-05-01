.class public Lo/GestureDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RC2ParameterSpec;
.implements Lo/AccountManagerInternal$ActionBar;
.implements Lo/AccountAndUser;


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Z

.field private final c:Landroid/graphics/Path;

.field private final d:Ljava/lang/String;

.field private final e:Lo/CheckResult;

.field private final f:Lo/AccountManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AccountManagerInternal<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lo/DESKeySpec;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Account;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/AccountManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AccountManagerInternal<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lo/AccountManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AccountManagerInternal<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/DESKeySpec;Lo/CheckResult;Lo/BroadcastBehavior;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/GestureDescription;->c:Landroid/graphics/Path;

    .line 32
    new-instance v0, Lo/PBEKeySpec;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo/PBEKeySpec;-><init>(I)V

    iput-object v0, p0, Lo/GestureDescription;->a:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/GestureDescription;->h:Ljava/util/List;

    .line 43
    iput-object p2, p0, Lo/GestureDescription;->e:Lo/CheckResult;

    .line 44
    invoke-virtual {p3}, Lo/BroadcastBehavior;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/GestureDescription;->d:Ljava/lang/String;

    .line 45
    invoke-virtual {p3}, Lo/BroadcastBehavior;->a()Z

    move-result v0

    iput-boolean v0, p0, Lo/GestureDescription;->b:Z

    .line 46
    iput-object p1, p0, Lo/GestureDescription;->g:Lo/DESKeySpec;

    .line 47
    invoke-virtual {p3}, Lo/BroadcastBehavior;->e()Lo/PointFEvaluator;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lo/BroadcastBehavior;->c()Lo/PathKeyframes;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lo/GestureDescription;->c:Landroid/graphics/Path;

    invoke-virtual {p3}, Lo/BroadcastBehavior;->b()Landroid/graphics/Path$FillType;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 55
    invoke-virtual {p3}, Lo/BroadcastBehavior;->e()Lo/PointFEvaluator;

    move-result-object p1

    invoke-virtual {p1}, Lo/PointFEvaluator;->d()Lo/AccountManagerInternal;

    move-result-object p1

    iput-object p1, p0, Lo/GestureDescription;->j:Lo/AccountManagerInternal;

    .line 56
    iget-object p1, p0, Lo/GestureDescription;->j:Lo/AccountManagerInternal;

    invoke-virtual {p1, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    .line 57
    iget-object p1, p0, Lo/GestureDescription;->j:Lo/AccountManagerInternal;

    invoke-virtual {p2, p1}, Lo/CheckResult;->d(Lo/AccountManagerInternal;)V

    .line 58
    invoke-virtual {p3}, Lo/BroadcastBehavior;->c()Lo/PathKeyframes;

    move-result-object p1

    invoke-virtual {p1}, Lo/PathKeyframes;->d()Lo/AccountManagerInternal;

    move-result-object p1

    iput-object p1, p0, Lo/GestureDescription;->f:Lo/AccountManagerInternal;

    .line 59
    iget-object p1, p0, Lo/GestureDescription;->f:Lo/AccountManagerInternal;

    invoke-virtual {p1, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    .line 60
    iget-object p1, p0, Lo/GestureDescription;->f:Lo/AccountManagerInternal;

    invoke-virtual {p2, p1}, Lo/CheckResult;->d(Lo/AccountManagerInternal;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lo/GestureDescription;->j:Lo/AccountManagerInternal;

    .line 49
    iput-object p1, p0, Lo/GestureDescription;->f:Lo/AccountManagerInternal;

    return-void
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

    .line 68
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 69
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AccessibilityButtonController;

    .line 70
    instance-of v1, v0, Lo/Account;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lo/GestureDescription;->h:Ljava/util/List;

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

    .line 77
    iget-object v0, p0, Lo/GestureDescription;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 104
    iget-object p3, p0, Lo/GestureDescription;->c:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 105
    :goto_0
    iget-object v1, p0, Lo/GestureDescription;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 106
    iget-object v1, p0, Lo/GestureDescription;->c:Landroid/graphics/Path;

    iget-object v2, p0, Lo/GestureDescription;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Account;

    invoke-interface {v2}, Lo/Account;->a()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    iget-object p2, p0, Lo/GestureDescription;->c:Landroid/graphics/Path;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 110
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

    .line 126
    sget-object v0, Lo/IvParameterSpec;->e:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 127
    iget-object p1, p0, Lo/GestureDescription;->j:Lo/AccountManagerInternal;

    invoke-virtual {p1, p2}, Lo/AccountManagerInternal;->c(Lo/AlarmManager;)V

    goto :goto_0

    .line 128
    :cond_0
    sget-object v0, Lo/IvParameterSpec;->c:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    .line 129
    iget-object p1, p0, Lo/GestureDescription;->f:Lo/AccountManagerInternal;

    invoke-virtual {p1, p2}, Lo/AccountManagerInternal;->c(Lo/AlarmManager;)V

    goto :goto_0

    .line 130
    :cond_1
    sget-object v0, Lo/IvParameterSpec;->C:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_2

    const/4 p1, 0x0

    .line 132
    iput-object p1, p0, Lo/GestureDescription;->i:Lo/AccountManagerInternal;

    goto :goto_0

    .line 134
    :cond_2
    new-instance p1, Lo/AnimatorInflater;

    invoke-direct {p1, p2}, Lo/AnimatorInflater;-><init>(Lo/AlarmManager;)V

    iput-object p1, p0, Lo/GestureDescription;->i:Lo/AccountManagerInternal;

    .line 136
    iget-object p1, p0, Lo/GestureDescription;->i:Lo/AccountManagerInternal;

    invoke-virtual {p1, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    .line 137
    iget-object p1, p0, Lo/GestureDescription;->e:Lo/CheckResult;

    iget-object p2, p0, Lo/GestureDescription;->i:Lo/AccountManagerInternal;

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

    .line 120
    invoke-static {p1, p2, p3, p4, p0}, Lo/ActivityManagerInternal;->b(Lo/IntKeyframeSet;ILjava/util/List;Lo/IntKeyframeSet;Lo/AccountAndUser;)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 64
    iget-object v0, p0, Lo/GestureDescription;->g:Lo/DESKeySpec;

    invoke-virtual {v0}, Lo/DESKeySpec;->invalidateSelf()V

    return-void
.end method

.method public e(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    .line 81
    iget-boolean v0, p0, Lo/GestureDescription;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "FillContent#draw"

    .line 84
    invoke-static {v0}, Lo/SecretKeyFactory;->d(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lo/GestureDescription;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Lo/GestureDescription;->j:Lo/AccountManagerInternal;

    check-cast v2, Lo/ChooseAccountTypeActivity;

    invoke-virtual {v2}, Lo/ChooseAccountTypeActivity;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p3, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p3, v1

    .line 86
    iget-object v2, p0, Lo/GestureDescription;->f:Lo/AccountManagerInternal;

    invoke-virtual {v2}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float p3, p3, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p3, v2

    mul-float p3, p3, v1

    float-to-int p3, p3

    .line 87
    iget-object v1, p0, Lo/GestureDescription;->a:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-static {p3, v3, v2}, Lo/ActivityManagerInternal;->c(III)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 89
    iget-object p3, p0, Lo/GestureDescription;->i:Lo/AccountManagerInternal;

    if-eqz p3, :cond_1

    .line 90
    iget-object v1, p0, Lo/GestureDescription;->a:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 93
    :cond_1
    iget-object p3, p0, Lo/GestureDescription;->c:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 94
    :goto_0
    iget-object p3, p0, Lo/GestureDescription;->h:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v3, p3, :cond_2

    .line 95
    iget-object p3, p0, Lo/GestureDescription;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lo/GestureDescription;->h:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Account;

    invoke-interface {v1}, Lo/Account;->a()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p3, v1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    :cond_2
    iget-object p2, p0, Lo/GestureDescription;->c:Landroid/graphics/Path;

    iget-object p3, p0, Lo/GestureDescription;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 100
    invoke-static {v0}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

    return-void
.end method
