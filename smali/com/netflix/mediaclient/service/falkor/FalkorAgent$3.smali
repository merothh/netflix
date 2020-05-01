.class Lcom/netflix/mediaclient/service/falkor/FalkorAgent$3;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "FalkorAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

.field final synthetic val$cb:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$3;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$3;->val$cb:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    .line 288
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LOLOMO_PREFETCH:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    .line 289
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/StatusCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 288
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 290
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$3;->val$cb:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$3;->val$cb:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 294
    :cond_0
    const/4 v0, 0x0

    .line 295
    instance-of v1, p1, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    if-eqz v1, :cond_4

    move-object v0, p1

    .line 296
    check-cast v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->wasAllDataLocalToCache()Z

    move-result v0

    .line 302
    :goto_1
    if-nez v0, :cond_2

    .line 303
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "nf_preapp notifying of  prefetch done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$3;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getPreAppAgent()Lcom/netflix/mediaclient/service/ServiceAgent$PreAppAgentInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$3;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/ServiceAgent$PreAppAgentInterface;->informPrefetched(Landroid/content/Context;)V

    .line 305
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/StatusCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "nf_preapp prefetch failed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 309
    iget-object v2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$3;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    const-string/jumbo v3, "prefs_prefetch_json_last_write_system_time_ms"

    invoke-static {v2, v3, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putLongPref(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 310
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 311
    const-string/jumbo v2, "FalkorAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onLoLoMoPrefetched: prefetch lolomo time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_2
    return-void

    .line 289
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->createFailedMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 299
    :cond_4
    const-string/jumbo v1, "FalkorAgent"

    const-string/jumbo v2, "status is not FalkorAgentStatus"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
