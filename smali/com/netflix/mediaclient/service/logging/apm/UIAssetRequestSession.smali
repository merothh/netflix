.class public Lcom/netflix/mediaclient/service/logging/apm/UIAssetRequestSession;
.super Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;
.source "UIAssetRequestSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "uiAssetRequest"


# instance fields
.field private mAssetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/UIAssetRequestSession;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/apm/UIAssetRequestSession;->mAssetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    return-void
.end method


# virtual methods
.method public createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;Lcom/netflix/mediaclient/service/logging/client/model/Error;)Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/apm/UIAssetRequestSession;->mStarted:J

    sub-long/2addr v0, v2

    new-instance v2, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;

    invoke-direct {v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;-><init>(J)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/UIAssetRequestSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->setCategory(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIAssetRequestSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIAssetRequestSession;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->setUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIAssetRequestSession;->mAssetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->setAssetType(Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;)V

    invoke-virtual {v2, p3}, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->setError(Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    invoke-virtual {v2, p1}, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->setReason(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    invoke-virtual {v2, p2}, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->setResponse(Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;)V

    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "uiAssetRequest"

    return-object v0
.end method
