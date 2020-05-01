.class public Lcom/netflix/mediaclient/event/nrdp/media/StreamSelected;
.super Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;
.source "StreamSelected.java"


# static fields
.field private static final ATTR_REBUFFER:Ljava/lang/String; = "rebuffer"

.field private static final ATTR_START_PTS:Ljava/lang/String; = "startPts"

.field private static final ATTR_STREAM_INFO:Ljava/lang/String; = "streamInfo"

.field public static final TYPE:Ljava/lang/String; = "streamSelected"


# instance fields
.field private rebuffer:I

.field private startPts:I

.field private streamInfo:Lcom/netflix/mediaclient/javabridge/StreamInfo;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const-string/jumbo v0, "streamSelected"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getRebuffer()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/StreamSelected;->rebuffer:I

    return v0
.end method

.method public getStartPts()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/StreamSelected;->startPts:I

    return v0
.end method

.method public getStreamInfo()Lcom/netflix/mediaclient/javabridge/StreamInfo;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/StreamSelected;->streamInfo:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    return-object v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "startPts"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/StreamSelected;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/StreamSelected;->startPts:I

    const-string/jumbo v0, "rebuffer"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/StreamSelected;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/StreamSelected;->rebuffer:I

    const-string/jumbo v0, "streamInfo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/javabridge/StreamInfo;

    const-string/jumbo v1, "streamInfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/javabridge/StreamInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/StreamSelected;->streamInfo:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    :cond_0
    return-void
.end method
