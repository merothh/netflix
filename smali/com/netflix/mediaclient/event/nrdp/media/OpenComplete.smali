.class public Lcom/netflix/mediaclient/event/nrdp/media/OpenComplete;
.super Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;
.source "OpenComplete.java"


# static fields
.field private static final ATTR_SESSIONID:Ljava/lang/String; = "sessionid"

.field private static final ATTR_WATERMARK:Ljava/lang/String; = "watermark"

.field public static final TYPE:Ljava/lang/String; = "openComplete"


# instance fields
.field private sessionId:Ljava/lang/String;

.field private watermark:Lcom/netflix/mediaclient/media/Watermark;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const-string/jumbo v0, "openComplete"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/OpenComplete;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getWatermark()Lcom/netflix/mediaclient/media/Watermark;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/OpenComplete;->watermark:Lcom/netflix/mediaclient/media/Watermark;

    return-object v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    const-string/jumbo v0, "sessionid"

    const-string/jumbo v1, ""

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/OpenComplete;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/OpenComplete;->sessionId:Ljava/lang/String;

    const-string/jumbo v0, "watermark"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/media/Watermark;->createWatermark(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/Watermark;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/OpenComplete;->watermark:Lcom/netflix/mediaclient/media/Watermark;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OpenComplete{sessionId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/media/OpenComplete;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", watermark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/media/OpenComplete;->watermark:Lcom/netflix/mediaclient/media/Watermark;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
