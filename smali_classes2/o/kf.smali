.class public Lo/kf;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field public c:Lcom/netflix/cl/model/event/session/DebugSession;

.field public d:Ljava/lang/String;

.field public e:Lcom/netflix/cl/model/event/session/SessionEnded;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PerfSession"

    .line 24
    iput-object v0, p0, Lo/kf;->a:Ljava/lang/String;

    return-void
.end method

.method public static c(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)Lo/kf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/logging/perf/Sessions;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lo/kf;"
        }
    .end annotation

    .line 74
    new-instance v0, Lo/kf;

    invoke-direct {v0}, Lo/kf;-><init>()V

    .line 75
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/kf;->d:Ljava/lang/String;

    .line 77
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->b(Ljava/lang/Enum;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    :try_start_0
    const-string p1, "type"

    .line 80
    sget-object v1, Lcom/netflix/cl/util/ExtCLUtils$DebugSessionType;->Performance:Lcom/netflix/cl/util/ExtCLUtils$DebugSessionType;

    invoke-virtual {v1}, Lcom/netflix/cl/util/ExtCLUtils$DebugSessionType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :catch_0
    new-instance p1, Lcom/netflix/cl/model/event/session/DebugSession;

    invoke-direct {p1, p0}, Lcom/netflix/cl/model/event/session/DebugSession;-><init>(Lorg/json/JSONObject;)V

    iput-object p1, v0, Lo/kf;->c:Lcom/netflix/cl/model/event/session/DebugSession;

    return-object v0
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lo/kf;->c:Lcom/netflix/cl/model/event/session/DebugSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/kf;->e:Lcom/netflix/cl/model/event/session/SessionEnded;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    iget-object v1, p0, Lo/kf;->c:Lcom/netflix/cl/model/event/session/DebugSession;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    new-array v5, v4, [Ljava/lang/Object;

    .line 62
    iget-object v6, p0, Lo/kf;->d:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {v1}, Lcom/netflix/cl/model/event/session/DebugSession;->getTimeInMs()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v2

    const-string v1, "Name - %s.started, logTime - %d"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_0
    iget-object v1, p0, Lo/kf;->e:Lcom/netflix/cl/model/event/session/SessionEnded;

    if-eqz v1, :cond_2

    .line 65
    iget-object v1, p0, Lo/kf;->c:Lcom/netflix/cl/model/event/session/DebugSession;

    if-eqz v1, :cond_1

    const-string v1, "\n"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 68
    iget-object v5, p0, Lo/kf;->d:Ljava/lang/String;

    aput-object v5, v1, v3

    iget-object v3, p0, Lo/kf;->e:Lcom/netflix/cl/model/event/session/SessionEnded;

    invoke-virtual {v3}, Lcom/netflix/cl/model/event/session/SessionEnded;->getTimeInMs()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lo/kf;->e:Lcom/netflix/cl/model/event/session/SessionEnded;

    invoke-virtual {v2}, Lcom/netflix/cl/model/event/session/SessionEnded;->getDurationInMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Name - %s.ended, logTime - %d, duration - %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
