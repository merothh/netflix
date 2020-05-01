.class public final Lcom/netflix/mediaclient/javabridge/invoke/android/ChangePlayer;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "ChangePlayer.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "changePlayer"

.field private static final PROPERTY_PLAYER_TYPE:Ljava/lang/String; = "playerType"

.field private static final TARGET:Ljava/lang/String; = "android"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/media/PlayerType;)V
    .locals 2

    .prologue
    .line 36
    const-string/jumbo v0, "android"

    const-string/jumbo v1, "changePlayer"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/invoke/android/ChangePlayer;->setArguments(Lcom/netflix/mediaclient/media/PlayerType;)V

    .line 38
    return-void
.end method

.method private setArguments(Lcom/netflix/mediaclient/media/PlayerType;)V
    .locals 3

    .prologue
    .line 45
    .line 48
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 49
    const-string/jumbo v1, "playerType"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/PlayerType;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/android/ChangePlayer;->arguments:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
