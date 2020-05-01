.class Lo/StatFs$Activity$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/StatFs$Activity;-><init>(Lo/StatFs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/StatFs;

.field final synthetic c:Lo/StatFs$Activity;


# direct methods
.method constructor <init>(Lo/StatFs$Activity;Lo/StatFs;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lo/StatFs$Activity$5;->c:Lo/StatFs$Activity;

    iput-object p2, p0, Lo/StatFs$Activity$5;->a:Lo/StatFs;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 602
    iget-object p1, p0, Lo/StatFs$Activity$5;->c:Lo/StatFs$Activity;

    invoke-static {p1}, Lo/StatFs$Activity;->a(Lo/StatFs$Activity;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 604
    iget-object p1, p0, Lo/StatFs$Activity$5;->c:Lo/StatFs$Activity;

    iget-object p1, p1, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->a(Lo/StatFs;)Lo/SystemVibrator;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 605
    iget-object p1, p0, Lo/StatFs$Activity$5;->c:Lo/StatFs$Activity;

    invoke-static {p1}, Lo/StatFs$Activity;->e(Lo/StatFs$Activity;)Lo/StatFs$TaskDescription;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/StatFs$TaskDescription;->a(Z)V

    .line 606
    iget-object p1, p0, Lo/StatFs$Activity$5;->c:Lo/StatFs$Activity;

    invoke-static {p1}, Lo/StatFs$Activity;->e(Lo/StatFs$Activity;)Lo/StatFs$TaskDescription;

    move-result-object p1

    iget-object v1, p0, Lo/StatFs$Activity$5;->c:Lo/StatFs$Activity;

    iget-object v1, v1, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {v1}, Lo/StatFs;->j(Lo/StatFs;)Lo/StatFs$TaskDescription;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v1, :cond_1

    .line 608
    iget-object p1, p0, Lo/StatFs$Activity$5;->c:Lo/StatFs$Activity;

    iget-object p1, p1, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->f(Lo/StatFs;)Lo/StatFs$TaskDescription;

    move-result-object p1

    invoke-virtual {p1, v4}, Lo/StatFs$TaskDescription;->a(Z)V

    .line 609
    iget-object p1, p0, Lo/StatFs$Activity$5;->c:Lo/StatFs$Activity;

    iget-object p1, p1, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->j(Lo/StatFs;)Lo/StatFs$TaskDescription;

    move-result-object p1

    iget-object v1, p0, Lo/StatFs$Activity$5;->c:Lo/StatFs$Activity;

    iget-object v1, v1, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {v1}, Lo/StatFs;->j(Lo/StatFs;)Lo/StatFs$TaskDescription;

    move-result-object v1

    invoke-virtual {v1}, Lo/StatFs$TaskDescription;->c()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-virtual {p1, v1}, Lo/StatFs$TaskDescription;->e(Z)V

    .line 610
    iget-object p1, p0, Lo/StatFs$Activity$5;->c:Lo/StatFs$Activity;

    iget-object p1, p1, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->a(Lo/StatFs;)Lo/SystemVibrator;

    move-result-object p1

    iget-object v1, p0, Lo/StatFs$Activity$5;->c:Lo/StatFs$Activity;

    iget-object v1, v1, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {v1}, Lo/StatFs;->j(Lo/StatFs;)Lo/StatFs$TaskDescription;

    move-result-object v1

    invoke-virtual {v1}, Lo/StatFs$TaskDescription;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lo/StatFs$Activity$5;->c:Lo/StatFs$Activity;

    iget-object v0, v0, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {v0}, Lo/StatFs;->g(Lo/StatFs;)I

    move-result v0

    :cond_0
    invoke-interface {p1, v0}, Lo/SystemVibrator;->setRating(I)V

    .line 611
    iget-object p1, p0, Lo/StatFs$Activity$5;->c:Lo/StatFs$Activity;

    iget-object p1, p1, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->h(Lo/StatFs;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1, v2}, Lo/FilterWriter;->a(Landroid/view/View;F)V

    .line 612
    iget-object p1, p0, Lo/StatFs$Activity$5;->c:Lo/StatFs$Activity;

    iget-object p1, p1, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->d(Lo/StatFs;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1, v3}, Lo/FilterWriter;->a(Landroid/view/View;F)V

    goto :goto_0

    .line 615
    :cond_1
    iget-object p1, p0, Lo/StatFs$Activity$5;->c:Lo/StatFs$Activity;

    iget-object p1, p1, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->j(Lo/StatFs;)Lo/StatFs$TaskDescription;

    move-result-object p1

    invoke-virtual {p1, v4}, Lo/StatFs$TaskDescription;->a(Z)V

    .line 616
    iget-object p1, p0, Lo/StatFs$Activity$5;->c:Lo/StatFs$Activity;

    iget-object p1, p1, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->f(Lo/StatFs;)Lo/StatFs$TaskDescription;

    move-result-object p1

    iget-object v1, p0, Lo/StatFs$Activity$5;->c:Lo/StatFs$Activity;

    iget-object v1, v1, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {v1}, Lo/StatFs;->f(Lo/StatFs;)Lo/StatFs$TaskDescription;

    move-result-object v1

    invoke-virtual {v1}, Lo/StatFs$TaskDescription;->c()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-virtual {p1, v1}, Lo/StatFs$TaskDescription;->e(Z)V

    .line 617
    iget-object p1, p0, Lo/StatFs$Activity$5;->c:Lo/StatFs$Activity;

    iget-object p1, p1, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->a(Lo/StatFs;)Lo/SystemVibrator;

    move-result-object p1

    iget-object v1, p0, Lo/StatFs$Activity$5;->c:Lo/StatFs$Activity;

    iget-object v1, v1, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {v1}, Lo/StatFs;->f(Lo/StatFs;)Lo/StatFs$TaskDescription;

    move-result-object v1

    invoke-virtual {v1}, Lo/StatFs$TaskDescription;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lo/StatFs$Activity$5;->c:Lo/StatFs$Activity;

    iget-object v0, v0, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {v0}, Lo/StatFs;->i(Lo/StatFs;)I

    move-result v0

    :cond_2
    invoke-interface {p1, v0}, Lo/SystemVibrator;->setRating(I)V

    .line 618
    iget-object p1, p0, Lo/StatFs$Activity$5;->c:Lo/StatFs$Activity;

    iget-object p1, p1, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->h(Lo/StatFs;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1, v3}, Lo/FilterWriter;->a(Landroid/view/View;F)V

    .line 619
    iget-object p1, p0, Lo/StatFs$Activity$5;->c:Lo/StatFs$Activity;

    iget-object p1, p1, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->d(Lo/StatFs;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1, v2}, Lo/FilterWriter;->a(Landroid/view/View;F)V

    :cond_3
    :goto_0
    return-void
.end method
