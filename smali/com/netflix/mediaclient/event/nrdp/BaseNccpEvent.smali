.class public abstract Lcom/netflix/mediaclient/event/nrdp/BaseNccpEvent;
.super Ljava/lang/Object;
.source "BaseNccpEvent.java"

# interfaces
.implements Lcom/netflix/mediaclient/event/UIEvent;


# instance fields
.field protected eventType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Event type can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/event/nrdp/BaseNccpEvent;->eventType:Ljava/lang/String;

    return-void
.end method

.method protected static getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected static getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected static getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected static getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method protected static getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getUrlDecodedString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected abstract getJSON()Ljava/lang/String;
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/BaseNccpEvent;->eventType:Ljava/lang/String;

    return-object v0
.end method
