.class public Lcom/netflix/mediaclient/javabridge/invoke/media/SetMaxCacheSize;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "SetMaxCacheSize.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "setMaxCacheSize"

.field private static final TARGET:Ljava/lang/String; = "media"


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .prologue
    .line 14
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "setMaxCacheSize"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 19
    const-string/jumbo v1, "size"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/SetMaxCacheSize;->arguments:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
