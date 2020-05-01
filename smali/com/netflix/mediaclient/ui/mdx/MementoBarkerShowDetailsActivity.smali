.class public Lcom/netflix/mediaclient/ui/mdx/MementoBarkerShowDetailsActivity;
.super Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsActivity;
.source "MementoBarkerShowDetailsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MementoBarkerShowDetailsActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsActivity;-><init>()V

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

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsActivity;->initSlidingPanel()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoBarkerShowDetailsActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelHeight(I)V

    return-void
.end method

.method public notifyMdxMiniPlayerShown(Z)V
    .locals 0

    return-void
.end method

.method protected showMiniPlayer()V
    .locals 0

    return-void
.end method
