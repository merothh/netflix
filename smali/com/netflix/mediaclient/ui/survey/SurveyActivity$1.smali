.class final Lcom/netflix/mediaclient/ui/survey/SurveyActivity$1;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "SurveyActivity.java"


# instance fields
.field final synthetic val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/survey/SurveyActivity$1;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurveyFetched(Lcom/netflix/model/survey/Survey;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/model/survey/Survey;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/survey/SurveyActivity$1;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->showSurvey(Landroid/app/Activity;Lcom/netflix/model/survey/Survey;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/survey/SurveyActivity$1;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v3, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSurveyEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string/jumbo v0, "SurveyActivity"

    const-string/jumbo v1, "No Survey available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/survey/SurveyActivity$1;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v3, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSurveyEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string/jumbo v0, "SurveyActivity"

    const-string/jumbo v1, "Survey failed!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
