.class public Lcom/netflix/mediaclient/service/logging/iko/IkoVideoLoadSession;
.super Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;
.source "IkoVideoLoadSession.java"


# static fields
.field protected static final CATEGORY:Ljava/lang/String; = "iko"

.field protected static final NAME:Ljava/lang/String; = "ikoVideoLoad"


# instance fields
.field protected mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/iko/IkoVideoLoadSession;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoLoadEndedEvent;
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/iko/IkoVideoLoadSession;->mStarted:J

    sub-long v4, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoLoadEndedEvent;

    const-string/jumbo v2, "ikoVideoLoad"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/iko/IkoVideoLoadSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    iget-object v8, p0, Lcom/netflix/mediaclient/service/logging/iko/IkoVideoLoadSession;->mUrl:Ljava/lang/String;

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoLoadEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)V

    return-object v1
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "iko"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ikoVideoLoad"

    return-object v0
.end method
