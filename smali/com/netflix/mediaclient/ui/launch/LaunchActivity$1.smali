.class Lcom/netflix/mediaclient/ui/launch/LaunchActivity$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$1;->this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LAUNCH_ACTIVITY_MANAGER_LOAD:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$1;->this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->access$002(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$1;->this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->access$102(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$1;->this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->handleManagerResponse(Landroid/app/Activity;Lcom/netflix/mediaclient/android/app/Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$1;->this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->access$202(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$1;->this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->access$300(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    goto :goto_0
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LAUNCH_ACTIVITY_MANAGER_LOAD:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->createFailedMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$1;->this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->access$102(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$1;->this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->access$002(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$1;->this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$1;->this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-static {v1, p2}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->handleManagerResponse(Landroid/app/Activity;Lcom/netflix/mediaclient/android/app/Status;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->access$202(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Z)Z

    return-void
.end method
