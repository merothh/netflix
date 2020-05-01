.class Lo/ObjectStreamClass$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ObjectStreamClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateListAnimator"
.end annotation


# instance fields
.field final synthetic d:Lo/ObjectStreamClass;


# direct methods
.method constructor <init>(Lo/ObjectStreamClass;)V
    .locals 0

    .line 695
    iput-object p1, p0, Lo/ObjectStreamClass$StateListAnimator;->d:Lo/ObjectStreamClass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 700
    iget-object v0, p0, Lo/ObjectStreamClass$StateListAnimator;->d:Lo/ObjectStreamClass;

    iget-boolean v0, v0, Lo/ObjectStreamClass;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 704
    :cond_0
    iget-object v0, p0, Lo/ObjectStreamClass$StateListAnimator;->d:Lo/ObjectStreamClass;

    iget-boolean v0, v0, Lo/ObjectStreamClass;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 705
    iget-object v0, p0, Lo/ObjectStreamClass$StateListAnimator;->d:Lo/ObjectStreamClass;

    iput-boolean v1, v0, Lo/ObjectStreamClass;->c:Z

    .line 706
    iget-object v0, v0, Lo/ObjectStreamClass;->d:Lo/ObjectStreamClass$Activity;

    invoke-virtual {v0}, Lo/ObjectStreamClass$Activity;->d()V

    .line 709
    :cond_1
    iget-object v0, p0, Lo/ObjectStreamClass$StateListAnimator;->d:Lo/ObjectStreamClass;

    iget-object v0, v0, Lo/ObjectStreamClass;->d:Lo/ObjectStreamClass$Activity;

    .line 710
    invoke-virtual {v0}, Lo/ObjectStreamClass$Activity;->c()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lo/ObjectStreamClass$StateListAnimator;->d:Lo/ObjectStreamClass;

    invoke-virtual {v2}, Lo/ObjectStreamClass;->c()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 715
    :cond_2
    iget-object v2, p0, Lo/ObjectStreamClass$StateListAnimator;->d:Lo/ObjectStreamClass;

    iget-boolean v2, v2, Lo/ObjectStreamClass;->a:Z

    if-eqz v2, :cond_3

    .line 716
    iget-object v2, p0, Lo/ObjectStreamClass$StateListAnimator;->d:Lo/ObjectStreamClass;

    iput-boolean v1, v2, Lo/ObjectStreamClass;->a:Z

    .line 717
    invoke-virtual {v2}, Lo/ObjectStreamClass;->e()V

    .line 720
    :cond_3
    invoke-virtual {v0}, Lo/ObjectStreamClass$Activity;->a()V

    .line 722
    invoke-virtual {v0}, Lo/ObjectStreamClass$Activity;->g()I

    move-result v1

    .line 723
    invoke-virtual {v0}, Lo/ObjectStreamClass$Activity;->j()I

    move-result v0

    .line 724
    iget-object v2, p0, Lo/ObjectStreamClass$StateListAnimator;->d:Lo/ObjectStreamClass;

    invoke-virtual {v2, v1, v0}, Lo/ObjectStreamClass;->e(II)V

    .line 727
    iget-object v0, p0, Lo/ObjectStreamClass$StateListAnimator;->d:Lo/ObjectStreamClass;

    iget-object v0, v0, Lo/ObjectStreamClass;->b:Landroid/view/View;

    invoke-static {v0, p0}, Lo/FilterWriter;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 711
    :cond_4
    :goto_0
    iget-object v0, p0, Lo/ObjectStreamClass$StateListAnimator;->d:Lo/ObjectStreamClass;

    iput-boolean v1, v0, Lo/ObjectStreamClass;->e:Z

    return-void
.end method
