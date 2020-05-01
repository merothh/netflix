.class public Lcom/netflix/mediaclient/ui/mdx/MementoShowDetailsActivity;
.super Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;
.source "MementoShowDetailsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MementoShowDetailsActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected allowTransitionAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected initSlidingPanel()V
    .locals 2

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->initSlidingPanel()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoShowDetailsActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelHeight(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoShowDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/kubrick/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoShowDetailsActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->hidelogo()V

    return-void
.end method

.method public notifyMdxMiniPlayerShown(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->createShowIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "expandMinPlayer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MementoShowDetailsActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method protected showMiniPlayer()V
    .locals 0

    return-void
.end method
