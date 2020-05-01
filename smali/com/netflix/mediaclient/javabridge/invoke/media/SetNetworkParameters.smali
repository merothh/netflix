.class public Lcom/netflix/mediaclient/javabridge/invoke/media/SetNetworkParameters;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "SetNetworkParameters.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "setNetworkParameters"

.field private static final PROPERTY_carrier:Ljava/lang/String; = "carrier"

.field private static final PROPERTY_countryCode:Ljava/lang/String; = "countryCode"

.field private static final PROPERTY_lastBytesReceived:Ljava/lang/String; = "lastBytesReceived"

.field private static final PROPERTY_networkCode:Ljava/lang/String; = "networkCode"

.field private static final PROPERTY_networkSpec:Ljava/lang/String; = "networkSpec"

.field private static final PROPERTY_networkType:Ljava/lang/String; = "networkType"

.field private static final TARGET:Ljava/lang/String; = "media"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 40
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "setNetworkParameters"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-direct/range {p0 .. p6}, Lcom/netflix/mediaclient/javabridge/invoke/media/SetNetworkParameters;->setArguments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    return-void
.end method

.method private setArguments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 49
    .line 52
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 53
    const-string/jumbo v1, "carrier"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string/jumbo v1, "countryCode"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string/jumbo v1, "networkCode"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string/jumbo v1, "networkType"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string/jumbo v1, "networkSpec"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string/jumbo v1, "lastBytesReceived"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/SetNetworkParameters;->arguments:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
