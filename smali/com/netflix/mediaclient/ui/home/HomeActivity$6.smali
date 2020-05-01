.class Lcom/netflix/mediaclient/ui/home/HomeActivity$6;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v1, "ServiceManager ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$802(Lcom/netflix/mediaclient/ui/home/HomeActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    new-instance v1, Lcom/netflix/mediaclient/ui/home/DialogManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/ui/home/DialogManager;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$902(Lcom/netflix/mediaclient/ui/home/HomeActivity;Lcom/netflix/mediaclient/ui/home/DialogManager;)Lcom/netflix/mediaclient/ui/home/DialogManager;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->shouldShowOnRamp(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/model/leafs/OnRampEligibility$Action;->FETCH:Lcom/netflix/model/leafs/OnRampEligibility$Action;

    new-instance v1, Lcom/netflix/mediaclient/ui/home/HomeActivity$6$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity$6$1;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity$6;)V

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->doOnRampEligibilityAction(Lcom/netflix/model/leafs/OnRampEligibility$Action;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$1100(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->showProfileToast()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$1200(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getCurrentViewType()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$1300(Lcom/netflix/mediaclient/ui/home/HomeActivity;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getPrimaryFrag()Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$300(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    new-instance v1, Lcom/netflix/mediaclient/ui/home/HomeActivity$6$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity$6$2;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity$6;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->shouldShowSurvey(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->makeSurveyRequestAndShow(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$1002(Lcom/netflix/mediaclient/ui/home/HomeActivity;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$700(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    goto :goto_0
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->TTI:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->createFailedMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LOLOMO_LOAD:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1, v3}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v1, "ServiceManager unavailable"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$802(Lcom/netflix/mediaclient/ui/home/HomeActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getPrimaryFrag()Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$300(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v1, "LOLOMO failed, report UI startup session ended in case this was on UI startup"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
