.class public final Lo/Vc$StateListAnimator;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vc;->e(Lo/Xt;Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lcom/netflix/model/leafs/originals/interactive/Moment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/model/leafs/originals/interactive/Moment;

.field final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic d:Lo/Vc;

.field final synthetic e:Lo/Xt;


# direct methods
.method constructor <init>(Lo/Vc;Lkotlin/jvm/internal/Ref$BooleanRef;Lo/Xt;Lcom/netflix/model/leafs/originals/interactive/Moment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lo/Xt;",
            "Lcom/netflix/model/leafs/originals/interactive/Moment;",
            ")V"
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lo/Vc$StateListAnimator;->d:Lo/Vc;

    iput-object p2, p0, Lo/Vc$StateListAnimator;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lo/Vc$StateListAnimator;->e:Lo/Xt;

    iput-object p4, p0, Lo/Vc$StateListAnimator;->a:Lcom/netflix/model/leafs/originals/interactive/Moment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 228
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 229
    iget-object p1, p0, Lo/Vc$StateListAnimator;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 232
    iget-object p1, p0, Lo/Vc$StateListAnimator;->d:Lo/Vc;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/Vc;->c(Z)V

    .line 233
    iget-object p1, p0, Lo/Vc$StateListAnimator;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    if-nez p1, :cond_1

    .line 234
    iget-object p1, p0, Lo/Vc$StateListAnimator;->d:Lo/Vc;

    invoke-virtual {p1}, Lo/Vc;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 235
    iget-object p1, p0, Lo/Vc$StateListAnimator;->d:Lo/Vc;

    invoke-static {p1}, Lo/Vc;->e(Lo/Vc;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 236
    iget-object p1, p0, Lo/Vc$StateListAnimator;->d:Lo/Vc;

    invoke-virtual {p1}, Lo/Vc;->d()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 237
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lo/Vc$StateListAnimator;->d:Lo/Vc;

    invoke-virtual {v1}, Lo/Vc;->e()Landroid/view/animation/PathInterpolator;

    move-result-object v1

    check-cast v1, Landroid/animation/TimeInterpolator;

    .line 238
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 243
    :cond_0
    iget-object p1, p0, Lo/Vc$StateListAnimator;->d:Lo/Vc;

    invoke-static {p1}, Lo/Vc;->d(Lo/Vc;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 244
    iget-object p1, p0, Lo/Vc$StateListAnimator;->d:Lo/Vc;

    iget-object v0, p0, Lo/Vc$StateListAnimator;->e:Lo/Xt;

    iget-object v1, p0, Lo/Vc$StateListAnimator;->a:Lcom/netflix/model/leafs/originals/interactive/Moment;

    invoke-static {p1, v0, v1}, Lo/Vc;->e(Lo/Vc;Lo/Xt;Lcom/netflix/model/leafs/originals/interactive/Moment;)V

    :cond_1
    return-void
.end method
