.class public Lcom/netflix/mediaclient/javabridge/invoke/media/SetVideoOutputMode;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "SetVideoOutputMode.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "setVideoOutputMode"

.field private static final PROPERTY_mode:Ljava/lang/String; = "mode"

.field private static final TARGET:Ljava/lang/String; = "media"


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .prologue
    .line 33
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "setVideoOutputMode"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/invoke/media/SetVideoOutputMode;->setArguments(Z)V

    .line 35
    return-void
.end method

.method private setArguments(Z)V
    .locals 3

    .prologue
    .line 42
    .line 45
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 46
    const-string/jumbo v2, "mode"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "internal"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/SetVideoOutputMode;->arguments:Ljava/lang/String;

    .line 52
    :goto_1
    return-void

    .line 46
    :cond_0
    const-string/jumbo v0, "external"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
