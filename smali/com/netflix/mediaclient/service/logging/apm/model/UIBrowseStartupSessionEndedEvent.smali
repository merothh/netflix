.class public final Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;
.source "UIBrowseStartupSessionEndedEvent.java"


# static fields
.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final SUCCESS:Ljava/lang/String; = "success"

.field private static final TAG:Ljava/lang/String; = "UIBrowseStartupSessionEndedEvent"

.field public static final TIME_TO_BROWSE_INTERACTIVE:Ljava/lang/String; = "timeToBrowseInteractive"

.field private static final UI_BROWSE_STARTUP_SESSION_NAME:Ljava/lang/String; = "uiBrowseStartup"


# instance fields
.field private error:Lcom/netflix/mediaclient/service/logging/client/model/UIError;

.field private success:Z

.field private timeToBrowseInteractive:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 3

    const-string/jumbo v0, "uiBrowseStartup"

    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;->success:Z

    iput-wide p3, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;->timeToBrowseInteractive:J

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Lorg/json/JSONObject;)V

    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;->success:Z

    const-string/jumbo v0, "data"

    invoke-static {p1, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "success"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;->success:Z

    const-string/jumbo v1, "error"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;->error:Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    const-string/jumbo v1, "timeToBrowseInteractive"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;->timeToBrowseInteractive:J

    :cond_0
    return-void
.end method


# virtual methods
.method protected getCustomData()Lorg/json/JSONObject;
    .locals 4

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->get()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "UIBrowseStartupSessionEndedEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCustomData() - adding current browse experience: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v2, "browseExperience"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method protected getData()Lorg/json/JSONObject;
    .locals 4

    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string/jumbo v1, "success"

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;->success:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "timeToBrowseInteractive"

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;->timeToBrowseInteractive:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;->error:Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "error"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;->error:Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-object v0
.end method

.method public getError()Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;->error:Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    return-object v0
.end method

.method public getTimeToBrowseInteractive()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;->timeToBrowseInteractive:J

    return-wide v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;->success:Z

    return v0
.end method

.method public setError(Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;->error:Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;->success:Z

    return-void
.end method

.method public setTimeToBrowseInteractive(J)V
    .locals 1

    iput-wide p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;->timeToBrowseInteractive:J

    return-void
.end method
