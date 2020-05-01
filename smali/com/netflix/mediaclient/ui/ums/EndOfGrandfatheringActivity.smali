.class public Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source "EndOfGrandfatheringActivity.java"


# static fields
.field private static final EXTRA_CURRENT_PAGE_INDEX:Ljava/lang/String; = "com.netflix.mediaclient.ui.ums.eog.pageIndex"

.field private static final EXTRA_CURRENT_PLAN_INDEX:Ljava/lang/String; = "com.netflix.mediaclient.ui.ums.eog.planIndex"

.field private static final TAG:Ljava/lang/String; = "eog"

.field public static final TEST_BLOCKING:Z = false

.field public static final TEST_CELL_ID:I = 0x5

.field public static final TEST_USING_DUMMY_DATA:Z


# instance fields
.field private mCurrentPageIndex:I

.field private mCurrentPlanIndex:I

.field private mEogAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

.field private mFlipper:Landroid/widget/ViewFlipper;

.field private mLandingPage:Lcom/netflix/mediaclient/ui/ums/EogLandingPage;

.field private mPlanPage:Lcom/netflix/mediaclient/ui/ums/EogPlanPage;

.field private mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->init(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private addViewsToFlipper()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getApplicationContext()Landroid/content/Context;

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getLandingPageLayoutToUse()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getPlanPageLayoutToUse()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static createStartIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEndOfGrandfatheringActivityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "eog"

    const-string/jumbo v2, "adding clear_task flag"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method private getCurrentPlanIndexOfUser()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->currentPlanId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->currentPlanId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->sdPlanPlanId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->currentPlanId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->hdPlanPlanId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->currentPlanId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->uhdPlanPlanId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static getEndOfGrandfatheringActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const-class v0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    return-object v0
.end method

.method private getLandingPageLayoutToUse()I
    .locals 3

    const v0, 0x7f030053

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/ums/EogUtils;->shouldUseLayoutWithImages(Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/ums/EogUtils;->isSmallSizeTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "eog"

    const-string/jumbo v2, "returning phone layout for cell5 tablet bcoz size too small"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "use tablet landing page"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f030057

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f030056

    goto :goto_0

    :cond_3
    const v0, 0x7f030052

    goto :goto_0
.end method

.method private getPlanPageLayoutToUse()I
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/ums/EogUtils;->isSmallSizeTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f030059

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "use tablet plan page"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f030058

    goto :goto_0

    :cond_1
    const v0, 0x7f030055

    goto :goto_0
.end method

.method private init(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getEndOfGrandfatheringAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mEogAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->initUi()V

    return-void
.end method

.method private initUi()V
    .locals 2

    iget v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mCurrentPlanIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mCurrentPlanIndex:I

    :goto_0
    iput v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mCurrentPlanIndex:I

    const v0, 0x7f03004f

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->setContentView(I)V

    const v0, 0x7f0f014a

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->addViewsToFlipper()V

    new-instance v0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;-><init>(Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mLandingPage:Lcom/netflix/mediaclient/ui/ums/EogLandingPage;

    new-instance v0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;-><init>(Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mPlanPage:Lcom/netflix/mediaclient/ui/ums/EogPlanPage;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mLandingPage:Lcom/netflix/mediaclient/ui/ums/EogLandingPage;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->initUi()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mPlanPage:Lcom/netflix/mediaclient/ui/ums/EogPlanPage;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->initUi()V

    iget v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mCurrentPageIndex:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EogUtils;->shouldGoToPlanPage(ILcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->goToPlanPage()V

    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->isBlocking()Z

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->shouldBlockUser(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->markEogAlertAsDirty()V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getCurrentPlanIndexOfUser()I

    move-result v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->eogPrompt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->reportUiViewChanged(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    goto :goto_1
.end method

.method private markEogAlertAsDirty()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->isDirty:Z

    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "eogAlert marked dirty; can\'t use same data again"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static shouldBlockUser(Z)Z
    .locals 0

    return p0
.end method


# virtual methods
.method protected backPressed()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->handleBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "finish"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->finish()V

    :cond_0
    return-void
.end method

.method public canProceed()Z
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    const-string/jumbo v1, "eog"

    const-string/jumbo v2, "fields are null - can\'t proceed"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity$1;-><init>(Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;)V

    return-object v0
.end method

.method public getCurrentPlanIndex()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mCurrentPlanIndex:I

    return v0
.end method

.method public getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mEogAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mEogAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getEndOfGrandfatheringAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mEogAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mEogAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    goto :goto_0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->eogPrompt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method public goToLandingPage()V
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->eogPrompt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->reportUiViewChanged(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    return-void
.end method

.method public goToPlanPage()V
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->eogPlanSelector:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->reportUiViewChanged(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    return-void
.end method

.method protected handleBackPressed()Z
    .locals 3

    const/4 v0, 0x1

    const-string/jumbo v1, "eog"

    const-string/jumbo v2, "handleBackPressed"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/ums/EogUtils;->shouldGoToLandingPage(ILcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->goToLandingPage()V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->isBlocking()Z

    move-result v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->shouldBlockUser(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "eog"

    const-string/jumbo v2, "finishing"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->recordUmsImpression()V

    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "com.netflix.mediaclient.ui.ums.eog.pageIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mCurrentPageIndex:I

    const-string/jumbo v0, "com.netflix.mediaclient.ui.ums.eog.planIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mCurrentPlanIndex:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mCurrentPageIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mCurrentPlanIndex:I

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "Saving eog state..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "com.netflix.mediaclient.ui.ums.eog.pageIndex"

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "com.netflix.mediaclient.ui.ums.eog.planIndex"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getCurrentPlanIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performAction(Landroid/view/View;)V
    .locals 5

    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "performAction currentChildIndex: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v4}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mLandingPage:Lcom/netflix/mediaclient/ui/ums/EogLandingPage;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->performAction(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "Handled by landing page"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mPlanPage:Lcom/netflix/mediaclient/ui/ums/EogPlanPage;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->performAction(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "Handled by plan page"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "Handled by nobody!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public performPlanSelection(Landroid/view/View;)V
    .locals 5

    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "performPlanSelection currentChildIndex: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v4}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mPlanPage:Lcom/netflix/mediaclient/ui/ums/EogPlanPage;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->performPlanSelection(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "Handled by plan page"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "Handled by nobody!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public performUpAction()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->isBlocking()Z

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->shouldBlockUser(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EogUtils;->shouldGoToLandingPage(ILcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->goToLandingPage()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "finishing activity"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->recordUmsImpression()V

    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->performUpAction()V

    goto :goto_0
.end method

.method public recordPlanSelection()V
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez v2, :cond_2

    :cond_0
    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "serviceMgr or eogAlert are null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mCurrentPlanIndex:I

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "eog"

    const-string/jumbo v2, "unkown planId :%d - skipping recording"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v1, v0

    :goto_1
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "eog"

    const-string/jumbo v3, "record planSelection planId:%s, priceTier:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->markEogAlertAsDirty()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->recordPlanSelection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->sdPlanPlanId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->sdPlanPlanTier()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->hdPlanPlanId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->hdPlanPlanTier()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->uhdPlanPlanId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->uhdPlanPlanTier()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public recordUmsImpression()V
    .locals 5

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "serviceMgr or eogAlert are null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "recordUserMessageImpression msgName:%s, impressionType:%s, curPageIndex:%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->messageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->skipBtnImpressionType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mCurrentPageIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->messageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->skipBtnImpressionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->recordUserMessageImpression(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCurrentPlanIndex(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mCurrentPlanIndex:I

    return-void
.end method
