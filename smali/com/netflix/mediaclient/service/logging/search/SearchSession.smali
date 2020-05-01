.class public Lcom/netflix/mediaclient/service/logging/search/SearchSession;
.super Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;
.source "SearchSession.java"


# static fields
.field private static final CATEGORY:Ljava/lang/String; = "search"

.field public static final NAME:Ljava/lang/String; = "search"


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/search/SearchSession;->setId(J)V

    return-void
.end method


# virtual methods
.method public createEndedEvent()Lcom/netflix/mediaclient/service/logging/search/model/SearchSessionEndedEvent;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/search/SearchSession;->mStarted:J

    sub-long/2addr v0, v2

    new-instance v2, Lcom/netflix/mediaclient/service/logging/search/model/SearchSessionEndedEvent;

    invoke-direct {v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/search/model/SearchSessionEndedEvent;-><init>(J)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/SearchSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/search/model/SearchSessionEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    return-object v2
.end method

.method public createStartEvent()Lcom/netflix/mediaclient/service/logging/search/model/SearchSessionStartedEvent;
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/logging/search/model/SearchSessionStartedEvent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/search/model/SearchSessionStartedEvent;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/search/SearchSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/search/model/SearchSessionStartedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "search"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "search"

    return-object v0
.end method
