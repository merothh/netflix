.class public Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;
.super Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;
.source "PairingResponseEvent.java"


# static fields
.field private static final ATTR_errorCode:Ljava/lang/String; = "errorCode"

.field private static final ATTR_errorMessage:Ljava/lang/String; = "errorMessage"

.field private static final ATTR_match:Ljava/lang/String; = "match"

.field private static final ATTR_pairingContext:Ljava/lang/String; = "pairingContext"

.field private static final ATTR_remoteDevice:Ljava/lang/String; = "remoteDevice"

.field public static final TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;


# instance fields
.field private errorCode:Ljava/lang/String;

.field private errorDesc:Ljava/lang/String;

.field private match:I

.field private pairingContext:Ljava/lang/String;

.field private remoteDevice:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_pair_pairingresponse:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    sput-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;->errorDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "nrdp.mdx"

    return-object v0
.end method

.method public getPairingContext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;->pairingContext:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteDevice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;->remoteDevice:Ljava/lang/String;

    return-object v0
.end method

.method public isMatch()Z
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;->match:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "errorCode"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;->errorCode:Ljava/lang/String;

    const-string/jumbo v0, "errorMessage"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;->errorDesc:Ljava/lang/String;

    const-string/jumbo v0, "match"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;->match:I

    const-string/jumbo v0, "pairingContext"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;->getUrlDecodedString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;->pairingContext:Ljava/lang/String;

    const-string/jumbo v0, "remoteDevice"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;->getUrlDecodedString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;->remoteDevice:Ljava/lang/String;

    return-void
.end method
