.class public Lcom/netflix/mediaclient/ui/mdx/MementoBarkerMovieDetailsActivity;
.super Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsActivity;
.source "MementoBarkerMovieDetailsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MementoBarkerMovieDetailsActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected allowTransitionAnimation()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method protected initSlidingPanel()V
    .locals 2

    .prologue
    .line 13
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsActivity;->initSlidingPanel()V

    .line 14
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoBarkerMovieDetailsActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelHeight(I)V

    .line 15
    return-void
.end method

.method public notifyMdxMiniPlayerShown(Z)V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method protected showMiniPlayer()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method
