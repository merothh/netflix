.class public Lcom/netflix/cl/model/event/session/SessionEnded;
.super Lcom/netflix/cl/model/event/Event;
.source ""


# instance fields
.field protected durationInMs:J

.field private sessionId:J

.field protected sessionName:Ljava/lang/String;

.field private sessionStartTimeInMs:J


# direct methods
.method public constructor <init>(Lcom/netflix/cl/model/event/session/Session;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/netflix/cl/model/event/Event;-><init>()V

    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/Session;->getTimeInMs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/cl/model/event/session/SessionEnded;->sessionStartTimeInMs:J

    .line 51
    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/Session;->getSessionId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/cl/model/event/session/SessionEnded;->sessionId:J

    .line 52
    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/Session;->getSessionName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/cl/model/event/session/SessionEnded;->sessionName:Ljava/lang/String;

    const-string p1, "SessionEnded"

    .line 53
    invoke-virtual {p0, p1}, Lcom/netflix/cl/model/event/session/SessionEnded;->addContextType(Ljava/lang/String;)V

    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Session can not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDurationInMs()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/netflix/cl/model/event/session/SessionEnded;->durationInMs:J

    return-wide v0
.end method

.method public getSessionId()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/netflix/cl/model/event/session/SessionEnded;->sessionId:J

    return-wide v0
.end method

.method public getSessionName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/netflix/cl/model/event/session/SessionEnded;->sessionName:Ljava/lang/String;

    return-object v0
.end method

.method public prepareForSending()V
    .locals 5

    .line 83
    invoke-super {p0}, Lcom/netflix/cl/model/event/Event;->prepareForSending()V

    .line 85
    iget-wide v0, p0, Lcom/netflix/cl/model/event/session/SessionEnded;->durationInMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 86
    invoke-static {}, Lcom/netflix/cl/Platform;->getErrorReporter()Lcom/netflix/cl/Platform$ErrorReporter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event used before: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/netflix/cl/model/event/Event;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/cl/Platform$ErrorReporter;->logHandledException(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/cl/Platform$LocalLogger;->isDebug()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This should NOT happen! Session ended event used before: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/netflix/cl/model/event/Event;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", duration was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/netflix/cl/model/event/session/SessionEnded;->durationInMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/netflix/cl/model/event/session/SessionEnded;->timeInMs:J

    iget-wide v2, p0, Lcom/netflix/cl/model/event/session/SessionEnded;->sessionStartTimeInMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/cl/model/event/session/SessionEnded;->durationInMs:J

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .line 71
    invoke-super {p0}, Lcom/netflix/cl/model/event/Event;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 72
    iget-wide v1, p0, Lcom/netflix/cl/model/event/session/SessionEnded;->durationInMs:J

    const-string v3, "duration"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 73
    iget-wide v1, p0, Lcom/netflix/cl/model/event/session/SessionEnded;->sessionId:J

    const-string v3, "sessionId"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method
