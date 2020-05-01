.class public Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageEvent;
.super Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;
.source "MessageEvent.java"


# static fields
.field private static final ATTR_msgObject:Ljava/lang/String; = "msgObject"

.field private static final ATTR_pairingContext:Ljava/lang/String; = "pairingContext"

.field private static final ATTR_sid:Ljava/lang/String; = "sid"

.field private static final ATTR_transactionId:Ljava/lang/String; = "transactionId"

.field private static final ATTR_type:Ljava/lang/String; = "type"

.field public static final TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;


# instance fields
.field private msgObject:Lorg/json/JSONObject;

.field private pairingContext:Ljava/lang/String;

.field private sid:I

.field private transactionId:I

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_message:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    sput-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getMsgObject()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageEvent;->msgObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getObject()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "nrdp.mdx"

    return-object v0
.end method

.method public getPairingContext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageEvent;->pairingContext:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageEvent;->sid:I

    return v0
.end method

.method public getTransactionId()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageEvent;->transactionId:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageEvent;->type:Ljava/lang/String;

    return-object v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "pairingContext"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageEvent;->getUrlDecodedString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageEvent;->pairingContext:Ljava/lang/String;

    const-string/jumbo v0, "transactionId"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageEvent;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageEvent;->transactionId:I

    const-string/jumbo v0, "type"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageEvent;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageEvent;->type:Ljava/lang/String;

    const-string/jumbo v0, "sid"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageEvent;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageEvent;->sid:I

    const-string/jumbo v0, "msgObject"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageEvent;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageEvent;->msgObject:Lorg/json/JSONObject;

    return-void
.end method
