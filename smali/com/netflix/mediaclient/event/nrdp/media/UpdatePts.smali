.class public Lcom/netflix/mediaclient/event/nrdp/media/UpdatePts;
.super Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;
.source "UpdatePts.java"


# static fields
.field private static final ATTR_PTS:Ljava/lang/String; = "pts"

.field public static final TYPE:Ljava/lang/String; = "updatePts"


# instance fields
.field private pts:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "updatePts"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getPts()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/UpdatePts;->pts:I

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 41
    const-string/jumbo v0, "pts"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/UpdatePts;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/UpdatePts;->pts:I

    .line 42
    return-void
.end method
