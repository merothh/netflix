.class public Lo/AccountsException;
.super Lo/Destroyable;
.source ""


# instance fields
.field private final a:Lo/CheckResult;

.field private final d:Ljava/lang/String;

.field private final e:Z

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

.field private final h:Lo/AccountManagerInternal;
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
.method public constructor <init>(Lo/DESKeySpec;Lo/CheckResult;Lcom/airbnb/lottie/model/content/ShapeStroke;)V
    .locals 11

    .line 29
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->g()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->b()Landroid/graphics/Paint$Cap;

    move-result-object v4

    .line 30
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->i()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->e()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->f()F

    move-result v6

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->c()Lo/PathKeyframes;

    move-result-object v7

    .line 31
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->b()Lo/LayoutTransition;

    move-result-object v8

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->e()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->j()Lo/LayoutTransition;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 29
    invoke-direct/range {v1 .. v10}, Lo/Destroyable;-><init>(Lo/DESKeySpec;Lo/CheckResult;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLo/PathKeyframes;Lo/LayoutTransition;Ljava/util/List;Lo/LayoutTransition;)V

    .line 32
    iput-object p2, p0, Lo/AccountsException;->a:Lo/CheckResult;

    .line 33
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/AccountsException;->d:Ljava/lang/String;

    .line 34
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->h()Z

    move-result p1

    iput-boolean p1, p0, Lo/AccountsException;->e:Z

    .line 35
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->d()Lo/PointFEvaluator;

    move-result-object p1

    invoke-virtual {p1}, Lo/PointFEvaluator;->d()Lo/AccountManagerInternal;

    move-result-object p1

    iput-object p1, p0, Lo/AccountsException;->h:Lo/AccountManagerInternal;

    .line 36
    iget-object p1, p0, Lo/AccountsException;->h:Lo/AccountManagerInternal;

    invoke-virtual {p1, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    .line 37
    iget-object p1, p0, Lo/AccountsException;->h:Lo/AccountManagerInternal;

    invoke-virtual {p2, p1}, Lo/CheckResult;->d(Lo/AccountManagerInternal;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lo/AccountsException;->d:Ljava/lang/String;

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

    .line 58
    invoke-super {p0, p1, p2}, Lo/Destroyable;->c(Ljava/lang/Object;Lo/AlarmManager;)V

    .line 59
    sget-object v0, Lo/IvParameterSpec;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 60
    iget-object p1, p0, Lo/AccountsException;->h:Lo/AccountManagerInternal;

    invoke-virtual {p1, p2}, Lo/AccountManagerInternal;->c(Lo/AlarmManager;)V

    goto :goto_0

    .line 61
    :cond_0
    sget-object v0, Lo/IvParameterSpec;->C:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lo/AccountsException;->g:Lo/AccountManagerInternal;

    goto :goto_0

    .line 65
    :cond_1
    new-instance p1, Lo/AnimatorInflater;

    invoke-direct {p1, p2}, Lo/AnimatorInflater;-><init>(Lo/AlarmManager;)V

    iput-object p1, p0, Lo/AccountsException;->g:Lo/AccountManagerInternal;

    .line 67
    iget-object p1, p0, Lo/AccountsException;->g:Lo/AccountManagerInternal;

    invoke-virtual {p1, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    .line 68
    iget-object p1, p0, Lo/AccountsException;->a:Lo/CheckResult;

    iget-object p2, p0, Lo/AccountsException;->h:Lo/AccountManagerInternal;

    invoke-virtual {p1, p2}, Lo/CheckResult;->d(Lo/AccountManagerInternal;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public e(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 41
    iget-boolean v0, p0, Lo/AccountsException;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lo/AccountsException;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lo/AccountsException;->h:Lo/AccountManagerInternal;

    check-cast v1, Lo/ChooseAccountTypeActivity;

    invoke-virtual {v1}, Lo/ChooseAccountTypeActivity;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object v0, p0, Lo/AccountsException;->g:Lo/AccountManagerInternal;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lo/AccountsException;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lo/AccountsException;->g:Lo/AccountManagerInternal;

    invoke-virtual {v1}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 48
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lo/Destroyable;->e(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method
