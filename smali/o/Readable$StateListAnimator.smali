.class Lo/Readable$StateListAnimator;
.super Lo/Readable$Application;
.source ""

# interfaces
.implements Lo/Redirect$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Readable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation


# instance fields
.field private f:Lo/Redirect$StateListAnimator;

.field private m:Lo/Redirect$ActionBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/Readable$Dialog;)V
    .locals 0

    .line 740
    invoke-direct {p0, p1, p2}, Lo/Readable$Application;-><init>(Landroid/content/Context;Lo/Readable$Dialog;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 745
    invoke-virtual {p0, p1}, Lo/Readable$StateListAnimator;->h(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 747
    iget-object v1, p0, Lo/Readable$StateListAnimator;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Readable$Application$ActionBar;

    .line 749
    invoke-static {p1}, Lo/Redirect$TaskDescription;->c(Ljava/lang/Object;)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 751
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 752
    :goto_0
    iget-object v1, v0, Lo/Readable$Application$ActionBar;->e:Lo/NoSuchFieldException;

    .line 753
    invoke-virtual {v1}, Lo/NoSuchFieldException;->s()I

    move-result v1

    if-eq p1, v1, :cond_1

    .line 754
    new-instance v1, Lo/NoSuchFieldException$Application;

    iget-object v2, v0, Lo/Readable$Application$ActionBar;->e:Lo/NoSuchFieldException;

    invoke-direct {v1, v2}, Lo/NoSuchFieldException$Application;-><init>(Lo/NoSuchFieldException;)V

    .line 756
    invoke-virtual {v1, p1}, Lo/NoSuchFieldException$Application;->g(I)Lo/NoSuchFieldException$Application;

    move-result-object p1

    .line 757
    invoke-virtual {p1}, Lo/NoSuchFieldException$Application;->a()Lo/NoSuchFieldException;

    move-result-object p1

    iput-object p1, v0, Lo/Readable$Application$ActionBar;->e:Lo/NoSuchFieldException;

    .line 758
    invoke-virtual {p0}, Lo/Readable$StateListAnimator;->j()V

    :cond_1
    return-void
.end method

.method protected a(Lo/Readable$Application$ActionBar;Lo/NoSuchFieldException$Application;)V
    .locals 1

    .line 766
    invoke-super {p0, p1, p2}, Lo/Readable$Application;->a(Lo/Readable$Application$ActionBar;Lo/NoSuchFieldException$Application;)V

    .line 768
    iget-object v0, p1, Lo/Readable$Application$ActionBar;->a:Ljava/lang/Object;

    invoke-static {v0}, Lo/Redirect$TaskDescription;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 769
    invoke-virtual {p2, v0}, Lo/NoSuchFieldException$Application;->b(Z)Lo/NoSuchFieldException$Application;

    .line 772
    :cond_0
    invoke-virtual {p0, p1}, Lo/Readable$StateListAnimator;->c(Lo/Readable$Application$ActionBar;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 773
    invoke-virtual {p2, v0}, Lo/NoSuchFieldException$Application;->e(Z)Lo/NoSuchFieldException$Application;

    .line 776
    :cond_1
    iget-object p1, p1, Lo/Readable$Application$ActionBar;->a:Ljava/lang/Object;

    .line 777
    invoke-static {p1}, Lo/Redirect$TaskDescription;->c(Ljava/lang/Object;)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 779
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-virtual {p2, p1}, Lo/NoSuchFieldException$Application;->g(I)Lo/NoSuchFieldException$Application;

    :cond_2
    return-void
.end method

.method protected c(Lo/Readable$Application$ActionBar;)Z
    .locals 1

    .line 800
    iget-object v0, p0, Lo/Readable$StateListAnimator;->m:Lo/Redirect$ActionBar;

    if-nez v0, :cond_0

    .line 801
    new-instance v0, Lo/Redirect$ActionBar;

    invoke-direct {v0}, Lo/Redirect$ActionBar;-><init>()V

    iput-object v0, p0, Lo/Readable$StateListAnimator;->m:Lo/Redirect$ActionBar;

    .line 803
    :cond_0
    iget-object v0, p0, Lo/Readable$StateListAnimator;->m:Lo/Redirect$ActionBar;

    iget-object p1, p1, Lo/Readable$Application$ActionBar;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lo/Redirect$ActionBar;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected i()V
    .locals 3

    .line 785
    invoke-super {p0}, Lo/Readable$Application;->i()V

    .line 787
    iget-object v0, p0, Lo/Readable$StateListAnimator;->f:Lo/Redirect$StateListAnimator;

    if-nez v0, :cond_0

    .line 788
    new-instance v0, Lo/Redirect$StateListAnimator;

    .line 789
    invoke-virtual {p0}, Lo/Readable$StateListAnimator;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lo/Readable$StateListAnimator;->b()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/Redirect$StateListAnimator;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lo/Readable$StateListAnimator;->f:Lo/Redirect$StateListAnimator;

    .line 791
    :cond_0
    iget-object v0, p0, Lo/Readable$StateListAnimator;->f:Lo/Redirect$StateListAnimator;

    iget-boolean v1, p0, Lo/Readable$StateListAnimator;->i:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lo/Readable$StateListAnimator;->a:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lo/Redirect$StateListAnimator;->d(I)V

    return-void
.end method

.method protected k()Ljava/lang/Object;
    .locals 1

    .line 796
    invoke-static {p0}, Lo/Redirect;->b(Lo/Redirect$Activity;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
