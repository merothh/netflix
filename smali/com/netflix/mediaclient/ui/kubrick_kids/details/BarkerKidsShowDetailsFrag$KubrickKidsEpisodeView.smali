.class Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsEpisodeView;
.super Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodeView;
.source "BarkerKidsShowDetailsFrag.java"


# instance fields
.field private final pressableViewGroup:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;Landroid/content/Context;I)V
    .locals 2

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsEpisodeView;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodeView;-><init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;Landroid/content/Context;I)V

    const v0, 0x7f0f018e

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsEpisodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsEpisodeView;->pressableViewGroup:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsEpisodeView;->image:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setPressedStateHandlerEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected adjustEpisodeImageHeight()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsEpisodeView;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0198

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsEpisodeView;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getNumColumns()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsEpisodeView;->image:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsEpisodeView;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/kids/KidsUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsEpisodeView;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getNumColumns()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f100000    # 0.5625f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method protected adjustEpisodeImageWidth()V
    .locals 0

    return-void
.end method

.method protected createTitleText(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)Ljava/lang/CharSequence;
    .locals 1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPressableView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsEpisodeView;->pressableViewGroup:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    return-object v0
.end method

.method protected getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsEpisodeView;->pressableViewGroup:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    move-result-object v0

    return-object v0
.end method

.method protected updateProgressBar()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsEpisodeView;->progressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsEpisodeView;->progressVal:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsEpisodeView;->isCurrentEpisode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsEpisodeView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsEpisodeView;->progressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsEpisodeView;->progressVal:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsEpisodeView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsEpisodeView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsEpisodeView;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateTitle(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsEpisodeView;->title:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodeView;->updateTitle(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsEpisodeView;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsEpisodeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsEpisodeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    const v1, 0x7f0f0014

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getSeasonNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method
