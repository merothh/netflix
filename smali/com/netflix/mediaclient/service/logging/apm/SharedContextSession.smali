.class public Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;
.super Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;
.source "SharedContextSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "sharedContext"


# instance fields
.field private mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;->mUuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createEndedEvent()Lcom/netflix/mediaclient/service/logging/apm/model/SharedContextSessionEndedEvent;
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;->mStarted:J

    sub-long/2addr v0, v2

    new-instance v2, Lcom/netflix/mediaclient/service/logging/apm/model/SharedContextSessionEndedEvent;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;->mUuid:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/netflix/mediaclient/service/logging/apm/model/SharedContextSessionEndedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/SharedContextSessionEndedEvent;->setCategory(Ljava/lang/String;)V

    return-object v2
.end method

.method public createStartEvent()Lcom/netflix/mediaclient/service/logging/apm/model/SharedContextSessionStartedEvent;
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/model/SharedContextSessionStartedEvent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;->mUuid:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/logging/apm/model/SharedContextSessionStartedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/apm/model/SharedContextSessionStartedEvent;->setCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/apm/model/SharedContextSessionStartedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "sharedContext"

    return-object v0
.end method
