.class public final Lo/HwBlob$Activity;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HwBlob;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/HwBlob;


# direct methods
.method constructor <init>(Lo/HwBlob;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 288
    iput-object p1, p0, Lo/HwBlob$Activity;->b:Lo/HwBlob;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    iget-object p1, p0, Lo/HwBlob$Activity;->b:Lo/HwBlob;

    invoke-static {p1}, Lo/HwBlob;->b(Lo/HwBlob;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/HwBlob$Activity;->b:Lo/HwBlob;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 291
    :cond_0
    iget-object p1, p0, Lo/HwBlob$Activity;->b:Lo/HwBlob;

    invoke-virtual {p1}, Lo/HwBlob;->e()Lo/HwBinder;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lo/HwBlob$Activity;->b:Lo/HwBlob;

    invoke-interface {p1, v0}, Lo/HwBinder;->e(Lo/HwBlob;)V

    .line 292
    :cond_1
    iget-object p1, p0, Lo/HwBlob$Activity;->b:Lo/HwBlob;

    invoke-virtual {p1}, Lo/HwBlob;->d()Lo/HidlSupport;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lo/HwBlob$Activity;->b:Lo/HwBlob;

    invoke-interface {p1, v0}, Lo/HidlSupport;->e(Lo/HwBlob;)V

    :cond_2
    return-void
.end method
