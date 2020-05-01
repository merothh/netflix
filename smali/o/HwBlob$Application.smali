.class public final Lo/HwBlob$Application;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HwBlob;->a(Landroid/view/ViewGroup;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/HwBlob;


# direct methods
.method constructor <init>(Lo/HwBlob;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 261
    iput-object p1, p0, Lo/HwBlob$Application;->d:Lo/HwBlob;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    iget-object p1, p0, Lo/HwBlob$Application;->d:Lo/HwBlob;

    const/4 v0, 0x0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    invoke-static {p1, v0}, Lo/HwBlob;->a(Lo/HwBlob;Landroid/view/ViewPropertyAnimator;)V

    .line 264
    iget-object p1, p0, Lo/HwBlob$Application;->d:Lo/HwBlob;

    invoke-virtual {p1}, Lo/HwBlob;->e()Lo/HwBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/HwBlob$Application;->d:Lo/HwBlob;

    invoke-interface {p1, v0}, Lo/HwBinder;->b(Lo/HwBlob;)V

    .line 265
    :cond_0
    iget-object p1, p0, Lo/HwBlob$Application;->d:Lo/HwBlob;

    invoke-virtual {p1}, Lo/HwBlob;->d()Lo/HidlSupport;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lo/HwBlob$Application;->d:Lo/HwBlob;

    invoke-interface {p1, v0}, Lo/HidlSupport;->b(Lo/HwBlob;)V

    .line 267
    :cond_1
    iget-object p1, p0, Lo/HwBlob$Application;->d:Lo/HwBlob;

    invoke-virtual {p1}, Lo/HwBlob;->requestFocus()Z

    return-void
.end method
