.class Lcom/netflix/mediaclient/ui/home/HomeActivity$6$2;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/home/HomeActivity$6;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/HomeActivity$6;)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6$2;->this$1:Lcom/netflix/mediaclient/ui/home/HomeActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataLoaded(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 676
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->TTI:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1, v4}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 677
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LOLOMO_LOAD:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1, v4}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 679
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6$2;->this$1:Lcom/netflix/mediaclient/ui/home/HomeActivity$6;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V

    .line 681
    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v1, "LOLOMO is loaded, report UI browse startup session ended in case this was on UI startup"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6$2;->this$1:Lcom/netflix/mediaclient/ui/home/HomeActivity$6;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$1400(Lcom/netflix/mediaclient/ui/home/HomeActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 683
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6$2;->this$1:Lcom/netflix/mediaclient/ui/home/HomeActivity$6;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v2

    .line 684
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v3

    invoke-interface {v2, v0, v1, v3, v4}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->endUiBrowseStartupSession(JZLcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 686
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6$2;->this$1:Lcom/netflix/mediaclient/ui/home/HomeActivity$6;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$1500(Lcom/netflix/mediaclient/ui/home/HomeActivity;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 689
    :cond_0
    return-void
.end method
