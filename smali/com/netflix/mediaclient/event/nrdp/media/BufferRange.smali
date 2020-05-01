.class public Lcom/netflix/mediaclient/event/nrdp/media/BufferRange;
.super Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;
.source "BufferRange.java"


# static fields
.field private static final ATTR_CURRENT_PTS:Ljava/lang/String; = "currentPts"

.field private static final ATTR_END_PTS:Ljava/lang/String; = "endPts"

.field private static final ATTR_START_PTS:Ljava/lang/String; = "startPts"

.field private static final ATTR_bandwidth:Ljava/lang/String; = "bandwidth"

.field private static final ATTR_rebuffer:Ljava/lang/String; = "rebuffer"

.field public static final TYPE:Ljava/lang/String; = "bufferrange"


# instance fields
.field private bandwidth:I

.field private currentPts:I

.field private endPts:I

.field private rebuffer:I

.field private startPts:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "bufferrange"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getBandwidth()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/BufferRange;->bandwidth:I

    return v0
.end method

.method public getCurrentPts()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/BufferRange;->currentPts:I

    return v0
.end method

.method public getEndPts()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/BufferRange;->endPts:I

    return v0
.end method

.method public getRebuffer()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/BufferRange;->rebuffer:I

    return v0
.end method

.method public getStartPts()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/BufferRange;->startPts:I

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    const-string/jumbo v0, "startPts"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/BufferRange;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/BufferRange;->startPts:I

    .line 50
    const-string/jumbo v0, "endPts"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/BufferRange;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/BufferRange;->endPts:I

    .line 51
    const-string/jumbo v0, "currentPts"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/BufferRange;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/BufferRange;->currentPts:I

    .line 52
    const-string/jumbo v0, "bandwidth"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/BufferRange;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/BufferRange;->bandwidth:I

    .line 53
    const-string/jumbo v0, "rebuffer"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/BufferRange;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/BufferRange;->rebuffer:I

    .line 54
    return-void
.end method
