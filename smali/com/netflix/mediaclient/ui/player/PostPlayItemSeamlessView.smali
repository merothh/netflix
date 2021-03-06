.class public final Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;
.super Lcom/netflix/mediaclient/ui/player/PostPlayItemView;
.source "PostPlayItemSeamlessView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PostPlayItemSeamlessView"


# instance fields
.field private mCountdownSeconds:I

.field private mNextEpisode:Landroid/widget/Button;

.field private mPlayAction:Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;

.field private mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

.field private mWatchCredits:Landroid/widget/Button;

.field private mWatchCreditsTapped:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->mWatchCreditsTapped:Z

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->mWatchCredits:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->mWatchCreditsTapped:Z

    return p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;)Lcom/netflix/mediaclient/ui/player/PlayerFragment;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    return-object v0
.end method

.method private updateUI()V
    .locals 6

    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->mCountdownSeconds:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->mNextEpisode:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->mWatchCredits:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->mWatchCreditsTapped:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->mPlayAction:Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->playAction(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->mWatchCredits:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->mNextEpisode:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->mNextEpisode:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801dd

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->mCountdownSeconds:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected findViews()V
    .locals 2

    const v0, 0x7f0f02c4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->mWatchCredits:Landroid/widget/Button;

    const v0, 0x7f0f02b0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->mNextEpisode:Landroid/widget/Button;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->mWatchCredits:Landroid/widget/Button;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView$1;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onTick(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->mCountdownSeconds:I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->updateUI()V

    return-void
.end method

.method protected startTimer(I)V
    .locals 1

    iput p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->mCountdownSeconds:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getTopPanel()Lcom/netflix/mediaclient/ui/player/TopPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->show()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->updateUI()V

    return-void
.end method

.method protected stopTimer()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->mWatchCredits:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public updateViews(Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Landroid/view/View$OnClickListener;)V
    .locals 6

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v3

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->mNextEpisode:Landroid/widget/Button;

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/model/leafs/PostPlayAction;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Landroid/view/View;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->mPlayAction:Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;

    return-void
.end method
