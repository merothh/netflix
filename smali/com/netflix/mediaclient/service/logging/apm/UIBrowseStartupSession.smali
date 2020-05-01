.class public final Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;
.super Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;
.source "UIBrowseStartupSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "uiBrowseStartup"

.field private static final TAG:Ljava/lang/String; = "UIBrowseStartupSession"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;-><init>()V

    return-void
.end method


# virtual methods
.method public createEndedEvent(JZLcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;->mStarted:J

    sub-long/2addr v0, v2

    new-instance v2, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;

    invoke-direct {v2, v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;-><init>(JJ)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;->setCategory(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    invoke-virtual {v2, p4}, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;->setError(Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    invoke-virtual {v2, p3}, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;->setSuccess(Z)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "UIBrowseStartupSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createEndedEvent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "uiBrowseStartup"

    return-object v0
.end method
