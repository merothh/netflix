.class public Lcom/netflix/mediaclient/ui/survey/SurveyActivity;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source "SurveyActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/survey/SurveyListener;


# static fields
.field public static final EXTRA_SURVEY:Ljava/lang/String; = "extra_survey"

.field public static final TAG:Ljava/lang/String; = "SurveyActivity"

.field private static hasCompleted:Z


# instance fields
.field firstQuestion:Lcom/netflix/model/survey/SurveyQuestion;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    return-void
.end method

.method public static makeSurveyRequestAndShow(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSurveyStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/survey/SurveyActivity$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity$1;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->fetchSurvey(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V

    return-void
.end method

.method public static shouldShowSurvey(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z
    .locals 2

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getBrandLoveSurveyTestCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->isKidsProfile()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->hasCompleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showSurvey(Landroid/app/Activity;Lcom/netflix/model/survey/Survey;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_survey"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->survey:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method protected handleBackPressed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->onSkipped()V

    const/4 v0, 0x1

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCompleted(I)V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->hasCompleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->hasCompleted:Z

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->firstQuestion:Lcom/netflix/model/survey/SurveyQuestion;

    invoke-virtual {v1}, Lcom/netflix/model/survey/SurveyQuestion;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v3, v1}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSurveyEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)V

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->firstQuestion:Lcom/netflix/model/survey/SurveyQuestion;

    invoke-virtual {v1}, Lcom/netflix/model/survey/SurveyQuestion;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v3, v1, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSurveyQuestionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/netflix/mediaclient/ui/survey/ThanksFragment;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/survey/ThanksFragment;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    const v2, 0x7f0f0090

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SurveyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Survey completed! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->firstQuestion:Lcom/netflix/model/survey/SurveyQuestion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportUiModalViewChanged(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_survey"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/survey/Survey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/model/survey/Survey;->getQuestionTotal()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/netflix/model/survey/Survey;->getFirstQuestion()Lcom/netflix/model/survey/SurveyQuestion;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->firstQuestion:Lcom/netflix/model/survey/SurveyQuestion;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->hide()V

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSurveyQuestionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/survey/SurveyFragment;->getInstance(Lcom/netflix/model/survey/Survey;)Lcom/netflix/mediaclient/ui/survey/SurveyFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0f0090

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->onSurveyMessageRead()V

    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onDestroy()V

    return-void
.end method

.method public onSkipped()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->hasCompleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->hasCompleted:Z

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->firstQuestion:Lcom/netflix/model/survey/SurveyQuestion;

    invoke-virtual {v1}, Lcom/netflix/model/survey/SurveyQuestion;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v3, v1}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSurveyEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)V

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->firstQuestion:Lcom/netflix/model/survey/SurveyQuestion;

    invoke-virtual {v1}, Lcom/netflix/model/survey/SurveyQuestion;->getId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-static {p0, v0, v3, v1, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSurveyQuestionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->finish()V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SurveyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Survey cancelled! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->firstQuestion:Lcom/netflix/model/survey/SurveyQuestion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSurveyMessageRead()V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->markSurveysAsRead()V

    return-void
.end method
