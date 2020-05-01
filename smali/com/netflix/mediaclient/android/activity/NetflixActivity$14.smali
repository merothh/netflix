.class Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 3326
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;F)V
    .locals 2

    .line 3333
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$700(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/LU;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3334
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$700(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/LU;

    move-result-object v0

    invoke-interface {v0, p2}, Lo/LU;->c(F)V

    .line 3337
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$700(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/LU;

    move-result-object v0

    invoke-interface {v0}, Lo/LU;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3343
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v0, v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v0, v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    const v0, 0x3e99999a    # 0.3f

    .line 3348
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$2100(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I

    move-result v1

    if-lez v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-lez v1, :cond_2

    .line 3349
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$2100(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    :cond_2
    cmpg-float p1, p2, v0

    if-gtz p1, :cond_3

    .line 3353
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$2200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_0

    .line 3355
    :cond_3
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$2300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 3357
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$2400(Lcom/netflix/mediaclient/android/activity/NetflixActivity;F)V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    const-string p1, "NetflixActivity"

    const-string v0, "onPanelAnchored"

    .line 3380
    invoke-static {p1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 2

    const-string v0, "NetflixActivity"

    const-string v1, "onPanelCollapsed"

    .line 3371
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3372
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onSlidingPanelCollapsed(Landroid/view/View;)V

    .line 3373
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$700(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/LU;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3374
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$700(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/LU;

    move-result-object p1

    invoke-interface {p1}, Lo/LU;->N()V

    :cond_0
    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 2

    const-string v0, "NetflixActivity"

    const-string v1, "onPanelExpanded"

    .line 3362
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3363
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onSlidingPanelExpanded(Landroid/view/View;)V

    .line 3364
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$700(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/LU;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3365
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$700(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/LU;

    move-result-object p1

    invoke-interface {p1}, Lo/LU;->G()V

    :cond_0
    return-void
.end method
