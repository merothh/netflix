.class public final Lo/Xk;
.super Lo/Xm;
.source ""


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Lo/Xm;-><init>(Landroid/view/ViewGroup;)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lo/Xk;->b:Z

    return-void
.end method

.method public static final synthetic d(Lo/Xk;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lo/Xk;->b:Z

    return p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroid/view/GestureDetector;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lo/es;->b:Lo/es$Application;

    invoke-virtual {v0}, Lo/es$Application;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Landroid/view/GestureDetector;

    .line 20
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 21
    new-instance v2, Lo/Xk$StateListAnimator;

    invoke-direct {v2, p0, p1}, Lo/Xk$StateListAnimator;-><init>(Lo/Xk;Landroid/view/ViewGroup;)V

    check-cast v2, Landroid/view/GestureDetector$OnGestureListener;

    .line 19
    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    return-object v0

    .line 60
    :cond_0
    invoke-super {p0, p1}, Lo/Xm;->a(Landroid/view/ViewGroup;)Landroid/view/GestureDetector;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lo/Xk;->b:Z

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lo/Xk;->b:Z

    return-void
.end method
