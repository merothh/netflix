.class Lo/UncheckedIOException$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/UncheckedIOException$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/UncheckedIOException$3;


# direct methods
.method constructor <init>(Lo/UncheckedIOException$3;)V
    .locals 0

    .line 1094
    iput-object p1, p0, Lo/UncheckedIOException$3$1;->b:Lo/UncheckedIOException$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1097
    iget-object v0, p0, Lo/UncheckedIOException$3$1;->b:Lo/UncheckedIOException$3;

    iget-object v0, v0, Lo/UncheckedIOException$3;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lo/UncheckedIOException$3$1;->b:Lo/UncheckedIOException$3;

    iget-object v0, v0, Lo/UncheckedIOException$3;->b:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1099
    iget-object v0, p0, Lo/UncheckedIOException$3$1;->b:Lo/UncheckedIOException$3;

    iget-object v1, v0, Lo/UncheckedIOException$3;->a:Lo/UncheckedIOException;

    iget-object v0, p0, Lo/UncheckedIOException$3$1;->b:Lo/UncheckedIOException$3;

    iget-object v2, v0, Lo/UncheckedIOException$3;->b:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Lo/UncheckedIOException$3$1;->b:Lo/UncheckedIOException$3;

    iget-object v0, v0, Lo/UncheckedIOException$3;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lo/UncheckedIOException;->e(Landroidx/fragment/app/Fragment;IIIZ)V

    :cond_0
    return-void
.end method
