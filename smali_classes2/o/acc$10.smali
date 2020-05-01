.class Lo/acc$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acc;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;Lo/Kx;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/acc;


# direct methods
.method constructor <init>(Lo/acc;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lo/acc$10;->d:Lo/acc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 289
    iget-object v0, p0, Lo/acc$10;->d:Lo/acc;

    invoke-virtual {v0}, Lo/acc;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 291
    iget-object v0, p0, Lo/acc$10;->d:Lo/acc;

    new-instance v1, Landroid/widget/Space;

    invoke-virtual {v0}, Lo/acc;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lo/acc;->a(Lo/acc;Landroid/widget/Space;)Landroid/widget/Space;

    .line 292
    iget-object v0, p0, Lo/acc$10;->d:Lo/acc;

    invoke-static {v0}, Lo/acc;->e(Lo/acc;)Landroid/widget/Space;

    move-result-object v0

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget-object v2, p0, Lo/acc$10;->d:Lo/acc;

    iget-object v2, v2, Lo/acc;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    iget-object v0, p0, Lo/acc$10;->d:Lo/acc;

    invoke-static {v0}, Lo/acc;->d(Lo/acc;)Lo/Kx;

    move-result-object v0

    iget-object v1, p0, Lo/acc$10;->d:Lo/acc;

    invoke-static {v1}, Lo/acc;->e(Lo/acc;)Landroid/widget/Space;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Kx;->setHeaderView(Landroid/view/View;)V

    return-void
.end method
