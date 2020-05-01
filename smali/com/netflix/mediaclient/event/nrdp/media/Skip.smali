.class public Lcom/netflix/mediaclient/event/nrdp/media/Skip;
.super Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;
.source "Skip.java"


# static fields
.field private static final ATTR_ERROR:Ljava/lang/String; = "error"

.field private static final ATTR_PTS:Ljava/lang/String; = "pts"

.field public static final TYPE:Ljava/lang/String; = "skip"


# instance fields
.field private error:Z

.field private pts:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "skip"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Skip;->error:Z

    .line 40
    return-void
.end method


# virtual methods
.method public getPts()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Skip;->pts:I

    return v0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Skip;->error:Z

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    const-string/jumbo v0, "pts"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/Skip;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Skip;->pts:I

    .line 48
    const-string/jumbo v0, "error"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/Skip;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Skip;->error:Z

    .line 49
    return-void
.end method
