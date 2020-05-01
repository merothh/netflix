.class public final Lo/WZ;
.super Lo/Xc;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private b:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1}, Lo/Xc;-><init>(Landroid/view/ViewGroup;)V

    .line 14
    invoke-virtual {p0}, Lo/WZ;->d()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 15
    invoke-virtual {p0}, Lo/WZ;->d()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    invoke-virtual {p0}, Lo/WZ;->d()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    iput-boolean p1, p0, Lo/WZ;->d:Z

    .line 17
    iget-boolean p1, p0, Lo/WZ;->d:Z

    if-nez p1, :cond_0

    .line 18
    invoke-virtual {p0}, Lo/WZ;->d()Landroid/view/View;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    return-void
.end method

.method public static final synthetic b(Lo/WZ;Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lo/WZ;->d:Z

    return-void
.end method

.method public static final synthetic b(Lo/WZ;)Z
    .locals 0

    .line 7
    iget-boolean p0, p0, Lo/WZ;->b:Z

    return p0
.end method

.method public static final synthetic c(Lo/WZ;)Z
    .locals 0

    .line 7
    iget-boolean p0, p0, Lo/WZ;->e:Z

    return p0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 58
    iget-boolean v0, p0, Lo/WZ;->d:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-super {p0}, Lo/Xc;->b()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lo/WZ;->b:Z

    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lo/WZ;->e:Z

    .line 67
    invoke-super {p0}, Lo/Xc;->c()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 50
    iget-boolean v0, p0, Lo/WZ;->d:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-super {p0}, Lo/Xc;->e()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lo/WZ;->b:Z

    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lo/WZ;->e:Z

    .line 72
    invoke-super {p0}, Lo/Xc;->g()V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 27
    invoke-virtual {p0}, Lo/WZ;->d()Landroid/view/View;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 28
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lo/WZ$ActionBar;

    invoke-direct {v0, p0}, Lo/WZ$ActionBar;-><init>(Lo/WZ;)V

    check-cast v0, Ljava/lang/Runnable;

    .line 46
    invoke-virtual {p0}, Lo/WZ;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    .line 28
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
