.class public Lcom/netflix/mediaclient/javabridge/invoke/media/SetStreamingBuffer;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "SetStreamingBuffer.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "setStreamingBuffer"

.field private static final PROPERTY_maxBufferLen:Ljava/lang/String; = "maxBufferLen"

.field private static final PROPERTY_minBufferLen:Ljava/lang/String; = "minBufferLen"

.field private static final PROPERTY_powerSaving:Ljava/lang/String; = "powerSaving"

.field private static final TARGET:Ljava/lang/String; = "media"


# direct methods
.method public constructor <init>(ZII)V
    .locals 3

    const-string/jumbo v0, "media"

    const-string/jumbo v1, "setStreamingBuffer"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "powerSaving"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "maxBufferLen"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "minBufferLen"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/SetStreamingBuffer;->arguments:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
