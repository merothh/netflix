.class public Lo/AccountManagerCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AccessibilityButtonController;
.implements Lo/AccountManagerInternal$ActionBar;


# instance fields
.field private final a:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AccountManagerInternal$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lo/AccountManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AccountManagerInternal<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:Z

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

.field private final j:Lo/AccountManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AccountManagerInternal<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/CheckResult;Lcom/airbnb/lottie/model/content/ShapeTrimPath;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/AccountManagerCallback;->b:Ljava/util/List;

    .line 21
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/AccountManagerCallback;->d:Ljava/lang/String;

    .line 22
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->j()Z

    move-result v0

    iput-boolean v0, p0, Lo/AccountManagerCallback;->e:Z

    .line 23
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->a()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v0

    iput-object v0, p0, Lo/AccountManagerCallback;->a:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 24
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->b()Lo/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0}, Lo/LayoutTransition;->d()Lo/AccountManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lo/AccountManagerCallback;->c:Lo/AccountManagerInternal;

    .line 25
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->e()Lo/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0}, Lo/LayoutTransition;->d()Lo/AccountManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lo/AccountManagerCallback;->j:Lo/AccountManagerInternal;

    .line 26
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->c()Lo/LayoutTransition;

    move-result-object p2

    invoke-virtual {p2}, Lo/LayoutTransition;->d()Lo/AccountManagerInternal;

    move-result-object p2

    iput-object p2, p0, Lo/AccountManagerCallback;->i:Lo/AccountManagerInternal;

    .line 28
    iget-object p2, p0, Lo/AccountManagerCallback;->c:Lo/AccountManagerInternal;

    invoke-virtual {p1, p2}, Lo/CheckResult;->d(Lo/AccountManagerInternal;)V

    .line 29
    iget-object p2, p0, Lo/AccountManagerCallback;->j:Lo/AccountManagerInternal;

    invoke-virtual {p1, p2}, Lo/CheckResult;->d(Lo/AccountManagerInternal;)V

    .line 30
    iget-object p2, p0, Lo/AccountManagerCallback;->i:Lo/AccountManagerInternal;

    invoke-virtual {p1, p2}, Lo/CheckResult;->d(Lo/AccountManagerInternal;)V

    .line 32
    iget-object p1, p0, Lo/AccountManagerCallback;->c:Lo/AccountManagerInternal;

    invoke-virtual {p1, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    .line 33
    iget-object p1, p0, Lo/AccountManagerCallback;->j:Lo/AccountManagerInternal;

    invoke-virtual {p1, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    .line 34
    iget-object p1, p0, Lo/AccountManagerCallback;->i:Lo/AccountManagerInternal;

    invoke-virtual {p1, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    return-void
.end method


# virtual methods
.method a()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
    .locals 1

    .line 56
    iget-object v0, p0, Lo/AccountManagerCallback;->a:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    return-object v0
.end method

.method public b()Lo/AccountManagerInternal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/AccountManagerInternal<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lo/AccountManagerCallback;->j:Lo/AccountManagerInternal;

    return-object v0
.end method

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method b(Lo/AccountManagerInternal$ActionBar;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lo/AccountManagerCallback;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lo/AccountManagerCallback;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lo/AccountManagerInternal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/AccountManagerInternal<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lo/AccountManagerCallback;->c:Lo/AccountManagerInternal;

    return-object v0
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    .line 38
    :goto_0
    iget-object v1, p0, Lo/AccountManagerCallback;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 39
    iget-object v1, p0, Lo/AccountManagerCallback;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AccountManagerInternal$ActionBar;

    invoke-interface {v1}, Lo/AccountManagerInternal$ActionBar;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g()Lo/AccountManagerInternal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/AccountManagerInternal<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lo/AccountManagerCallback;->i:Lo/AccountManagerInternal;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lo/AccountManagerCallback;->e:Z

    return v0
.end method
