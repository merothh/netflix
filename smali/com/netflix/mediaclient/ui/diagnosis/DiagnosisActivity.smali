.class public Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source "DiagnosisActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IDiagnosis$DiagnosisListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DiagnosisActivity"


# instance fields
.field private mAdapter:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$ResultsAdapter;

.field private mDiagnosis:Lcom/netflix/mediaclient/servicemgr/IDiagnosis;

.field private mNetworkStatus:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRadioLogo:Landroid/widget/ImageView;

.field private mStatutListView:Landroid/widget/ListView;

.field private mTestButton:Landroid/widget/Button;

.field private mTestInfo:Landroid/widget/TextView;

.field mUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$ResultsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mAdapter:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$ResultsAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$ResultsAdapter;)Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$ResultsAdapter;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mAdapter:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$ResultsAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)Lcom/netflix/mediaclient/servicemgr/IDiagnosis;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mDiagnosis:Lcom/netflix/mediaclient/servicemgr/IDiagnosis;

    return-object v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Lcom/netflix/mediaclient/servicemgr/IDiagnosis;)Lcom/netflix/mediaclient/servicemgr/IDiagnosis;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mDiagnosis:Lcom/netflix/mediaclient/servicemgr/IDiagnosis;

    return-object p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mStatutListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mStatutListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mNetworkStatus:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mTestInfo:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$502(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mTestButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$602(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mRadioLogo:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$702(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->startDiagnosis()V

    return-void
.end method

.method public static createStartIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private startDiagnosis()V
    .locals 2

    const-string/jumbo v0, "DiagnosisActivity"

    const-string/jumbo v1, "Diagnosis being attempted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mDiagnosis:Lcom/netflix/mediaclient/servicemgr/IDiagnosis;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IDiagnosis;->startNetworkDiagnosis()V

    sget-object v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->TEST_ONGOING:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->updateInfoGroup(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mAdapter:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$ResultsAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$ResultsAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;-><init>(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)V

    return-object v0
.end method

.method protected getStringForFailure()Ljava/lang/String;
    .locals 6

    const/4 v4, 0x1

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    move v3, v0

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mUrlList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mUrlList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->getResult()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->containsNetflix()Z

    move-result v0

    if-eqz v0, :cond_1

    move v3, v4

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    const v0, 0x7f080235

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_3
    if-eqz v2, :cond_4

    const v0, 0x7f080129

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    const v0, 0x7f0801a3

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    const v0, 0x7f0801a5

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->customerService:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method protected hasUpAction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x3

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->setRequestedOrientation(I)V

    const v0, 0x7f030048

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->setContentView(I)V

    const-string/jumbo v0, "DiagnosisActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DiagnosisActivity"

    const-string/jumbo v1, "Setting orientation to landscape"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string/jumbo v0, "DiagnosisActivity"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->setRequestedOrientation(I)V

    const v0, 0x7f030049

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->setContentView(I)V

    const-string/jumbo v0, "DiagnosisActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DiagnosisActivity"

    const-string/jumbo v1, "setting orientation to potrait"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onDestroy()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mDiagnosis:Lcom/netflix/mediaclient/servicemgr/IDiagnosis;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mDiagnosis:Lcom/netflix/mediaclient/servicemgr/IDiagnosis;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IDiagnosis;->abortDiagnosis()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mDiagnosis:Lcom/netflix/mediaclient/servicemgr/IDiagnosis;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IDiagnosis;->removeListener()V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mDiagnosis:Lcom/netflix/mediaclient/servicemgr/IDiagnosis;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mUrlList:Ljava/util/List;

    :cond_0
    const-string/jumbo v0, "DiagnosisActivity"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDiagnosisComplete()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$2;-><init>(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDiagnosisListUpdated()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1;-><init>(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showAboutInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showMdxInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showSettingsInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showSignOutInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateInfoGroup(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;)V
    .locals 5

    const v4, 0x7f080226

    const/4 v3, 0x4

    const/4 v2, 0x0

    sget-object v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$4;->$SwitchMap$com$netflix$mediaclient$ui$diagnosis$DiagnosisActivity$InfoGroupState:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mNetworkStatus:Landroid/widget/TextView;

    const v1, 0x7f080124

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mTestInfo:Landroid/widget/TextView;

    const v1, 0x7f080227

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mTestButton:Landroid/widget/Button;

    const v1, 0x7f08021c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mTestButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mNetworkStatus:Landroid/widget/TextView;

    const v1, 0x7f0801a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mTestInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->getStringForFailure()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mTestInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mTestButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mTestButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mNetworkStatus:Landroid/widget/TextView;

    const v1, 0x7f0801a5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mTestButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mTestButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mRadioLogo:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mStatutListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mTestButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mNetworkStatus:Landroid/widget/TextView;

    const v1, 0x7f080125

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mTestInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
