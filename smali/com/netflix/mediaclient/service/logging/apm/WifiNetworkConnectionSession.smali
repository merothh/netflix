.class public Lcom/netflix/mediaclient/service/logging/apm/WifiNetworkConnectionSession;
.super Lcom/netflix/mediaclient/service/logging/apm/NetworkConnectionSession;
.source "WifiNetworkConnectionSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "wifiNetworkConnection"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/apm/NetworkConnectionSession;-><init>()V

    return-void
.end method


# virtual methods
.method public createEndedEvent()Lcom/netflix/mediaclient/service/logging/apm/model/WifiNetworkConnectionSessionEndedEvent;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/apm/WifiNetworkConnectionSession;->mStarted:J

    sub-long/2addr v0, v2

    new-instance v2, Lcom/netflix/mediaclient/service/logging/apm/model/WifiNetworkConnectionSessionEndedEvent;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/apm/WifiNetworkConnectionSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-direct {v2, v3, v0, v1}, Lcom/netflix/mediaclient/service/logging/apm/model/WifiNetworkConnectionSessionEndedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;J)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/WifiNetworkConnectionSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/WifiNetworkConnectionSessionEndedEvent;->setCategory(Ljava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic createEndedEvent()Lcom/netflix/mediaclient/service/logging/client/model/Event;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/WifiNetworkConnectionSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/apm/model/WifiNetworkConnectionSessionEndedEvent;

    move-result-object v0

    return-object v0
.end method

.method public createStartEvent()Lcom/netflix/mediaclient/service/logging/apm/model/WifiNetworkConnectionSessionStartedEvent;
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/model/WifiNetworkConnectionSessionStartedEvent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/apm/model/WifiNetworkConnectionSessionStartedEvent;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/WifiNetworkConnectionSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/apm/model/WifiNetworkConnectionSessionStartedEvent;->setCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/WifiNetworkConnectionSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/apm/model/WifiNetworkConnectionSessionStartedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    return-object v0
.end method

.method public bridge synthetic createStartEvent()Lcom/netflix/mediaclient/service/logging/client/model/Event;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/WifiNetworkConnectionSession;->createStartEvent()Lcom/netflix/mediaclient/service/logging/apm/model/WifiNetworkConnectionSessionStartedEvent;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "wifiNetworkConnection"

    return-object v0
.end method
