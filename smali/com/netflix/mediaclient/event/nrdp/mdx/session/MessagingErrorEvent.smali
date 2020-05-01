.class public Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessagingErrorEvent;
.super Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;
.source "MessagingErrorEvent.java"


# static fields
.field private static final ATTR_errorCode:Ljava/lang/String; = "errorCode"

.field private static final ATTR_pairingContext:Ljava/lang/String; = "pairingContext"

.field private static final ATTR_sid:Ljava/lang/String; = "sid"

.field private static final ATTR_transactionId:Ljava/lang/String; = "transactionId"

.field public static final TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;


# instance fields
.field private errorCode:I

.field private pairingContext:Ljava/lang/String;

.field private sid:I

.field private transactionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_messagingerror:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    sput-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessagingErrorEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessagingErrorEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessagingErrorEvent;->errorCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessagingErrorEvent;->errorCode:I

    return v0
.end method

.method public getObject()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "nrdp.mdx"

    return-object v0
.end method

.method public getPairingContext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessagingErrorEvent;->pairingContext:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessagingErrorEvent;->sid:I

    return v0
.end method

.method public getTransactionId()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessagingErrorEvent;->transactionId:I

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v2, -0x1

    const-string/jumbo v0, "pairingContext"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessagingErrorEvent;->getUrlDecodedString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessagingErrorEvent;->pairingContext:Ljava/lang/String;

    const-string/jumbo v0, "transactionId"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessagingErrorEvent;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessagingErrorEvent;->transactionId:I

    const-string/jumbo v0, "sid"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessagingErrorEvent;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessagingErrorEvent;->sid:I

    const-string/jumbo v0, "errorCode"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessagingErrorEvent;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessagingErrorEvent;->errorCode:I

    return-void
.end method
