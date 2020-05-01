.class Lcom/netflix/mediaclient/ui/home/HomeActivity$3;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$InteractiveListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInteractive()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->TTR:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$000(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->flushApmEvents(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    return-void
.end method
