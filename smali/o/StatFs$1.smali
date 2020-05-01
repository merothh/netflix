.class Lo/StatFs$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/StatFs$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/StatFs;->e(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/StatFs;


# direct methods
.method constructor <init>(Lo/StatFs;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lo/StatFs$1;->d:Lo/StatFs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    .line 422
    iget-object v0, p0, Lo/StatFs$1;->d:Lo/StatFs;

    invoke-static {v0}, Lo/StatFs;->a(Lo/StatFs;)Lo/SystemVibrator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lo/StatFs$1;->d:Lo/StatFs;

    invoke-static {v0}, Lo/StatFs;->a(Lo/StatFs;)Lo/SystemVibrator;

    move-result-object v0

    invoke-interface {v0}, Lo/SystemVibrator;->d()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lo/StatFs$1;->d:Lo/StatFs;

    invoke-static {v0}, Lo/StatFs;->a(Lo/StatFs;)Lo/SystemVibrator;

    move-result-object v0

    invoke-interface {v0}, Lo/SystemVibrator;->e()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 428
    :cond_0
    iget-object v0, p0, Lo/StatFs$1;->d:Lo/StatFs;

    invoke-static {v0}, Lo/StatFs;->o(Lo/StatFs;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lo/StatFs$1;->d:Lo/StatFs;

    invoke-static {v0}, Lo/StatFs;->o(Lo/StatFs;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    iget-object v2, p0, Lo/StatFs$1;->d:Lo/StatFs;

    invoke-virtual {v0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->removeView(Landroid/view/View;)V

    .line 430
    iget-object v0, p0, Lo/StatFs$1;->d:Lo/StatFs;

    invoke-static {v0, v1}, Lo/StatFs;->c(Lo/StatFs;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 432
    :cond_1
    iget-object v0, p0, Lo/StatFs$1;->d:Lo/StatFs;

    invoke-static {v0, v1}, Lo/StatFs;->a(Lo/StatFs;Lo/SystemVibrator;)Lo/SystemVibrator;

    return-void
.end method
