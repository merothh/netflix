.class public Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;
.super Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;
.source "CoppolaShowDetailsFrag.java"


# static fields
.field private static final DEFAULT_SYNOPSIS_MAX_LINES:I = 0x4

.field private static final DEFAULT_TITLE_MAX_LINES:I = 0x1

.field private static final MAX_SYNOPSIS_MAX_LINES:I = 0x14

.field private static final MAX_TITLE_MAX_LINES:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 112
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;

    .line 113
    const v0, 0x7f030034

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;-><init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;Landroid/content/Context;I)V

    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->synopsis:Landroid/widget/TextView;

    new-instance v1, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView$1;-><init>(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->synopsis:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->synopsis:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->synopsis:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->title:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected adjustEpisodeImageHeight()V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0166

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 177
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v0, v1, v0

    float-to-int v0, v0

    .line 178
    int-to-float v1, v0

    const/high16 v2, 0x3f100000    # 0.5625f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 179
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->image:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 180
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->image:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 181
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->progressBarBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 182
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->progressBarBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 183
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 184
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->unavailable:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->unavailable:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 186
    return-void
.end method

.method protected setupPlayButton(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 4

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->isCurrentEpisode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isAutoplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->disablePlay()V

    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->nowPlaying:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;->setupPlayButton(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->nowPlaying:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->isCurrentEpisode:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->enablePlay(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->image:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    new-instance v1, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->image:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView$2;

    invoke-direct {v3, p0, p1}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView$2;-><init>(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;-><init>(Lcom/netflix/mediaclient/android/widget/PressedStateHandler;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected updateProgressBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;->updateProgressBar()V

    .line 137
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->isCurrentEpisode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isAutoplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->progressBarBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->progressBarBackground:Landroid/view/View;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateSynopsis(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;->updateSynopsis(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->synopsis:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 193
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->title:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 194
    return-void
.end method

.method protected updateTitle(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->title:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->createTitleText(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u00a0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
