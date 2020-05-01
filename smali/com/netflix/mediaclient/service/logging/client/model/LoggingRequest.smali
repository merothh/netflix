.class public Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;
.super Ljava/lang/Object;
.source "LoggingRequest.java"


# static fields
.field public static final APP_NAME:Ljava/lang/String; = "appName"

.field public static final DEVICE:Ljava/lang/String; = "device"

.field public static final EVENTS:Ljava/lang/String; = "events"

.field public static final LOCALE:Ljava/lang/String; = "locale"

.field public static final NETFLIX_ID:Ljava/lang/String; = "netflixId"

.field public static final TIME:Ljava/lang/String; = "time"

.field public static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field private appName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appName"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private device:Lcom/netflix/mediaclient/service/logging/client/model/Device;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private events:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "events"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/client/model/Event;",
            ">;"
        }
    .end annotation
.end field

.field private locale:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locale"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private netflixId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "netflixId"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private time:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private version:Lcom/netflix/mediaclient/service/logging/client/model/Version;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "android"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->appName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->time:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->events:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "android"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->appName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->time:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->events:Ljava/util/List;

    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/Version;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/Version;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->version:Lcom/netflix/mediaclient/service/logging/client/model/Version;

    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/Device;

    invoke-direct {v0, p2}, Lcom/netflix/mediaclient/service/logging/client/model/Device;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->device:Lcom/netflix/mediaclient/service/logging/client/model/Device;

    invoke-interface {p3}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getUserCredentialRegistry()Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getNetflixID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->netflixId:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->locale:Ljava/lang/String;

    return-void
.end method

.method public static createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;-><init>()V

    const-string/jumbo v2, "time"

    const-wide/16 v4, 0x0

    invoke-static {p0, v2, v4, v5}, Lcom/netflix/mediaclient/util/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->time:J

    const-string/jumbo v2, "netflixId"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->netflixId:Ljava/lang/String;

    const-string/jumbo v2, "locale"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->locale:Ljava/lang/String;

    const-string/jumbo v2, "version"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/Version;->createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/Version;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->version:Lcom/netflix/mediaclient/service/logging/client/model/Version;

    const-string/jumbo v2, "device"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/Device;->createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/Device;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->device:Lcom/netflix/mediaclient/service/logging/client/model/Device;

    const-string/jumbo v0, "events"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->createEvent(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/Event;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, v1, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->events:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addAllEvent(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/client/model/Event;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->events:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->events:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Lcom/netflix/mediaclient/service/logging/client/model/Device;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->device:Lcom/netflix/mediaclient/service/logging/client/model/Device;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getNetflixId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->netflixId:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->time:J

    return-wide v0
.end method

.method public getVersion()Lcom/netflix/mediaclient/service/logging/client/model/Version;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->version:Lcom/netflix/mediaclient/service/logging/client/model/Version;

    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "appName"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->appName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->version:Lcom/netflix/mediaclient/service/logging/client/model/Version;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "version"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->version:Lcom/netflix/mediaclient/service/logging/client/model/Version;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/Version;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->device:Lcom/netflix/mediaclient/service/logging/client/model/Device;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "device"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->device:Lcom/netflix/mediaclient/service/logging/client/model/Device;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/Device;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string/jumbo v0, "time"

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->time:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->netflixId:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "netflixId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->netflixId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->locale:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "locale"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->locale:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->events:Ljava/util/List;

    if-eqz v0, :cond_4

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v0, "events"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/client/model/Event;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_4
    return-object v1
.end method
