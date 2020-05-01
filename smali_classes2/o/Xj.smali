.class public final Lo/Xj;
.super Lo/Xi;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private c:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1}, Lo/Xi;-><init>(Landroid/view/ViewGroup;)V

    .line 12
    invoke-virtual {p0}, Lo/Xj;->f()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->isAttachedToWindow()Z

    move-result p1

    iput-boolean p1, p0, Lo/Xj;->c:Z

    .line 13
    iget-boolean p1, p0, Lo/Xj;->c:Z

    if-nez p1, :cond_0

    .line 14
    invoke-virtual {p0}, Lo/Xj;->f()Landroid/widget/TextView;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    return-void
.end method

.method public static final synthetic d(Lo/Xj;Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lo/Xj;->c:Z

    return-void
.end method

.method public static final synthetic e(Lo/Xj;)Z
    .locals 0

    .line 7
    iget-boolean p0, p0, Lo/Xj;->e:Z

    return p0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 51
    iget-boolean v0, p0, Lo/Xj;->c:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-super {p0}, Lo/Xi;->b()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lo/Xj;->e:Z

    :goto_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 43
    iget-boolean v0, p0, Lo/Xj;->c:Z

    if-eqz v0, :cond_0

    .line 44
    invoke-super {p0}, Lo/Xi;->e()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lo/Xj;->e:Z

    :goto_0
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 23
    invoke-virtual {p0}, Lo/Xj;->f()Landroid/widget/TextView;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 24
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lo/Xj$Activity;

    invoke-direct {v0, p0}, Lo/Xj$Activity;-><init>(Lo/Xj;)V

    check-cast v0, Ljava/lang/Runnable;

    .line 39
    invoke-virtual {p0}, Lo/Xj;->f()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    .line 24
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
