.class Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$4;
.super Ljava/lang/Object;
.source "UserMessageAreaView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$4;->this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$4;->this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$4;->this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->access$000(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->blocking()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$4;->this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->access$200(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;)Landroid/widget/Space;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$4;->this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->access$300(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$4;->this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->access$000(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->blocking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$4;->this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$4;->this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$4;->this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_1
.end method
