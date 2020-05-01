.class public Lo/AccountManagerFuture;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RC2ParameterSpec;
.implements Lo/Account;
.implements Lo/FingerprintGestureController;
.implements Lo/AccountManagerInternal$ActionBar;
.implements Lo/AccountAndUser;


# instance fields
.field private final a:Lo/DESKeySpec;

.field private final b:Lo/CheckResult;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/graphics/Matrix;

.field private final e:Landroid/graphics/Path;

.field private final f:Lo/AnimatorSet;

.field private g:Lo/SecretKeySpec;

.field private final h:Lo/AccountManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AccountManagerInternal<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lo/AccountManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AccountManagerInternal<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Z


# direct methods
.method public constructor <init>(Lo/DESKeySpec;Lo/CheckResult;Lo/BinderThread;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/AccountManagerFuture;->d:Landroid/graphics/Matrix;

    .line 27
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/AccountManagerFuture;->e:Landroid/graphics/Path;

    .line 40
    iput-object p1, p0, Lo/AccountManagerFuture;->a:Lo/DESKeySpec;

    .line 41
    iput-object p2, p0, Lo/AccountManagerFuture;->b:Lo/CheckResult;

    .line 42
    invoke-virtual {p3}, Lo/BinderThread;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/AccountManagerFuture;->c:Ljava/lang/String;

    .line 43
    invoke-virtual {p3}, Lo/BinderThread;->b()Z

    move-result p1

    iput-boolean p1, p0, Lo/AccountManagerFuture;->j:Z

    .line 44
    invoke-virtual {p3}, Lo/BinderThread;->d()Lo/LayoutTransition;

    move-result-object p1

    invoke-virtual {p1}, Lo/LayoutTransition;->d()Lo/AccountManagerInternal;

    move-result-object p1

    iput-object p1, p0, Lo/AccountManagerFuture;->h:Lo/AccountManagerInternal;

    .line 45
    iget-object p1, p0, Lo/AccountManagerFuture;->h:Lo/AccountManagerInternal;

    invoke-virtual {p2, p1}, Lo/CheckResult;->d(Lo/AccountManagerInternal;)V

    .line 46
    iget-object p1, p0, Lo/AccountManagerFuture;->h:Lo/AccountManagerInternal;

    invoke-virtual {p1, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    .line 48
    invoke-virtual {p3}, Lo/BinderThread;->c()Lo/LayoutTransition;

    move-result-object p1

    invoke-virtual {p1}, Lo/LayoutTransition;->d()Lo/AccountManagerInternal;

    move-result-object p1

    iput-object p1, p0, Lo/AccountManagerFuture;->i:Lo/AccountManagerInternal;

    .line 49
    iget-object p1, p0, Lo/AccountManagerFuture;->i:Lo/AccountManagerInternal;

    invoke-virtual {p2, p1}, Lo/CheckResult;->d(Lo/AccountManagerInternal;)V

    .line 50
    iget-object p1, p0, Lo/AccountManagerFuture;->i:Lo/AccountManagerInternal;

    invoke-virtual {p1, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    .line 52
    invoke-virtual {p3}, Lo/BinderThread;->a()Lo/TypeConverter;

    move-result-object p1

    invoke-virtual {p1}, Lo/TypeConverter;->f()Lo/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lo/AccountManagerFuture;->f:Lo/AnimatorSet;

    .line 53
    iget-object p1, p0, Lo/AccountManagerFuture;->f:Lo/AnimatorSet;

    invoke-virtual {p1, p2}, Lo/AnimatorSet;->c(Lo/CheckResult;)V

    .line 54
    iget-object p1, p0, Lo/AccountManagerFuture;->f:Lo/AnimatorSet;

    invoke-virtual {p1, p0}, Lo/AnimatorSet;->e(Lo/AccountManagerInternal$ActionBar;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Path;
    .locals 6

    .line 95
    iget-object v0, p0, Lo/AccountManagerFuture;->g:Lo/SecretKeySpec;

    invoke-virtual {v0}, Lo/SecretKeySpec;->a()Landroid/graphics/Path;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lo/AccountManagerFuture;->e:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 97
    iget-object v1, p0, Lo/AccountManagerFuture;->h:Lo/AccountManagerInternal;

    invoke-virtual {v1}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 98
    iget-object v2, p0, Lo/AccountManagerFuture;->i:Lo/AccountManagerInternal;

    invoke-virtual {v2}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 100
    iget-object v3, p0, Lo/AccountManagerFuture;->d:Landroid/graphics/Matrix;

    iget-object v4, p0, Lo/AccountManagerFuture;->f:Lo/AnimatorSet;

    int-to-float v5, v1

    add-float/2addr v5, v2

    invoke-virtual {v4, v5}, Lo/AnimatorSet;->d(F)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 101
    iget-object v3, p0, Lo/AccountManagerFuture;->e:Landroid/graphics/Path;

    iget-object v4, p0, Lo/AccountManagerFuture;->d:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lo/AccountManagerFuture;->e:Landroid/graphics/Path;

    return-object v0
.end method

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 1
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

    .line 91
    iget-object v0, p0, Lo/AccountManagerFuture;->g:Lo/SecretKeySpec;

    invoke-virtual {v0, p1, p2}, Lo/SecretKeySpec;->b(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lo/AccountManagerFuture;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 122
    iget-object v0, p0, Lo/AccountManagerFuture;->g:Lo/SecretKeySpec;

    invoke-virtual {v0, p1, p2, p3}, Lo/SecretKeySpec;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

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

    .line 137
    iget-object v0, p0, Lo/AccountManagerFuture;->f:Lo/AnimatorSet;

    invoke-virtual {v0, p1, p2}, Lo/AnimatorSet;->a(Ljava/lang/Object;Lo/AlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 141
    :cond_0
    sget-object v0, Lo/IvParameterSpec;->t:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 142
    iget-object p1, p0, Lo/AccountManagerFuture;->h:Lo/AccountManagerInternal;

    invoke-virtual {p1, p2}, Lo/AccountManagerInternal;->c(Lo/AlarmManager;)V

    goto :goto_0

    .line 143
    :cond_1
    sget-object v0, Lo/IvParameterSpec;->r:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    .line 144
    iget-object p1, p0, Lo/AccountManagerFuture;->i:Lo/AccountManagerInternal;

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

    .line 131
    invoke-static {p1, p2, p3, p4, p0}, Lo/ActivityManagerInternal;->b(Lo/IntKeyframeSet;ILjava/util/List;Lo/IntKeyframeSet;Lo/AccountAndUser;)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 126
    iget-object v0, p0, Lo/AccountManagerFuture;->a:Lo/DESKeySpec;

    invoke-virtual {v0}, Lo/DESKeySpec;->invalidateSelf()V

    return-void
.end method

.method public e(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    .line 107
    iget-object v0, p0, Lo/AccountManagerFuture;->h:Lo/AccountManagerInternal;

    invoke-virtual {v0}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 108
    iget-object v1, p0, Lo/AccountManagerFuture;->i:Lo/AccountManagerInternal;

    invoke-virtual {v1}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 110
    iget-object v2, p0, Lo/AccountManagerFuture;->f:Lo/AnimatorSet;

    invoke-virtual {v2}, Lo/AnimatorSet;->b()Lo/AccountManagerInternal;

    move-result-object v2

    invoke-virtual {v2}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    .line 112
    iget-object v4, p0, Lo/AccountManagerFuture;->f:Lo/AnimatorSet;

    invoke-virtual {v4}, Lo/AnimatorSet;->c()Lo/AccountManagerInternal;

    move-result-object v4

    invoke-virtual {v4}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v4, v3

    float-to-int v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_0

    .line 114
    iget-object v5, p0, Lo/AccountManagerFuture;->d:Landroid/graphics/Matrix;

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 115
    iget-object v5, p0, Lo/AccountManagerFuture;->d:Landroid/graphics/Matrix;

    iget-object v6, p0, Lo/AccountManagerFuture;->f:Lo/AnimatorSet;

    int-to-float v7, v3

    add-float v8, v7, v1

    invoke-virtual {v6, v8}, Lo/AnimatorSet;->d(F)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    int-to-float v5, p3

    div-float/2addr v7, v0

    .line 116
    invoke-static {v2, v4, v7}, Lo/ActivityManagerInternal;->a(FFF)F

    move-result v6

    mul-float v5, v5, v6

    .line 117
    iget-object v6, p0, Lo/AccountManagerFuture;->g:Lo/SecretKeySpec;

    iget-object v7, p0, Lo/AccountManagerFuture;->d:Landroid/graphics/Matrix;

    float-to-int v5, v5

    invoke-virtual {v6, p1, v7, v5}, Lo/SecretKeySpec;->e(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Ljava/util/ListIterator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Lo/AccessibilityButtonController;",
            ">;)V"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lo/AccountManagerFuture;->g:Lo/SecretKeySpec;

    if-eqz v0, :cond_0

    return-void

    .line 76
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 78
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 82
    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 83
    new-instance p1, Lo/SecretKeySpec;

    iget-object v2, p0, Lo/AccountManagerFuture;->a:Lo/DESKeySpec;

    iget-object v3, p0, Lo/AccountManagerFuture;->b:Lo/CheckResult;

    iget-boolean v5, p0, Lo/AccountManagerFuture;->j:Z

    const/4 v7, 0x0

    const-string v4, "Repeater"

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lo/SecretKeySpec;-><init>(Lo/DESKeySpec;Lo/CheckResult;Ljava/lang/String;ZLjava/util/List;Lo/TypeConverter;)V

    iput-object p1, p0, Lo/AccountManagerFuture;->g:Lo/SecretKeySpec;

    return-void
.end method
