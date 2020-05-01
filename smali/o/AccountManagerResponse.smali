.class public Lo/AccountManagerResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Account;
.implements Lo/AccountManagerInternal$ActionBar;


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/String;

.field private final c:Lo/DESKeySpec;

.field private final d:Lo/AccountManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AccountManagerInternal<",
            "*",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/graphics/Path;

.field private h:Z

.field private i:Lo/RC5ParameterSpec;


# direct methods
.method public constructor <init>(Lo/DESKeySpec;Lo/CheckResult;Lo/CallSuper;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/AccountManagerResponse;->e:Landroid/graphics/Path;

    .line 22
    new-instance v0, Lo/RC5ParameterSpec;

    invoke-direct {v0}, Lo/RC5ParameterSpec;-><init>()V

    iput-object v0, p0, Lo/AccountManagerResponse;->i:Lo/RC5ParameterSpec;

    .line 25
    invoke-virtual {p3}, Lo/CallSuper;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/AccountManagerResponse;->b:Ljava/lang/String;

    .line 26
    invoke-virtual {p3}, Lo/CallSuper;->a()Z

    move-result v0

    iput-boolean v0, p0, Lo/AccountManagerResponse;->a:Z

    .line 27
    iput-object p1, p0, Lo/AccountManagerResponse;->c:Lo/DESKeySpec;

    .line 28
    invoke-virtual {p3}, Lo/CallSuper;->d()Lo/RevealAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lo/RevealAnimator;->d()Lo/AccountManagerInternal;

    move-result-object p1

    iput-object p1, p0, Lo/AccountManagerResponse;->d:Lo/AccountManagerInternal;

    .line 29
    iget-object p1, p0, Lo/AccountManagerResponse;->d:Lo/AccountManagerInternal;

    invoke-virtual {p2, p1}, Lo/CheckResult;->d(Lo/AccountManagerInternal;)V

    .line 30
    iget-object p1, p0, Lo/AccountManagerResponse;->d:Lo/AccountManagerInternal;

    invoke-virtual {p1, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lo/AccountManagerResponse;->h:Z

    .line 39
    iget-object v0, p0, Lo/AccountManagerResponse;->c:Lo/DESKeySpec;

    invoke-virtual {v0}, Lo/DESKeySpec;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Path;
    .locals 3

    .line 56
    iget-boolean v0, p0, Lo/AccountManagerResponse;->h:Z

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lo/AccountManagerResponse;->e:Landroid/graphics/Path;

    return-object v0

    .line 60
    :cond_0
    iget-object v0, p0, Lo/AccountManagerResponse;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 62
    iget-boolean v0, p0, Lo/AccountManagerResponse;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 63
    iput-boolean v1, p0, Lo/AccountManagerResponse;->h:Z

    .line 64
    iget-object v0, p0, Lo/AccountManagerResponse;->e:Landroid/graphics/Path;

    return-object v0

    .line 67
    :cond_1
    iget-object v0, p0, Lo/AccountManagerResponse;->e:Landroid/graphics/Path;

    iget-object v2, p0, Lo/AccountManagerResponse;->d:Lo/AccountManagerInternal;

    invoke-virtual {v2}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 68
    iget-object v0, p0, Lo/AccountManagerResponse;->e:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 70
    iget-object v0, p0, Lo/AccountManagerResponse;->i:Lo/RC5ParameterSpec;

    iget-object v2, p0, Lo/AccountManagerResponse;->e:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Lo/RC5ParameterSpec;->e(Landroid/graphics/Path;)V

    .line 72
    iput-boolean v1, p0, Lo/AccountManagerResponse;->h:Z

    .line 73
    iget-object v0, p0, Lo/AccountManagerResponse;->e:Landroid/graphics/Path;

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

    .line 43
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 44
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AccessibilityButtonController;

    .line 45
    instance-of v1, v0, Lo/AccountManagerCallback;

    if-eqz v1, :cond_0

    check-cast v0, Lo/AccountManagerCallback;

    .line 46
    invoke-virtual {v0}, Lo/AccountManagerCallback;->a()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->c:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v1, v2, :cond_0

    .line 49
    iget-object v1, p0, Lo/AccountManagerResponse;->i:Lo/RC5ParameterSpec;

    invoke-virtual {v1, v0}, Lo/RC5ParameterSpec;->e(Lo/AccountManagerCallback;)V

    .line 50
    invoke-virtual {v0, p0}, Lo/AccountManagerCallback;->b(Lo/AccountManagerInternal$ActionBar;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lo/AccountManagerResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/AccountManagerResponse;->b()V

    return-void
.end method
