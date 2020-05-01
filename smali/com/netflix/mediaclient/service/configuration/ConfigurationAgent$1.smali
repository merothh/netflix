.class Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;
.super Ljava/lang/Object;
.source "ConfigurationAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drmError(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 251
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->DRM_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 253
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const-string/jumbo v0, "nf_configurationagent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DRM failed to initialize, Error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$200(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 257
    return-void
.end method

.method public drmReady()V
    .locals 3

    .prologue
    .line 233
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "DRM manager is ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->DRM_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 236
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->hasEsnChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$002(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Z)Z

    .line 245
    :cond_0
    const-string/jumbo v0, "nf_configurationagent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EsnMigration needed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$000(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$100(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 247
    return-void
.end method
