.class public Lcom/netflix/mediaclient/service/msl/client/AndroidDebugContext;
.super Ljava/lang/Object;
.source "AndroidDebugContext.java"

# interfaces
.implements Lcom/netflix/msl/msg/MessageDebugContext;


# static fields
.field private static final MASTER_TOKEN_SCHEME:Ljava/lang/String; = "MASTER_TOKEN"

.field private static final TAG:Ljava/lang/String; = "nf_msl"

.field private static final USER_ID_TOKEN_SCHEME:Ljava/lang/String; = "USER_ID_TOKEN"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private errorHeader(Ljava/lang/String;Lcom/netflix/msl/msg/ErrorHeader;)V
    .locals 4

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/msl/client/AndroidDebugContext;->marshalErrorHeaderAsJson(Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "direction"

    invoke-virtual {v0, v1, p1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nf_msl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MSL Error Header {}:\n{}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logHeader(Ljava/lang/String;Lcom/netflix/msl/msg/Header;)V
    .locals 4

    :try_start_0
    instance-of v0, p2, Lcom/netflix/msl/msg/MessageHeader;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/netflix/msl/msg/MessageHeader;

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/msl/client/AndroidDebugContext;->messageHeader(Ljava/lang/String;Lcom/netflix/msl/msg/MessageHeader;)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p2, Lcom/netflix/msl/msg/ErrorHeader;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/netflix/msl/msg/ErrorHeader;

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/msl/client/AndroidDebugContext;->errorHeader(Ljava/lang/String;Lcom/netflix/msl/msg/ErrorHeader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_msl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to marshal header in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "nf_msl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown Header type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " during "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private marshalEntityAuth(Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)V
    .locals 3

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    const-string/jumbo v1, "scheme"

    invoke-virtual {p2}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v1, "identity"

    invoke-virtual {p2}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v1, "authdata"

    invoke-virtual {p2}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getAuthData()Lcom/netflix/android/org/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v1, "entityauthdata"

    invoke-virtual {p1, v1, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;
    :try_end_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "entityauthdata"

    const-string/jumbo v1, "exception"

    invoke-virtual {p1, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v0, "entityauthdata"

    const-string/jumbo v1, "exception"

    invoke-virtual {p1, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_0
.end method

.method private marshalErrorHeaderAsJson(Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/android/org/json/JSONObject;
    .locals 4

    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    const-string/jumbo v1, "errormessage"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/ErrorHeader;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v1, "recipient"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/ErrorHeader;->getRecipient()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v1, "internalcode"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/ErrorHeader;->getInternalCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;I)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v1, "messageid"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/ErrorHeader;->getMessageId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v1, "errorcode"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/ErrorHeader;->getErrorCode()Lcom/netflix/msl/MslConstants$ResponseCode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v1, "usermessage"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/ErrorHeader;->getUserMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v1, "timestamp"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/ErrorHeader;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {p1}, Lcom/netflix/msl/msg/ErrorHeader;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidDebugContext;->marshalEntityAuth(Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)V

    return-object v0
.end method

.method private marshalHeaderAsJson(Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/android/org/json/JSONObject;
    .locals 8

    new-instance v1, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidDebugContext;->marshalEntityAuth(Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)V

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v2}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    const-string/jumbo v3, "identity"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v3, "encryptionkey"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->getEncryptionKey()Ljavax/crypto/SecretKey;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v3, "expiration"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->getExpiration()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v3, "issuerdata"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->getIssuerData()Lcom/netflix/android/org/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v3, "renewalwindow"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->getRenewalWindow()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v3, "seqnum"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->getSequenceNumber()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v3, "sigkey"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->getSignatureKey()Ljavax/crypto/SecretKey;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v3, "serialnum"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v0, "mastertokendata"

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :cond_0
    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getUserAuthenticationData()Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v0}, Lcom/netflix/msl/userauth/UserAuthenticationData;->toJSONString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "userauthdata"

    invoke-virtual {v1, v2, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v2, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v2}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    const-string/jumbo v3, "serialnumber"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/UserIdToken;->getSerialNumber()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v3, "renewalwindow"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/UserIdToken;->getRenewalWindow()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v3, "issuerdata"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/UserIdToken;->getIssuerData()Lcom/netflix/android/org/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v3, "expiration"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/UserIdToken;->getExpiration()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v3, "mastertokenserialnumber"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/UserIdToken;->getMasterTokenSerialNumber()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/UserIdToken;->getUser()Lcom/netflix/msl/tokens/MslUser;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "user"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/UserIdToken;->getUser()Lcom/netflix/msl/tokens/MslUser;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/msl/tokens/MslUser;->getEncoded()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :cond_2
    const-string/jumbo v0, "userdata"

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :cond_3
    const-string/jumbo v0, "renewable"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->isRenewable()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v0, "decrypted"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->isDecrypted()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v0, "encrypting"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->isEncrypting()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v0, "handshake"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->isHandshake()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v0, "verified"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->isVerified()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v0, "messageid"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getMessageId()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getUser()Lcom/netflix/msl/tokens/MslUser;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "user"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getUser()Lcom/netflix/msl/tokens/MslUser;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/msl/tokens/MslUser;->getEncoded()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :cond_4
    const-string/jumbo v0, "nonreplayableid"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getNonReplayableId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v0, "recipient"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getRecipient()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "messagecapabilities"

    new-instance v2, Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/msl/msg/MessageCapabilities;->toJSONString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :cond_5
    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getKeyRequestData()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v2, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v2}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/keyx/KeyRequestData;

    new-instance v4, Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v0}, Lcom/netflix/msl/keyx/KeyRequestData;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "keyrequests"

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :cond_7
    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getKeyResponseData()Lcom/netflix/msl/keyx/KeyResponseData;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string/jumbo v2, "keyresponse"

    new-instance v3, Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v0}, Lcom/netflix/msl/keyx/KeyResponseData;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :cond_8
    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getServiceTokens()Ljava/util/Set;

    move-result-object v0

    new-instance v2, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v2}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    new-instance v4, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v4}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    const-string/jumbo v5, "verified"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isVerified()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v5, "decrypted"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isDecrypted()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v5, "encrypted"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isEncrypted()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v5, "unbound"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isUnbound()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v5, "deleted"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isDeleted()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v5, "mastertokenserialnumber"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getMasterTokenSerialNumber()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v5, "name"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_9

    array-length v5, v0

    if-lez v5, :cond_9

    const-string/jumbo v5, "data"

    new-instance v6, Ljava/lang/String;

    const-string/jumbo v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v4, v5, v6}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :cond_9
    invoke-virtual {v2, v4}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto :goto_1

    :cond_a
    const-string/jumbo v0, "servicetokens"

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    return-object v1
.end method

.method private messageHeader(Ljava/lang/String;Lcom/netflix/msl/msg/MessageHeader;)V
    .locals 4

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/msl/client/AndroidDebugContext;->marshalHeaderAsJson(Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "direction"

    invoke-virtual {v0, v1, p1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nf_msl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MSL Message Header {}:\n{}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public receivedHeader(Lcom/netflix/msl/msg/Header;)V
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Receive"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidDebugContext;->logHeader(Ljava/lang/String;Lcom/netflix/msl/msg/Header;)V

    :cond_0
    return-void
.end method

.method public sentHeader(Lcom/netflix/msl/msg/Header;)V
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Sent"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidDebugContext;->logHeader(Ljava/lang/String;Lcom/netflix/msl/msg/Header;)V

    :cond_0
    return-void
.end method
