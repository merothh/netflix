.class public final Lo/RadioButton$StateListAnimator;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RadioButton;->a(Lo/alB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/RadioButton;

.field final synthetic e:Lo/alB;


# direct methods
.method constructor <init>(Lo/RadioButton;Lo/alB;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alB;",
            ")V"
        }
    .end annotation

    .line 428
    iput-object p1, p0, Lo/RadioButton$StateListAnimator;->d:Lo/RadioButton;

    iput-object p2, p0, Lo/RadioButton$StateListAnimator;->e:Lo/alB;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    iget-object p1, p0, Lo/RadioButton$StateListAnimator;->d:Lo/RadioButton;

    invoke-static {p1}, Lo/RadioButton;->a(Lo/RadioButton;)Lo/ImageSwitcher;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setTranslationX(F)V

    .line 431
    iget-object p1, p0, Lo/RadioButton$StateListAnimator;->d:Lo/RadioButton;

    invoke-static {p1}, Lo/RadioButton;->a(Lo/RadioButton;)Lo/ImageSwitcher;

    move-result-object p1

    iget-object v0, p0, Lo/RadioButton$StateListAnimator;->d:Lo/RadioButton;

    invoke-static {v0}, Lo/RadioButton;->c(Lo/RadioButton;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object p1, p0, Lo/RadioButton$StateListAnimator;->d:Lo/RadioButton;

    invoke-static {p1}, Lo/RadioButton;->a(Lo/RadioButton;)Lo/ImageSwitcher;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setScaleX(F)V

    .line 433
    iget-object p1, p0, Lo/RadioButton$StateListAnimator;->d:Lo/RadioButton;

    invoke-static {p1}, Lo/RadioButton;->a(Lo/RadioButton;)Lo/ImageSwitcher;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setScaleY(F)V

    .line 434
    iget-object p1, p0, Lo/RadioButton$StateListAnimator;->e:Lo/alB;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/alB;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/akj;

    :cond_0
    return-void
.end method
