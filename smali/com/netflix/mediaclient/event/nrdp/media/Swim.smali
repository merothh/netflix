.class public Lcom/netflix/mediaclient/event/nrdp/media/Swim;
.super Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;
.source "Swim.java"


# static fields
.field private static final ATTR_CURRENT_PTS:Ljava/lang/String; = "currentPts"

.field private static final ATTR_END_PTS:Ljava/lang/String; = "endPts"

.field private static final ATTR_ERROR:Ljava/lang/String; = "error"

.field private static final ATTR_PTS:Ljava/lang/String; = "pts"

.field private static final ATTR_START_PTS:Ljava/lang/String; = "startPts"

.field public static final TYPE:Ljava/lang/String; = "swim"


# instance fields
.field private currentPts:I

.field private endPts:I

.field private error:Z

.field private pts:I

.field private startPts:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "swim"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Swim;->error:Z

    .line 45
    return-void
.end method


# virtual methods
.method public getCurrentPts()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Swim;->currentPts:I

    return v0
.end method

.method public getEndPts()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Swim;->endPts:I

    return v0
.end method

.method public getPts()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Swim;->pts:I

    return v0
.end method

.method public getStartPts()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Swim;->startPts:I

    return v0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Swim;->error:Z

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    const-string/jumbo v0, "startPts"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/Swim;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Swim;->startPts:I

    .line 53
    const-string/jumbo v0, "endPts"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/Swim;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Swim;->endPts:I

    .line 54
    const-string/jumbo v0, "currentPts"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/Swim;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Swim;->currentPts:I

    .line 55
    const-string/jumbo v0, "pts"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/Swim;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Swim;->pts:I

    .line 56
    const-string/jumbo v0, "error"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/Swim;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Swim;->error:Z

    .line 57
    return-void
.end method
