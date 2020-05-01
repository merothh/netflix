.class public final Lcom/netflix/mediaclient/javabridge/invoke/media/Play;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "Play.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "play"

.field private static final PROPERTY_TIME:Ljava/lang/String; = "ms"

.field private static final TARGET:Ljava/lang/String; = "media"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "media"

    const-string/jumbo v1, "play"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    const-string/jumbo v0, "media"

    const-string/jumbo v1, "play"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/media/Play;->setArguments(J)V

    return-void
.end method

.method private setArguments(J)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/Play;->arguments:Ljava/lang/String;
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
