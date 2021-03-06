.class public Lcom/netflix/mediaclient/javabridge/StreamInfo;
.super Ljava/lang/Object;
.source "StreamInfo.java"


# static fields
.field public static final AUDIO_STREAM:I = 0x0

.field public static final TIMEDTEXT_STREAM:I = 0x2

.field public static final UNKNOWN_STREAM:I = -0x1

.field public static final VIDEO_STREAM:I = 0x1


# instance fields
.field private bitsPerSecond:I

.field private displayAspectRatioX:I

.field private displayAspectRatioY:I

.field private frameHeight:I

.field private frameWidth:I

.field private isHighDefinition:Z

.field private isSuperHighDefinition:Z

.field private streamType:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "JSON is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/StreamInfo;->populate(Lorg/json/JSONObject;)V

    return-void
.end method

.method private populate(Lorg/json/JSONObject;)V
    .locals 1

    const-string/jumbo v0, "streamType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "streamType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/StreamInfo;->streamType:I

    :cond_0
    const-string/jumbo v0, "bitsPerSecond"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "bitsPerSecond"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/StreamInfo;->bitsPerSecond:I

    :cond_1
    const-string/jumbo v0, "isHighDefinition"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "isHighDefinition"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/javabridge/StreamInfo;->isHighDefinition:Z

    :cond_2
    const-string/jumbo v0, "isSuperHighDefinition"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "isSuperHighDefinition"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/javabridge/StreamInfo;->isSuperHighDefinition:Z

    :cond_3
    const-string/jumbo v0, "frameWidth"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "frameWidth"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/StreamInfo;->frameWidth:I

    :cond_4
    const-string/jumbo v0, "frameHeight"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "frameHeight"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/StreamInfo;->frameHeight:I

    :cond_5
    const-string/jumbo v0, "displayAspectRatioX"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "displayAspectRatioX"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/StreamInfo;->displayAspectRatioX:I

    :cond_6
    const-string/jumbo v0, "displayAspectRatioY"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "displayAspectRatioY"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/StreamInfo;->displayAspectRatioY:I

    :cond_7
    return-void
.end method


# virtual methods
.method public getBitsPerSecond()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/javabridge/StreamInfo;->bitsPerSecond:I

    return v0
.end method

.method public getDisplayAspectRatioX()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/javabridge/StreamInfo;->displayAspectRatioX:I

    return v0
.end method

.method public getDisplayAspectRatioY()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/javabridge/StreamInfo;->displayAspectRatioY:I

    return v0
.end method

.method public getFrameHeight()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/javabridge/StreamInfo;->frameHeight:I

    return v0
.end method

.method public getFrameWidth()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/javabridge/StreamInfo;->frameWidth:I

    return v0
.end method

.method public getStreamType()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/javabridge/StreamInfo;->streamType:I

    return v0
.end method

.method public isHighDefinition()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/javabridge/StreamInfo;->isHighDefinition:Z

    return v0
.end method

.method public isSuperHighDefinition()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/javabridge/StreamInfo;->isSuperHighDefinition:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StreamInfo [streamType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/javabridge/StreamInfo;->streamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bitsPerSecond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/javabridge/StreamInfo;->bitsPerSecond:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isHighDefinition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/javabridge/StreamInfo;->isHighDefinition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isSuperHighDefinition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/javabridge/StreamInfo;->isSuperHighDefinition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", frameWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/javabridge/StreamInfo;->frameWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", frameHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/javabridge/StreamInfo;->frameHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", displayAspectRatioX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/javabridge/StreamInfo;->displayAspectRatioX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", displayAspectRatioY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/javabridge/StreamInfo;->displayAspectRatioY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
