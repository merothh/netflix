.class public final Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;
.super Lcom/netflix/mediaclient/ui/player/PostPlay;
.source "PostPlayForMDX.java"


# instance fields
.field private mAutoPlayEnabled:Z

.field protected mAutoPlayView:Landroid/view/View;

.field protected mMoreButton:Landroid/view/View;

.field protected mPlayButton:Landroid/view/View;

.field protected mStopButton:Landroid/view/View;

.field private mTargetNameView:Landroid/widget/TextView;

.field private mTimer:I

.field protected mTimerValue:I

.field protected mTimerView:Landroid/widget/TextView;

.field private final onEverySecond:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mAutoPlayEnabled:Z

    .line 145
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX$1;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->onEverySecond:Ljava/lang/Runnable;

    .line 72
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mTimerValue:I

    .line 73
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mTimerValue:I

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mOffsetMs:I

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mTimer:I

    return v0
.end method

.method static synthetic access$010(Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;)I
    .locals 2

    .prologue
    .line 41
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mTimer:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mTimer:I

    return v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->refreshTimerText()V

    return-void
.end method

.method private createIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->isMdxAgentAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getCurrentTarget()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$Utils;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 307
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mTimerValue:I

    .line 84
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->isAutoPlayEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mAutoPlayEnabled:Z

    .line 86
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string/jumbo v0, "nf_postplay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PostPlayForMDX:: timer max value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mTimerValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mAutoPlayEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mTimerView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mAutoPlayView:Landroid/view/View;

    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->INVISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->initInfoContainer(Landroid/app/Activity;)V

    .line 95
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->initButtons()V

    .line 96
    return-void
.end method

