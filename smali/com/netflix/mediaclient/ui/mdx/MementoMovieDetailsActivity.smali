.class public Lcom/netflix/mediaclient/ui/mdx/MementoMovieDetailsActivity;
.super Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;
.source "MementoMovieDetailsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MementoMovieDetailsActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected allowTransitionAnimation()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method protected initSlidingPanel()V
    .locals 2

    .prologue
    .line 19
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->initSlidingPanel()V

    .line 20
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoMovieDetailsActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelHeight(I)V

    .line 21
    return-void
.end method

.method public notifyMdxMiniPlayerShown(Z)V
    .locals 3

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->createShowIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;

    move-result-object v0

    .line 40
    const-string/jumbo v1, "expandMinPlayer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MementoMovieDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 43
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoMovieDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 28
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/kubrick/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 29
    return-void
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method protected showMiniPlayer()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
