.class public Lcom/netflix/mediaclient/service/logging/perf/PerfSession;
.super Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;
.source "PerfSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "PerformanceSession"


# instance fields
.field private TAG:Ljava/lang/String;

.field end:Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;

.field start:Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;-><init>()V

    const-string/jumbo v0, "PerfSession"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static createSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)Lcom/netflix/mediaclient/service/logging/perf/PerfSession;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/logging/perf/Sessions;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/mediaclient/service/logging/perf/PerfSession;"
        }
    .end annotation

    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/service/logging/perf/PerfSession$1;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession$1;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getId()Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    const-string/jumbo v2, "PerformanceProfiler"

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->setCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->setStartEvent(Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;)V

    return-object v0
.end method

.method private setEndEvent(Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->end:Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;

    return-void
.end method


# virtual methods
.method public closeSession(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Lcom/netflix/mediaclient/service/logging/perf/PerfSession$2;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->start:Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;

    const-wide/16 v4, 0x0

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession$2;-><init>(Lcom/netflix/mediaclient/service/logging/perf/PerfSession;Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;JLjava/util/Map;)V

    const-string/jumbo v0, "PerformanceProfiler"

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->setCategory(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->getTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->start:Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->setDuration(J)V

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->setEndEvent(Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;)V

    return-void
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "PerformanceProfiler"

    return-object v0
.end method

.method public getEndEvent()Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->end:Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "PerformanceSession"

    return-object v0
.end method

.method public getStartEvent()Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->start:Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;

    return-object v0
.end method

.method public getStringId()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;->getId()Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->start:Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->end:Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStartEvent(Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->start:Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "PerfSession: "

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->start:Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->start:Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->end:Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->end:Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method
