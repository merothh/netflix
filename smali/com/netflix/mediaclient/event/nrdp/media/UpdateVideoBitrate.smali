.class public Lcom/netflix/mediaclient/event/nrdp/media/UpdateVideoBitrate;
.super Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;
.source "UpdateVideoBitrate.java"


# static fields
.field private static final ATTR_BPS:Ljava/lang/String; = "bitsPerSecond"

.field public static final TYPE:Ljava/lang/String; = "updateVideoBitrate"


# instance fields
.field private bitsPerSecond:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const-string/jumbo v0, "updateVideoBitrate"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getBitsPerSecond()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/UpdateVideoBitrate;->bitsPerSecond:I

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    const-string/jumbo v0, "bitsPerSecond"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/UpdateVideoBitrate;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/UpdateVideoBitrate;->bitsPerSecond:I

    return-void
.end method
