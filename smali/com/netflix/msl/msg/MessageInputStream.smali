.class public Lcom/netflix/msl/msg/MessageInputStream;
.super Ljava/io/InputStream;
.source "MessageInputStream.java"


# instance fields
.field private closeSource:Z

.field private final cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

.field private currentPayload:Ljava/io/ByteArrayInputStream;

.field private eom:Z

.field private handshake:Ljava/lang/Boolean;

.field private final header:Lcom/netflix/msl/msg/Header;

.field private final keyxCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

.field private payloadIterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<",
            "Ljava/io/ByteArrayInputStream;",
            ">;"
        }
    .end annotation
.end field

.field private payloadSequenceNumber:J

.field private final payloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/ByteArrayInputStream;",
            ">;"
        }
    .end annotation
.end field

.field private readException:Ljava/io/IOException;

.field private final source:Ljava/io/InputStream;

.field private final tokener:Lcom/netflix/android/org/json/JSONTokener;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/util/Set;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/keyx/KeyRequestData;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/crypto/ICryptoContext;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadSequenceNumber:J

    iput-boolean v3, p0, Lcom/netflix/msl/msg/MessageInputStream;->eom:Z

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->handshake:Ljava/lang/Boolean;

    iput-boolean v3, p0, Lcom/netflix/msl/msg/MessageInputStream;->closeSource:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloads:Ljava/util/List;

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadIterator:Ljava/util/ListIterator;

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->readException:Ljava/io/IOException;

    iput-object p2, p0, Lcom/netflix/msl/msg/MessageInputStream;->source:Ljava/io/InputStream;

    new-instance v0, Lcom/netflix/android/org/json/JSONTokener;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lcom/netflix/android/org/json/JSONTokener;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->tokener:Lcom/netflix/android/org/json/JSONTokener;

    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->tokener:Lcom/netflix/android/org/json/JSONTokener;

    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONTokener;->more()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lcom/netflix/msl/MslError;->MESSAGE_DATA_MISSING:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "header"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->tokener:Lcom/netflix/android/org/json/JSONTokener;

    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/netflix/android/org/json/JSONObject;

    if-nez v1, :cond_1

    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lcom/netflix/msl/MslError;->MESSAGE_FORMAT_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0

    :cond_1
    check-cast v0, Lcom/netflix/android/org/json/JSONObject;
    :try_end_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {p1, v0, p5}, Lcom/netflix/msl/msg/Header;->parseHeader(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;Ljava/util/Map;)Lcom/netflix/msl/msg/Header;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->header:Lcom/netflix/msl/msg/Header;

    :try_start_2
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->header:Lcom/netflix/msl/msg/Header;

    instance-of v0, v0, Lcom/netflix/msl/msg/ErrorHeader;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->keyxCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->header:Lcom/netflix/msl/msg/Header;

    check-cast v0, Lcom/netflix/msl/msg/MessageHeader;

    invoke-static {p1, v0, p4}, Lcom/netflix/msl/msg/MessageInputStream;->getKeyxCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageHeader;Ljava/util/Set;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->keyxCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->keyxCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    if-nez v1, :cond_6

    :cond_4
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    :goto_0
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->isHandshake()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->isRenewable()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getKeyRequestData()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    new-instance v1, Lcom/netflix/msl/MslMessageException;

    sget-object v2, Lcom/netflix/msl/MslError;->HANDSHAKE_DATA_MISSING:Lcom/netflix/msl/MslError;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Lcom/netflix/msl/MslException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->header:Lcom/netflix/msl/msg/Header;

    instance-of v0, v0, Lcom/netflix/msl/msg/MessageHeader;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->header:Lcom/netflix/msl/msg/Header;

    check-cast v0, Lcom/netflix/msl/msg/MessageHeader;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/msl/MslException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslException;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/msl/MslException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getUserAuthenticationData()Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/msl/MslException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getMessageId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/netflix/msl/MslException;->setMessageId(J)Lcom/netflix/msl/MslException;

    :goto_1
    throw v1

    :cond_6
    :try_start_3
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->keyxCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Lcom/netflix/msl/tokens/MasterToken;->isVerified()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_8
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/netflix/msl/tokens/TokenFactory;->isMasterTokenRevoked(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslError;

    move-result-object v3

    if-eqz v3, :cond_9

    new-instance v0, Lcom/netflix/msl/MslMasterTokenException;

    invoke-direct {v0, v3, v1}, Lcom/netflix/msl/MslMasterTokenException;-><init>(Lcom/netflix/msl/MslError;Lcom/netflix/msl/tokens/MasterToken;)V

    throw v0

    :cond_9
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-interface {v2, p1, v1, v3}, Lcom/netflix/msl/tokens/TokenFactory;->isUserIdTokenRevoked(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslError;

    move-result-object v4

    if-eqz v4, :cond_a

    new-instance v0, Lcom/netflix/msl/MslUserIdTokenException;

    invoke-direct {v0, v4, v3}, Lcom/netflix/msl/MslUserIdTokenException;-><init>(Lcom/netflix/msl/MslError;Lcom/netflix/msl/tokens/UserIdToken;)V

    throw v0

    :cond_a
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/netflix/msl/tokens/MasterToken;->isExpired(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->isRenewable()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getKeyRequestData()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    new-instance v1, Lcom/netflix/msl/MslMessageException;

    sget-object v2, Lcom/netflix/msl/MslError;->MESSAGE_EXPIRED:Lcom/netflix/msl/MslError;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v1

    :cond_c
    invoke-interface {v2, p1, v1}, Lcom/netflix/msl/tokens/TokenFactory;->isMasterTokenRenewable(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslError;

    move-result-object v2

    if-eqz v2, :cond_d

    new-instance v0, Lcom/netflix/msl/MslMessageException;

    const-string/jumbo v1, "Master token is expired and not renewable."

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getNonReplayableId()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_e

    new-instance v1, Lcom/netflix/msl/MslMessageException;

    sget-object v2, Lcom/netflix/msl/MslError;->INCOMPLETE_NONREPLAYABLE_MESSAGE:Lcom/netflix/msl/MslError;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v1

    :cond_e
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v3, p1, v1, v4, v5}, Lcom/netflix/msl/tokens/TokenFactory;->acceptNonReplayableId(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;J)Lcom/netflix/msl/MslError;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/netflix/msl/MslMessageException;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Lcom/netflix/msl/MslException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_f
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->header:Lcom/netflix/msl/msg/Header;

    check-cast v0, Lcom/netflix/msl/msg/ErrorHeader;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/ErrorHeader;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/msl/MslException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslException;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/ErrorHeader;->getMessageId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/netflix/msl/MslException;->setMessageId(J)Lcom/netflix/msl/MslException;

    goto/16 :goto_1
.end method

.method private static getKeyxCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageHeader;Ljava/util/Set;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Lcom/netflix/msl/msg/MessageHeader;",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/keyx/KeyRequestData;",
            ">;)",
            "Lcom/netflix/msl/crypto/ICryptoContext;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getKeyResponseData()Lcom/netflix/msl/keyx/KeyResponseData;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v3}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->isDecrypted()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v1, Lcom/netflix/msl/crypto/SessionCryptoContext;

    invoke-direct {v1, p0, v0}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/netflix/msl/keyx/KeyResponseData;->getKeyExchangeScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/netflix/msl/util/MslContext;->getKeyExchangeFactory(Lcom/netflix/msl/keyx/KeyExchangeScheme;)Lcom/netflix/msl/keyx/KeyExchangeFactory;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->KEYX_FACTORY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-virtual {v4}, Lcom/netflix/msl/keyx/KeyExchangeScheme;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/keyx/KeyRequestData;

    invoke-virtual {v0}, Lcom/netflix/msl/keyx/KeyRequestData;->getKeyExchangeScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/netflix/msl/keyx/KeyExchangeScheme;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :try_start_0
    invoke-virtual {v5, p0, v0, v3, v2}, Lcom/netflix/msl/keyx/KeyExchangeFactory;->getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;
    :try_end_0
    .catch Lcom/netflix/msl/MslKeyExchangeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/msl/MslMasterTokenException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    throw v0

    :catch_1
    move-exception v0

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    throw v0

    :catch_2
    move-exception v0

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    throw v0

    :catch_3
    move-exception v0

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    throw v0

    :cond_4
    move-object v1, v0

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_a

    instance-of v0, v1, Lcom/netflix/msl/MslKeyExchangeException;

    if-eqz v0, :cond_6

    move-object v0, v1

    check-cast v0, Lcom/netflix/msl/MslKeyExchangeException;

    throw v0

    :cond_6
    instance-of v0, v1, Lcom/netflix/msl/MslEncodingException;

    if-eqz v0, :cond_7

    check-cast v1, Lcom/netflix/msl/MslEncodingException;

    throw v1

    :cond_7
    instance-of v0, v1, Lcom/netflix/msl/MslMasterTokenException;

    if-eqz v0, :cond_8

    check-cast v1, Lcom/netflix/msl/MslMasterTokenException;

    throw v1

    :cond_8
    instance-of v0, v1, Lcom/netflix/msl/MslEntityAuthException;

    if-eqz v0, :cond_9

    check-cast v1, Lcom/netflix/msl/MslEntityAuthException;

    throw v1

    :cond_9
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unexpected exception caught during key exchange."

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->KEYX_RESPONSE_REQUEST_MISMATCH:Lcom/netflix/msl/MslError;

    invoke-interface {p2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 3

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloads:Ljava/util/List;

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloads:Ljava/util/List;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->closeSource:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->source:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->isHandshake()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->nextData()Ljava/io/ByteArrayInputStream;
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public closeSource(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/msl/msg/MessageInputStream;->closeSource:Z

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->header:Lcom/netflix/msl/msg/Header;

    instance-of v0, v0, Lcom/netflix/msl/msg/ErrorHeader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->header:Lcom/netflix/msl/msg/Header;

    check-cast v0, Lcom/netflix/msl/msg/ErrorHeader;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/msl/tokens/MasterToken;->getIdentity()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/msl/msg/ErrorHeader;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getKeyExchangeCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->keyxCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    return-object v0
.end method

.method public getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->header:Lcom/netflix/msl/msg/Header;

    instance-of v0, v0, Lcom/netflix/msl/msg/MessageHeader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->header:Lcom/netflix/msl/msg/Header;

    check-cast v0, Lcom/netflix/msl/msg/MessageHeader;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPayloadCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    return-object v0
.end method

.method public getUser()Lcom/netflix/msl/tokens/MslUser;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getUser()Lcom/netflix/msl/tokens/MslUser;

    move-result-object v0

    goto :goto_0
.end method

.method public isHandshake()Z
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->isHandshake()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->handshake:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->nextData()Ljava/io/ByteArrayInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->handshake:Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->handshake:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Error reading the payload chunk."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->readException:Ljava/io/IOException;

    throw v0
.end method

.method public mark(I)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadIterator:Ljava/util/ListIterator;

    :goto_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloads:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloads:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadIterator:Ljava/util/ListIterator;

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayInputStream;

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    :goto_1
    return-void

    :cond_1
    iput-object v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadIterator:Ljava/util/ListIterator;

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected nextData()Ljava/io/ByteArrayInputStream;
    .locals 12

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Read attempted with error message."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v3, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadIterator:Ljava/util/ListIterator;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadIterator:Ljava/util/ListIterator;

    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayInputStream;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->nextJsonObject()Lcom/netflix/android/org/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    new-instance v4, Lcom/netflix/msl/msg/PayloadChunk;

    iget-object v5, p0, Lcom/netflix/msl/msg/MessageInputStream;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-direct {v4, v3, v5}, Lcom/netflix/msl/msg/PayloadChunk;-><init>(Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/crypto/ICryptoContext;)V

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v5

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v6

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getUserAuthenticationData()Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v7

    invoke-virtual {v4}, Lcom/netflix/msl/msg/PayloadChunk;->getMessageId()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getMessageId()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    new-instance v1, Lcom/netflix/msl/MslMessageException;

    sget-object v2, Lcom/netflix/msl/MslError;->PAYLOAD_MESSAGE_ID_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "payload mid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/netflix/msl/msg/PayloadChunk;->getMessageId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " header mid "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getMessageId()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/netflix/msl/MslMessageException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/netflix/msl/MslMessageException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/netflix/msl/MslMessageException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/netflix/msl/MslMessageException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0

    :cond_3
    invoke-virtual {v4}, Lcom/netflix/msl/msg/PayloadChunk;->getSequenceNumber()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadSequenceNumber:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v1, Lcom/netflix/msl/MslError;->PAYLOAD_SEQUENCE_NUMBER_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "payload seqno "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/netflix/msl/msg/PayloadChunk;->getSequenceNumber()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " expected seqno "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v8, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadSequenceNumber:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/netflix/msl/MslMessageException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/netflix/msl/MslMessageException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/netflix/msl/MslMessageException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/netflix/msl/MslMessageException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0

    :cond_4
    iget-wide v6, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadSequenceNumber:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadSequenceNumber:J

    iget-object v3, p0, Lcom/netflix/msl/msg/MessageInputStream;->handshake:Ljava/lang/Boolean;

    if-nez v3, :cond_5

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->isRenewable()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getKeyRequestData()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v4}, Lcom/netflix/msl/msg/PayloadChunk;->isEndOfMessage()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v4}, Lcom/netflix/msl/msg/PayloadChunk;->getData()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->handshake:Ljava/lang/Boolean;

    :cond_5
    invoke-virtual {v4}, Lcom/netflix/msl/msg/PayloadChunk;->isEndOfMessage()Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->eom:Z

    :cond_6
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Lcom/netflix/msl/msg/PayloadChunk;->getData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloads:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadIterator:Ljava/util/ListIterator;

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected nextJsonObject()Lcom/netflix/android/org/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Read attempted with error message."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->eom:Z

    if-eqz v1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->tokener:Lcom/netflix/android/org/json/JSONTokener;

    invoke-virtual {v1}, Lcom/netflix/android/org/json/JSONTokener;->more()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->eom:Z
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "payloadchunk"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->tokener:Lcom/netflix/android/org/json/JSONTokener;

    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/netflix/android/org/json/JSONObject;

    if-nez v1, :cond_3

    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lcom/netflix/msl/MslError;->MESSAGE_FORMAT_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0

    :cond_3
    check-cast v0, Lcom/netflix/android/org/json/JSONObject;
    :try_end_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public read()I
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Lcom/netflix/msl/msg/MessageInputStream;->read([B)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    aget-byte v0, v1, v0

    goto :goto_0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/msl/msg/MessageInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5

    const/4 v2, 0x0

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->readException:Ljava/io/IOException;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->readException:Ljava/io/IOException;

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->readException:Ljava/io/IOException;

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->isHandshake()Z
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->readException:Ljava/io/IOException;

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Error reading the payload chunk."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    if-ge v1, p3, :cond_6

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    add-int v3, p2, v1

    sub-int v4, p3, v1

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v2

    :goto_2
    if-eq v2, v0, :cond_5

    add-int/2addr v1, v2

    goto :goto_1

    :cond_4
    move v2, v0

    goto :goto_2

    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->nextData()Ljava/io/ByteArrayInputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;
    :try_end_1
    .catch Lcom/netflix/msl/MslException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_3

    :cond_6
    if-nez v1, :cond_7

    if-gtz p3, :cond_1

    :cond_7
    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Error reading the payload chunk."

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-lez v1, :cond_8

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->readException:Ljava/io/IOException;

    move v0, v1

    goto :goto_0

    :cond_8
    throw v2
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadIterator:Ljava/util/ListIterator;

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayInputStream;

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    goto :goto_1
.end method

.method public skip(J)J
    .locals 9

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    move v4, v0

    :cond_0
    :goto_0
    int-to-long v0, v4

    cmp-long v0, v0, p1

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    int-to-long v6, v4

    sub-long v6, p1, v6

    invoke-virtual {v0, v6, v7}, Ljava/io/ByteArrayInputStream;->skip(J)J

    move-result-wide v0

    :goto_1
    cmp-long v5, v0, v2

    if-eqz v5, :cond_2

    int-to-long v4, v4

    add-long/2addr v0, v4

    long-to-int v0, v0

    move v4, v0

    goto :goto_0

    :cond_1
    move-wide v0, v2

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->nextData()Ljava/io/ByteArrayInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;
    :try_end_0
    .catch Lcom/netflix/msl/MslInternalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    :cond_3
    int-to-long v0, v4

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Cannot skip data off an error message."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Error skipping in the payload chunk."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
