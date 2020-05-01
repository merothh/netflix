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

    const-string/jumbo v0, "showSubtitle"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getReserved()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/ShowSubtitle;->reserved:I

    return v0
.end method

.method public getSubtitleID()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/ShowSubtitle;->subtitleID:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/ShowSubtitle;->text:Ljava/lang/String;

    return-object v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v1, -0x1

    const-string/jumbo v0, "subtitleID"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/ShowSubtitle;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/ShowSubtitle;->subtitleID:I

    const-string/jumbo v0, "reserved"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/ShowSubtitle;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/ShowSubtitle;->reserved:I

    const-string/jumbo v0, "text"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/ShowSubtitle;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/ShowSubtitle;->text:Ljava/lang/String;

    return-void
.end method
