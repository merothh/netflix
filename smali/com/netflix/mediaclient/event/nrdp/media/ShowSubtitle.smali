.class public Lcom/netflix/mediaclient/event/nrdp/media/ShowSubtitle;
.super Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;
.source "ShowSubtitle.java"


# static fields
.field private static final ATTR_REMOVE_SUBTITLE:Ljava/lang/String; = "subtitleID"

.field private static final ATTR_RESERVED:Ljava/lang/String; = "reserved"

.field private static final ATTR_TEXT:Ljava/lang/String; = "text"

.field public static final TYPE:Ljava/lang/String; = "showSubtitle"


# instance fields
.field private reserved:I

.field private subtitleID:I

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "showSubtitle"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getReserved()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/ShowSubtitle;->reserved:I

    return v0
.end method

.method public getSubtitleID()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/ShowSubtitle;->subtitleID:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/ShowSubtitle;->text:Ljava/lang/String;

    return-object v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 45
    const-string/jumbo v0, "subtitleID"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/ShowSubtitle;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/ShowSubtitle;->subtitleID:I

    .line 46
    const-string/jumbo v0, "reserved"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/ShowSubtitle;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/ShowSubtitle;->reserved:I

    .line 47
    const-string/jumbo v0, "text"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/ShowSubtitle;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/ShowSubtitle;->text:Ljava/lang/String;

    .line 48
    return-void
.end method
