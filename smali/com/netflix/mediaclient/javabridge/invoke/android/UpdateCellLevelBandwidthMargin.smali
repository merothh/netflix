.class public final Lcom/netflix/mediaclient/javabridge/invoke/android/UpdateCellLevelBandwidthMargin;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "UpdateCellLevelBandwidthMargin.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "updateSignalStrengths"

.field private static final PROPERTY_KBPS:Ljava/lang/String; = "downKbps"

.field private static final PROPERTY_LEVEL:Ljava/lang/String; = "level"

.field private static final TARGET:Ljava/lang/String; = "media"


# instance fields
.field private downKbps:I

.field private signalLevel:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    const-string/jumbo v0, "media"

    const-string/jumbo v1, "updateSignalStrengths"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/netflix/mediaclient/javabridge/invoke/android/UpdateCellLevelBandwidthMargin;->signalLevel:I

    iput p2, p0, Lcom/netflix/mediaclient/javabridge/invoke/android/UpdateCellLevelBandwidthMargin;->downKbps:I

    iget v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/android/UpdateCellLevelBandwidthMargin;->signalLevel:I

    iget v1, p0, Lcom/netflix/mediaclient/javabridge/invoke/android/UpdateCellLevelBandwidthMargin;->downKbps:I

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/android/UpdateCellLevelBandwidthMargin;->setArguments(II)V

    return-void
.end method

.method private setArguments(II)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "level"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "downKbps"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/android/UpdateCellLevelBandwidthMargin;->arguments:Ljava/lang/String;
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


# virtual methods
.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/android/UpdateCellLevelBandwidthMargin;->signalLevel:I

    return v0
.end method
