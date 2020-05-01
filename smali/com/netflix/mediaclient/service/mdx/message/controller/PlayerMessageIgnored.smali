.class public final Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerMessageIgnored;
.super Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;
.source "PlayerMessageIgnored.java"


# static fields
.field private static PROPERTY_errorCode:Ljava/lang/String;

.field private static PROPERTY_errorDesc:Ljava/lang/String;

.field private static PROPERTY_transactionId:Ljava/lang/String;


# instance fields
.field private mErrorCode:Ljava/lang/String;

.field private mErrorDesc:Ljava/lang/String;

.field private mTransactionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string/jumbo v0, "transactionId"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerMessageIgnored;->PROPERTY_transactionId:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, "errorCode"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerMessageIgnored;->PROPERTY_errorCode:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, "errorDesc"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerMessageIgnored;->PROPERTY_errorDesc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "MESSAGE_IGNORED"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerMessageIgnored;->mTransactionId:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerMessageIgnored;->mErrorCode:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerMessageIgnored;->mErrorDesc:Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerMessageIgnored;->createObj()V

    .line 35
    return-void
.end method

.method private createObj()V
    .locals 4

    .prologue
    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerMessageIgnored;->mJson:Lorg/json/JSONObject;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerMessageIgnored;->PROPERTY_transactionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerMessageIgnored;->mTransactionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerMessageIgnored;->mJson:Lorg/json/JSONObject;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerMessageIgnored;->PROPERTY_errorCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerMessageIgnored;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerMessageIgnored;->mJson:Lorg/json/JSONObject;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerMessageIgnored;->PROPERTY_errorDesc:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerMessageIgnored;->mErrorDesc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string/jumbo v1, "nf_mdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerMessageIgnored;->messageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " createObj failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
