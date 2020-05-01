.class public Lcom/netflix/mediaclient/event/network/NetworkEvent;
.super Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;
.source "NetworkEvent.java"


# instance fields
.field private errorCode:I

.field private errorGroup:I

.field private result:I

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const-string/jumbo v0, "INetwork"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/event/network/NetworkEvent;->errorCode:I

    return v0
.end method

.method public getErrorGroup()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/event/network/NetworkEvent;->errorGroup:I

    return v0
.end method

.method public getObject()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "nrdp.network"

    return-object v0
.end method

.method public getResult()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/event/network/NetworkEvent;->result:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/event/network/NetworkEvent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/event/network/NetworkEvent;->url:Ljava/lang/String;

    return-object v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, "type"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/event/network/NetworkEvent;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/network/NetworkEvent;->type:Ljava/lang/String;

    const-string/jumbo v0, "result"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/network/NetworkEvent;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/network/NetworkEvent;->result:I

    const-string/jumbo v0, "errorcode"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/network/NetworkEvent;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/network/NetworkEvent;->errorCode:I

    const-string/jumbo v0, "errorgroup"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/network/NetworkEvent;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/network/NetworkEvent;->errorGroup:I

    const-string/jumbo v0, "url"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/event/network/NetworkEvent;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/network/NetworkEvent;->url:Ljava/lang/String;

    return-void
.end method
