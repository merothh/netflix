.class public abstract Lo/NumberPicker;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/NumberPicker$Activity;
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Landroid/view/View;

.field private c:Z

.field private d:Lo/NumberPicker$Activity;

.field private e:Z


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lo/NumberPicker;->c:Z

    .line 26
    iput-object p1, p0, Lo/NumberPicker;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/view/View;)V
.end method

.method protected abstract b(Landroid/view/View;)V
.end method

.method public b(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lo/NumberPicker;->c:Z

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 33
    iget-boolean v0, p0, Lo/NumberPicker;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    iget-boolean v0, p0, Lo/NumberPicker;->a:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 38
    iget-object v0, p0, Lo/NumberPicker;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lo/NumberPicker;->b(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lo/NumberPicker;->e:Z

    .line 42
    iget-object v0, p0, Lo/NumberPicker;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lo/NumberPicker;->e(Landroid/view/View;)V

    goto :goto_0

    .line 44
    :cond_2
    iget-object v0, p0, Lo/NumberPicker;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lo/NumberPicker;->a(Landroid/view/View;)V

    .line 48
    :goto_0
    iput-boolean p1, p0, Lo/NumberPicker;->a:Z

    return-void
.end method

.method protected e()V
    .locals 2

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lo/NumberPicker;->e:Z

    .line 62
    iget-object v0, p0, Lo/NumberPicker;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 64
    iget-object v0, p0, Lo/NumberPicker;->d:Lo/NumberPicker$Activity;

    if-eqz v0, :cond_0

    const-string v0, "Notifying listener of pressed animation complete"

    .line 65
    invoke-virtual {p0, v0}, Lo/NumberPicker;->c(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lo/NumberPicker;->d:Lo/NumberPicker$Activity;

    invoke-interface {v0}, Lo/NumberPicker$Activity;->c()V

    :cond_0
    return-void
.end method

.method protected abstract e(Landroid/view/View;)V
.end method
