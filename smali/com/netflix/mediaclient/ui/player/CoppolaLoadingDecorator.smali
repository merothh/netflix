.class public Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;
.super Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;
.source "CoppolaLoadingDecorator.java"


# static fields
.field private static final AUTOPLAY_DELAY_TIMEOUT_MS:I = 0x1770

.field private static final PLAYER_ANIMATION_DURATION_MS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "CoppolaLoadingDecorator"


# instance fields
.field private blackBackground:Landroid/view/View;

.field finishTime:J

.field private gradient:Landroid/view/View;

.field private handler:Landroid/os/Handler;

.field private horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private launchButton:Landroid/view/View;

.field private loadingIndicator:Landroid/view/View;

.field private loadingTextIndicator:Landroid/widget/TextView;

.field private oldLaunchButton:Landroid/view/View;

.field private updateLoadingTextRunnable:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayScreen;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;-><init>(Lcom/netflix/mediaclient/ui/player/PlayScreen;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->handler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->updateUI(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;-><init>(Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->handler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->updateUI(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->hideLaunchButtons()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->animateUI(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;)Lcom/netflix/mediaclient/android/widget/AdvancedImageView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->animateProgressBar()V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->loadingIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->loadingTextIndicator:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->gradient:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->launchPlayback()V

    return-void
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->blackBackground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;Ljava/lang/String;ZLjava/lang/String;IZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->updateLoadingText(Ljava/lang/String;ZLjava/lang/String;IZ)V

    return-void
.end method

.method private animateProgressBar()V
    .locals 6

    const/4 v5, 0x1

    const-string/jumbo v0, "CoppolaLoadingDecorator"

    const-string/jumbo v1, "animateProgressBar()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a012b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->loadingIndicator:Landroid/view/View;

    const-string/jumbo v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    neg-int v0, v0

    int-to-float v0, v0

    aput v0, v3, v4

    const/4 v0, 0x0

    aput v0, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    :cond_0
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private animateUI(Z)V
    .locals 3

    const/16 v2, 0xc8

    const-string/jumbo v0, "CoppolaLoadingDecorator"

    const-string/jumbo v1, "animateUI()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-static {v0, p1, v2}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;ZI)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-nez p1, :cond_0

    new-instance v1, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$4;-><init>(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->animateProgressBar()V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->loadingIndicator:Landroid/view/View;

    invoke-static {v0, p1, v2}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;ZI)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->loadingTextIndicator:Landroid/widget/TextView;

    invoke-static {v0, p1, v2}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;ZI)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->gradient:Landroid/view/View;

    invoke-static {v0, p1, v2}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;ZI)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private hideLaunchButtons()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->launchButton:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->oldLaunchButton:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method private isDelayedAutoplay()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isAutoplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->showCountdownTimer(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchPlayback()V
    .locals 4

    const/16 v3, 0xc8

    const/4 v2, 0x1

    const-string/jumbo v0, "CoppolaLoadingDecorator"

    const-string/jumbo v1, "launchPlayback()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->finishTime:J

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isMDXTargetSelected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->launchButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isNewPlayerExperience(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->wasBufferingComplete()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->loadingTextIndicator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->loadingTextIndicator:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->loadingIndicator:Landroid/view/View;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->loadingTextIndicator:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->animateProgressBar()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->loadingIndicator:Landroid/view/View;

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;ZI)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->loadingTextIndicator:Landroid/widget/TextView;

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;ZI)Landroid/view/ViewPropertyAnimator;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->launchPlayback()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->loadingTextIndicator:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateLoadingText(Ljava/lang/String;ZLjava/lang/String;IZ)V
    .locals 7

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "CoppolaLoadingDecorator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLoadingText() - title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/MdxUtils;->isCurrentMdxTargetAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->showProgressAndTextIndicator(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->showCountdownTimer(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->finishTime:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_7

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->launchButton:Landroid/view/View;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->finishTime:J

    sub-long v2, v4, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    const/16 v0, 0x9

    if-le v2, v0, :cond_3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz p2, :cond_4

    const v3, 0x7f080174

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->loadingTextIndicator:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->loadingTextIndicator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-nez v2, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->loadingTextIndicator:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->launchPlayback()V

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const v3, 0x7f08019e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->updateLoadingTextRunnable:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->updateLoadingTextRunnable:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_6
    new-instance v0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;-><init>(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;Ljava/lang/String;ZLjava/lang/String;IZ)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->updateLoadingTextRunnable:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->updateLoadingTextRunnable:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$UpdateLoadingTextRunnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_7
    if-eqz p2, :cond_9

    const v0, 0x7f080172

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p5, :cond_8

    const v0, 0x7f080171

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->loadingTextIndicator:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->loadingTextIndicator:Landroid/widget/TextView;

    const v1, 0x7f08018c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method private updateUI(Landroid/view/ViewGroup;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "CoppolaLoadingDecorator"

    const-string/jumbo v2, "Updating UI..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0300c6

    invoke-virtual {v0, v2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0f027e

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const v0, 0x7f0f0284

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->loadingIndicator:Landroid/view/View;

    const v0, 0x7f0f0281

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->loadingTextIndicator:Landroid/widget/TextView;

    const v0, 0x7f0f027f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->gradient:Landroid/view/View;

    const v0, 0x7f0f027d

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->blackBackground:Landroid/view/View;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->animateProgressBar()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->playerScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getController()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isPlaybackInWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->playerScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getController()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getConnectionType(Landroid/content/Context;)Lcom/netflix/mediaclient/service/net/LogMobileType;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/service/net/LogMobileType;->WIFI:Lcom/netflix/mediaclient/service/net/LogMobileType;

    if-eq v0, v2, :cond_3

    move v2, v3

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->showProgressAndTextIndicator(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    new-instance v4, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$1;

    invoke-direct {v4, p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$1;-><init>(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;)V

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setOnStartedPlaybackListener(Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;)V

    const v0, 0x7f0f0282

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->launchButton:Landroid/view/View;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->launchButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->isDelayedAutoplay()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isNewPlayerExperience(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isNewPlayerExperience(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->showProgressAndTextIndicator(Z)V

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->updateViewMargins(Z)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isNewPlayerExperience(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->shouldInjectPlayerFragment(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const v0, 0x7f0f0283

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->oldLaunchButton:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->oldLaunchButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->oldLaunchButton:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$3;-><init>(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void

    :cond_3
    move v2, v1

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x8

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->isDelayedAutoplay()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->launchButton:Landroid/view/View;

    new-instance v2, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$2;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$2;-><init>(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isAutoplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->showProgressAndTextIndicator(Z)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->loadingIndicator:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->showCountdownTimer(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->launchPlayback()V

    goto/16 :goto_2
.end method

.method private updateViewMargins(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->loadingTextIndicator:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_1

    const v1, 0x7f0a0122

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->loadingTextIndicator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_0
    return-void

    :cond_1
    const v1, 0x7f0a0166

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public onAssetUpdated(Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onAssetUpdated(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    const-string/jumbo v0, "CoppolaLoadingDecorator"

    const-string/jumbo v1, "onAssetUpdated()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getEpisodeNumber()I

    move-result v4

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isNSRE()Z

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->updateLoadingText(Ljava/lang/String;ZLjava/lang/String;IZ)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x1

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v1, "CoppolaLoadingDecorator"

    const-string/jumbo v2, "onConfigurationChanged()"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->launchButton:Landroid/view/View;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ViewUtils;->isVisible(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->isDelayedAutoplay()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isNewPlayerExperience(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->launchPlayback()V

    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->updateViewMargins(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onVideoDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 7

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onVideoDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    const-string/jumbo v0, "CoppolaLoadingDecorator"

    const-string/jumbo v1, "onVideoDetailsFetched()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getStoryDispUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v4, "boxart"

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->showCountdownTimer(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1770

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->finishTime:J

    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v2, :cond_1

    move v2, v6

    :goto_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEpisodeNumber()I

    move-result v4

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isNSRE()Z

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->updateLoadingText(Ljava/lang/String;ZLjava/lang/String;IZ)V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public showLaunchButtons()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->launchButton:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->oldLaunchButton:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method public showProgressAndTextIndicator(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->animateProgressBar()V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->loadingIndicator:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->loadingTextIndicator:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method
