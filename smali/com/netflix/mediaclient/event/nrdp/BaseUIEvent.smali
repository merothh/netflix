.class public abstract Lcom/netflix/mediaclient/event/nrdp/BaseUIEvent;
.super Lcom/netflix/mediaclient/event/nrdp/BaseNccpEvent;
.source "BaseUIEvent.java"


# static fields
.field public static final DATA:Ljava/lang/String; = "data"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NAME_IMC:Ljava/lang/String; = "IMediaControl"

.field public static final NRDP:Ljava/lang/String; = "nrdp"

.field public static final OBJECT:Ljava/lang/String; = "object"

.field protected static final TAG:Ljava/lang/String; = "nf_ui_event"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_EVENT:Ljava/lang/String; = "Event"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/event/nrdp/BaseNccpEvent;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getJSON()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v1, "name"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/event/nrdp/BaseUIEvent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "Event"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "object"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/event/nrdp/BaseUIEvent;->getObject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "nrdp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/event/nrdp/BaseUIEvent;->getData()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "data"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/event/nrdp/BaseUIEvent;->getData()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_2
    const-string/jumbo v1, "data"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    const-string/jumbo v2, "nf_ui_event"

    const-string/jumbo v3, "Failed to create"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/event/nrdp/BaseUIEvent;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNrdSource()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
