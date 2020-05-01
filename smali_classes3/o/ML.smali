.class public final Lo/ML;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/la;


# instance fields
.field private a:Lo/la;

.field private d:Lo/cO;

.field private e:Z


# direct methods
.method public constructor <init>(Lo/la;Lo/cO;Z)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lo/ML;->d:Lo/cO;

    .line 29
    iput-object p1, p0, Lo/ML;->a:Lo/la;

    .line 30
    iput-boolean p3, p0, Lo/ML;->e:Z

    return-void
.end method

.method private c()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lo/ML;->d:Lo/cO;

    invoke-interface {v0}, Lo/cO;->e()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 106
    invoke-direct {p0}, Lo/ML;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lo/ML;->a:Lo/la;

    invoke-interface {v0}, Lo/la;->a()V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Notification;Lo/Ac;Z)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lo/ML;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lo/ML;->a:Lo/la;

    invoke-interface {v0, p1, p2, p3}, Lo/la;->a(Landroid/app/Notification;Lo/Ac;Z)V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Lo/ML;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lo/ML;->a:Lo/la;

    invoke-interface {v0, p1}, Lo/la;->b(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public b(Lo/Ac;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Lo/ML;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lo/ML;->a:Lo/la;

    invoke-interface {v0, p1}, Lo/la;->b(Lo/Ac;)V

    :cond_0
    return-void
.end method

.method public b(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Lo/ML;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lo/ML;->a:Lo/la;

    invoke-interface {v0, p1, p2, p3}, Lo/la;->b(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Z)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lo/ML;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lo/ML;->a:Lo/la;

    invoke-interface {v0, p1}, Lo/la;->c(Z)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 65
    :cond_0
    new-instance p1, Landroid/util/Pair;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public c(ZZZLjava/lang/String;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Lo/ML;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lo/ML;->a:Lo/la;

    invoke-interface {v0, p1, p2, p3, p4}, Lo/la;->c(ZZZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Lo/ML;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lo/ML;->a:Lo/la;

    invoke-interface {v0, p1}, Lo/la;->d(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public d(Lo/Ac;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Lo/ML;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lo/ML;->a:Lo/la;

    invoke-interface {v0, p1}, Lo/la;->d(Lo/Ac;)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lo/ML;->a:Lo/la;

    invoke-interface {v0}, Lo/la;->d()Z

    move-result v0

    return v0
.end method

.method public e(ZZZ)V
    .locals 1

    .line 99
    invoke-direct {p0}, Lo/ML;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lo/ML;->a:Lo/la;

    invoke-interface {v0, p1, p2, p3}, Lo/la;->e(ZZZ)V

    :cond_0
    return-void
.end method
