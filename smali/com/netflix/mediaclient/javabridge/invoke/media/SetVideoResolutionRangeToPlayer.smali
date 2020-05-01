.class public Lcom/netflix/mediaclient/javabridge/invoke/media/SetVideoResolutionRangeToPlayer;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "SetVideoResolutionRangeToPlayer.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "setVideoResolutionRange"

.field private static final PROPERTY_maxHeight:Ljava/lang/String; = "maxHeight"

.field private static final PROPERTY_maxWidth:Ljava/lang/String; = "maxWidth"

.field private static final PROPERTY_minHeight:Ljava/lang/String; = "minHeight"

.field private static final PROPERTY_minWidth:Ljava/lang/String; = "minWidth"

.field private static final TARGET:Ljava/lang/String; = "media"


# direct methods
.method public constructor <init>(IIII)V
    .locals 3

    const-string/jumbo v0, "media"

    const-string/jumbo v1, "setVideoResolutionRange"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "minWidth"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "maxWidth"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "minHeight"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "maxHeight"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/SetVideoResolutionRangeToPlayer;->arguments:Ljava/lang/String;
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
