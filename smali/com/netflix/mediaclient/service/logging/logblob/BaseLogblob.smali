.class public abstract Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;
.super Ljava/lang/Object;
.source "BaseLogblob.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/Logblob;


# static fields
.field public static final APP_ID:Ljava/lang/String; = "appid"

.field public static final CLIENT_VER:Ljava/lang/String; = "clver"

.field public static final ESN:Ljava/lang/String; = "esn"

.field public static final SESSION_ID:Ljava/lang/String; = "sessionid"

.field public static final SEV:Ljava/lang/String; = "sev"

.field public static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field protected final mClientEpoch:J

.field protected mJson:Lorg/json/JSONObject;

.field protected mSeverity:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;->mClientEpoch:J

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;->mJson:Lorg/json/JSONObject;

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->info:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;->mSeverity:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    return-void
.end method

.method private setAppId(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "appid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method private setUserSessionId(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "sessionid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method


# virtual methods
.method public getClientEpoch()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;->mClientEpoch:J

    return-wide v0
.end method

.method public getSeverity()Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;->mSeverity:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "clver"

    invoke-static {p1}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getClientVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;->getSeverity()Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "sev"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;->getSeverity()Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;->setAppId(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;->setUserSessionId(Ljava/lang/String;)V

    return-void
.end method

.method public isMandatory()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldSendNow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;->mJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
