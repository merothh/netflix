.class public final Lcom/netflix/mediaclient/service/mdx/message/target/MessageIgnored;
.super Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;
.source "MessageIgnored.java"


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
    .line 25
    const-string/jumbo v0, "transactionId"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/message/target/MessageIgnored;->PROPERTY_transactionId:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "errorCode"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/message/target/MessageIgnored;->PROPERTY_errorCode:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "errorDesc"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/message/target/MessageIgnored;->PROPERTY_errorDesc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 51
    const-string/jumbo v0, "MESSAGE_IGNORED"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;-><init>(Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/message/target/MessageIgnored;->mJson:Lorg/json/JSONObject;

    .line 55
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/message/target/MessageIgnored;->PROPERTY_transactionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/MessageIgnored;->mTransactionId:Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/message/target/MessageIgnored;->PROPERTY_errorCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/MessageIgnored;->mErrorCode:Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/message/target/MessageIgnored;->PROPERTY_errorDesc:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/MessageIgnored;->mErrorDesc:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/MessageIgnored;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/MessageIgnored;->mErrorDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/MessageIgnored;->mTransactionId:Ljava/lang/String;

    return-object v0
.end method
