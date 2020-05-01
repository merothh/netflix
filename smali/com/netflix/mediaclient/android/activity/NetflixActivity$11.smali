.class Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;
.super Ljava/lang/Object;
.source "NetflixActivity.java"

# interfaces
.implements Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 2452
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPanelAnchored(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2504
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "onPanelAnchored"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    return-void
.end method

.method public onPanelCollapsed(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2495
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "onPanelCollapsed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onSlidingPanelCollapsed(Landroid/view/View;)V

    .line 2497
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2498
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->onPanelCollapsed()V

    .line 2500
    :cond_0
    return-void
.end method

.method public onPanelExpanded(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2486
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "onPanelExpanded"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onSlidingPanelExpanded(Landroid/view/View;)V

    .line 2488
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2489
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->onPanelExpanded()V

    .line 2491
    :cond_0
    return-void
.end method

.method public onPanelSlide(Landroid/view/View;F)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2455
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2456
    const-string/jumbo v0, "NetflixActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPanelSlide, offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2460
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->onPanelSlide(F)V

    .line 2463
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2482
    :cond_2
    :goto_0
    return-void

    .line 2467
    :cond_3
    const v0, 0x3e99999a    # 0.3f

    .line 2468
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1700(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I

    move-result v1

    if-lez v1, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-lez v1, :cond_4

    .line 2469
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1700(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 2472
    :cond_4
    cmpg-float v0, p2, v0

    if-gtz v0, :cond_5

    .line 2473
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2474
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->hide(Z)V

    goto :goto_0

    .line 2478
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2479
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->show(Z)V

    goto :goto_0
.end method
