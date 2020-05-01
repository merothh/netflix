.class public final Lo/YM;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/YM$TaskDescription;
    }
.end annotation


# static fields
.field public static final c:Lo/YM$TaskDescription;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/ProgressBar;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/YM$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/YM$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/YM;->c:Lo/YM$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lo/YM;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lo/YM;->d()V

    return-void
.end method

.method public static final synthetic c(Lo/YM;)Landroid/widget/ProgressBar;
    .locals 1

    .line 27
    iget-object p0, p0, Lo/YM;->b:Landroid/widget/ProgressBar;

    if-nez p0, :cond_0

    const-string v0, "loadingView"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final d()V
    .locals 5

    .line 103
    new-instance v0, Lo/hK;

    .line 105
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->hV:I

    invoke-virtual {p0, v1}, Lo/YM;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    invoke-virtual {p0, v2}, Lo/YM;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    new-instance v3, Lo/YM$Application;

    invoke-direct {v3, p0}, Lo/YM$Application;-><init>(Lo/YM;)V

    check-cast v3, Ljava/lang/Runnable;

    const/4 v4, 0x0

    .line 103
    invoke-direct {v0, v4, v1, v2, v3}, Lo/hK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 108
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lo/YM;->handler:Landroid/os/Handler;

    invoke-static {v1, v2, v0}, Lo/CalendarViewLegacyDelegate;->a(Landroid/content/Context;Landroid/os/Handler;Lo/hK;)Lo/ScrollBarDrawable$ActionBar;

    move-result-object v0

    .line 109
    new-instance v1, Lo/YM$ActionBar;

    invoke-direct {v1, p0}, Lo/YM$ActionBar;-><init>(Lo/YM;)V

    check-cast v1, Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lo/ScrollBarDrawable$ActionBar;->d(Landroid/content/DialogInterface$OnCancelListener;)Lo/ScrollBarDrawable$ActionBar;

    .line 110
    invoke-virtual {p0, v0}, Lo/YM;->displayDialog(Lo/ScrollBarDrawable$ActionBar;)Landroid/app/Dialog;

    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    sget-object v0, Lo/YM;->c:Lo/YM$TaskDescription;

    invoke-virtual {v0, p0, p1}, Lo/YM$TaskDescription;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "profileGuid"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lo/YM$Activity;

    invoke-direct {v0, p0, p1, p2}, Lo/YM$Activity;-><init>(Lo/YM;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {p0, v0}, Lo/YM;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method

.method public finish()V
    .locals 1

    .line 153
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, v0, v0}, Lo/YM;->overridePendingTransition(II)V

    return-void
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 2

    .line 144
    invoke-virtual {p0}, Lo/YM;->getServiceManager()Lo/Am;

    move-result-object v0

    const-string v1, "serviceManager"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/YM;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/Am;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public handleProfileActivated()V
    .locals 3

    .line 114
    sget-object v0, Lo/YM;->c:Lo/YM$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 115
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finishAllActivities(Landroid/content/Context;)V

    .line 119
    invoke-virtual {p0}, Lo/YM;->getUiScreen()Lcom/netflix/cl/model/AppView;

    move-result-object v1

    const/4 v2, 0x0

    .line 117
    invoke-static {v0, v1, v2}, Lo/Jx;->d(Landroid/content/Context;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Lo/YM;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public handleProfileSelectionResult(ILjava/lang/String;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lo/YM;->b:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    const-string v1, "loadingView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 128
    invoke-static {p1}, Lcom/netflix/mediaclient/StatusCode;->e(I)Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    const-string v0, "StatusCode.getStatusCodeByValue(statusCode)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    if-ne p1, v0, :cond_1

    .line 130
    sget-object p1, Lo/YM;->c:Lo/YM$TaskDescription;

    check-cast p1, Lo/MessagePdu;

    goto :goto_0

    .line 135
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 136
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 137
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->d(Z)V

    .line 139
    check-cast v0, Lcom/netflix/mediaclient/android/app/Status;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lo/YM;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;Z)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lo/YM;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "ProfileName"

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/YM;->d:Ljava/lang/String;

    const-string v1, "ProfileGuid"

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/YM;->a:Ljava/lang/String;

    .line 61
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->b:I

    invoke-virtual {p0, v0}, Lo/YM;->setContentView(I)V

    .line 62
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jI:I

    invoke-virtual {p0, v0}, Lo/YM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.loading_view)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lo/YM;->b:Landroid/widget/ProgressBar;

    if-nez p1, :cond_1

    .line 65
    iget-object p1, p0, Lo/YM;->a:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 67
    sget-object p1, Lo/YM;->c:Lo/YM$TaskDescription;

    check-cast p1, Lo/MessagePdu;

    .line 68
    invoke-virtual {p0}, Lo/YM;->finish()V

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lo/YM;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lo/YM;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_1
    new-instance p1, Lo/YM$StateListAnimator;

    invoke-direct {p1, p0}, Lo/YM$StateListAnimator;-><init>(Lo/YM;)V

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {p0, p1}, Lo/YM;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    :goto_0
    const/4 p1, 0x0

    .line 81
    invoke-virtual {p0, p1, p1}, Lo/YM;->overridePendingTransition(II)V

    return-void

    .line 57
    :cond_2
    invoke-virtual {p0}, Lo/YM;->finish()V

    return-void
.end method

.method public shouldAttachToolbar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