.method private init(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mTimerValue:I

    .line 101
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->isAutoPlayEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mAutoPlayEnabled:Z

    .line 103
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const-string/jumbo v0, "nf_postplay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PostPlayForMDX:: timer max value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mTimerValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mAutoPlayEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mTimerView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mAutoPlayView:Landroid/view/View;

    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->INVISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    .line 111
    :cond_1
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->initInfoContainer(Landroid/app/Activity;)V

    .line 112
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->initButtons()V

    .line 113
    return-void
.end method

.method private refreshTimerText()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mTimerView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mTimerView:Landroid/widget/TextView;

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mTimer:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_0
    return-void
.end method

.method private setMDXTargetName()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 347
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mTargetNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->isMdxAgentAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->getCurrentDeviceFriendlyName(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Ljava/lang/String;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mTargetNameView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mTargetNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mTargetNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mBackgroundContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mBackgroundContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 361
    :cond_1
    return-void
.end method

.method private stopAllNotifications()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->stopAllNotifications()V

    .line 298
    :cond_0
    return-void
.end method

.method private updatePostPlayUI(Z)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 179
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isCoppolaExperience(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mSynopsis:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mPlayButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mPlayButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0202

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 186
    :cond_0
    return-void

    .line 180
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 387
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->destroy()V

    .line 388
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mAutoPlayEnabled:Z

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->onEverySecond:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 391
    :cond_0
    return-void
.end method

.method protected doTransitionFromPostPlay()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mBackgroundContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->performUpAction()V

    .line 200
    :cond_0
    return-void
.end method

.method protected doTransitionToPostPlay()V
    .locals 4

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mAutoPlayEnabled:Z

    if-eqz v0, :cond_1

    .line 123
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Auto play is enabled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mTimerValue:I

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mTimer:I

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isCoppolaContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->refreshTimerText()V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->onEverySecond:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_1
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Auto play is disabled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endOfPlay()V
    .locals 1

    .prologue
    .line 421
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->endOfPlay()V

    .line 422
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->setBackgroundImageVisible(Z)V

    .line 423
    return-void
.end method

.method protected findViews()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f0f02c1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mTargetNameView:Landroid/widget/TextView;

    .line 335
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f0f02c8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mStopButton:Landroid/view/View;

    .line 336
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f0f02c7

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mPlayButton:Landroid/view/View;

    .line 337
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f0f02c9

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mMoreButton:Landroid/view/View;

    .line 338
    return-void
.end method

.method protected getLengthOfAutoPlayCountdow()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mTimerValue:I

    return v0
.end method

.method protected getPostPlayExpirience()Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;->PostPlayNextEpisode:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

    return-object v0
.end method

.method public handleBack()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_STOPPOSTPALY"

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 330
    :cond_0
    return-void
.end method

.method public handleStop()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->isMdxAgentAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->stopAllNotifications()V

    .line 321
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_STOP"

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 322
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    .line 324
    :cond_0
    return-void
.end method

.method protected initButtons()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mStopButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mStopButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 367
    :cond_0
    return-void
.end method

.method protected initInfoContainer(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mTimerView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mTimerView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    :cond_0
    return-void
.end method

.method protected isAutoPlayEnabled()Z
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 168
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 170
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    .line 171
    :goto_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->updatePostPlayUI(Z)V

    .line 172
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mAutoPlayEnabled:Z

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->onEverySecond:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 403
    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->onPause()V

    .line 404
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->isInteractivePostPlay:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mInPostPlay:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mAutoPlayEnabled:Z

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->onEverySecond:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 414
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->onEverySecond:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 416
    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->onResume()V

    .line 417
    return-void
.end method

.method protected onTimerEnd()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mPlayButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 312
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    .line 314
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->stopAllNotifications()V

    .line 316
    :cond_0
    return-void
.end method

.method public postPlayDismissed()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->postPlayDismissed()V

    .line 191
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mAutoPlayEnabled:Z

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->onEverySecond:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 194
    :cond_0
    return-void
.end method

.method protected setClickListeners()V
    .locals 2

    .prologue
    .line 371
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->setClickListeners()V

    .line 372
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mStopButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mStopButton:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX$2;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    :cond_0
    return-void
.end method

.method protected shouldReportPostplay()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method protected updateOnPostPlayVideosFetched()V
    .locals 2

    .prologue
    .line 208
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "updateOnPostPlayVideosFetched start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    if-nez v0, :cond_0

    .line 210
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "We do not have any data! Do nothing!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 215
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "We do not have any data! Do nothing!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->updateViews()V

    .line 220
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->setMDXTargetName()V

    .line 221
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->transitionToPostPlay()V

    goto :goto_0
.end method

.method protected updateViews()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Activity for playback is already not valid! Do nothing!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 237
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mBackgroundContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 238
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 240
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mBackgroundContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v3}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 242
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/PostPlayItem;

    .line 244
    const v1, 0x7f0300cf

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mBackgroundContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/ui/player/PostPlayBackground;

    .line 245
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mBackgroundContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 246
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    sget-object v5, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->MDX:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/netflix/mediaclient/ui/player/PostPlayBackground;->updateViews(Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V

    .line 247
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PostPlayBackground;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v4}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 248
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PostPlayBackground;->startBackgroundAutoPan()V

    .line 250
    new-instance v3, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v5

    sget-object v6, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->MDX:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    invoke-direct {v3, v1, v4, v5, v6}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/model/leafs/PostPlayAction;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V

    .line 251
    const v1, 0x7f0300dd

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;

    .line 252
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 254
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    sget-object v5, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->MDX:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->updateViews(Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V

    .line 256
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mPlayButton:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 257
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mPlayButton:Landroid/view/View;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->generatePlayHandler()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    :cond_3
    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getMoreInfoAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v0

    .line 261
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mMoreButton:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 262
    if-eqz v0, :cond_5

    .line 263
    new-instance v2, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    sget-object v5, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->MDX:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/model/leafs/PostPlayAction;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V

    .line 264
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->generateDisplayPageHandler()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 271
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplaySeconds()I

    move-result v0

    if-lez v0, :cond_0

    .line 272
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->MDX:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->setupAutoPlay(Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V

    .line 273
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->startTimer()V

    goto/16 :goto_0

    .line 267
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mMoreButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
