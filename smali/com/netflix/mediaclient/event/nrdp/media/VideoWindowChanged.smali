.class public Lcom/netflix/mediaclient/event/nrdp/media/VideoWindowChanged;
.super Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;
.source "VideoWindowChanged.java"


# static fields
.field private static final ATTR_HEIGHT:Ljava/lang/String; = "height"

.field private static final ATTR_WIDTH:Ljava/lang/String; = "width"

.field private static final ATTR_X:Ljava/lang/String; = "x"

.field private static final ATTR_Y:Ljava/lang/String; = "y"

.field public static final TYPE:Ljava/lang/String; = "videoWindowChanged"


# instance fields
.field private height:I

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "videoWindowChanged"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/VideoWindowChanged;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/VideoWindowChanged;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/VideoWindowChanged;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/VideoWindowChanged;->y:I

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    const-string/jumbo v0, "x"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/VideoWindowChanged;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/VideoWindowChanged;->x:I

    .line 48
    const-string/jumbo v0, "y"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/VideoWindowChanged;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/VideoWindowChanged;->y:I

    .line 49
    const-string/jumbo v0, "width"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/VideoWindowChanged;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/VideoWindowChanged;->width:I

    .line 50
    const-string/jumbo v0, "height"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/VideoWindowChanged;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/VideoWindowChanged;->height:I

    .line 51
    return-void
.end method
