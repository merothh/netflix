.class public Lcom/netflix/msl/keyx/SymmetricWrappedExchange;
.super Lcom/netflix/msl/keyx/KeyExchangeFactory;
.source "SymmetricWrappedExchange.java"


# instance fields
.field private final authutils:Lcom/netflix/msl/util/AuthenticationUtils;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/AuthenticationUtils;)V
    .locals 1

    .prologue
    .line 343
    sget-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->SYMMETRIC_WRAPPED:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/keyx/KeyExchangeFactory;-><init>(Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 344
    iput-object p1, p0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    .line 345
    return-void
.end method

.method private static createCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;Lcom/netflix/msl/tokens/MasterToken;Ljava/lang/String;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 3

    .prologue
    .line 304
    sget-object v0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$1;->$SwitchMap$com$netflix$msl$keyx$SymmetricWrappedExchange$KeyId:[I

    invoke-virtual {p1}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 333
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNSUPPORTED_KEYX_KEY_ID:Lcom/netflix/msl/MslError;

    invoke-virtual {p1}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 308
    :pswitch_0
    if-nez p2, :cond_0

    .line 309
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->KEYX_MASTER_TOKEN_MISSING:Lcom/netflix/msl/MslError;

    invoke-virtual {p1}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/netflix/msl/util/MslStore;->getCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_1

    .line 330
    :goto_0
    return-object v0

    .line 319
    :cond_1
    invoke-virtual {p2}, Lcom/netflix/msl/tokens/MasterToken;->isDecrypted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 320
    new-instance v0, Lcom/netflix/msl/MslMasterTokenException;

    sget-object v1, Lcom/netflix/msl/MslError;->MASTERTOKEN_UNTRUSTED:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1, p2}, Lcom/netflix/msl/MslMasterTokenException;-><init>(Lcom/netflix/msl/MslError;Lcom/netflix/msl/tokens/MasterToken;)V

    throw v0

    .line 321
    :cond_2
    new-instance v0, Lcom/netflix/msl/crypto/SessionCryptoContext;

    invoke-direct {v0, p0, p2}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto :goto_0

    .line 326
    :pswitch_1
    new-instance v0, Lcom/netflix/msl/entityauth/PresharedAuthenticationData;

    invoke-direct {v0, p3}, Lcom/netflix/msl/entityauth/PresharedAuthenticationData;-><init>(Ljava/lang/String;)V

    .line 327
    sget-object v1, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->PSK:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-virtual {p0, v1}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationFactory(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;

    move-result-object v1

    .line 328
    if-nez v1, :cond_3

    .line 329
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNSUPPORTED_KEYX_KEY_ID:Lcom/netflix/msl/MslError;

    invoke-virtual {p1}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_3
    invoke-virtual {v1, p0, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;->getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    goto :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected createRequestData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/keyx/KeyRequestData;
    .locals 1

    .prologue
    .line 352
    new-instance v0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$RequestData;

    invoke-direct {v0, p2}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$RequestData;-><init>(Lcom/netflix/android/org/json/JSONObject;)V

    return-object v0
.end method

.method protected createResponseData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/keyx/KeyResponseData;
    .locals 1

    .prologue
    .line 360
    new-instance v0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;

    invoke-direct {v0, p2, p3}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/android/org/json/JSONObject;)V

    return-object v0
.end method

.method public generateResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 413
    instance-of v0, p2, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$RequestData;

    if-nez v0, :cond_0

    .line 414
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Key request data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was not created by this factory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_0
    check-cast p2, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$RequestData;

    .line 418
    invoke-virtual {p3}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v0

    .line 419
    iget-object v1, p0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/netflix/msl/util/AuthenticationUtils;->isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/keyx/KeyExchangeScheme;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 420
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v2, Lcom/netflix/msl/MslError;->KEYX_INCORRECT_DATA:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Authentication Scheme for Device Type Not Supported "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v1

    .line 423
    :cond_1
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 424
    const/16 v2, 0x20

    new-array v2, v2, [B

    .line 425
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 426
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 427
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v4, "AES"

    invoke-direct {v3, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 428
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v6, "HmacSHA256"

    invoke-direct {v4, v2, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$RequestData;->getKeyId()Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    move-result-object v6

    .line 434
    const/4 v7, 0x0

    :try_start_0
    invoke-static {p1, v6, v7, v0}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange;->createCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;Lcom/netflix/msl/tokens/MasterToken;Ljava/lang/String;)Lcom/netflix/msl/crypto/ICryptoContext;
    :try_end_0
    .catch Lcom/netflix/msl/MslMasterTokenException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 438
    invoke-interface {v0, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([B)[B

    move-result-object v7

    .line 439
    invoke-interface {v0, v2}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([B)[B

    move-result-object v8

    .line 442
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;

    move-result-object v0

    move-object v1, p1

    move-object v2, p3

    .line 443
    invoke-interface/range {v0 .. v5}, Lcom/netflix/msl/tokens/TokenFactory;->createMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    .line 448
    :try_start_1
    new-instance v1, Lcom/netflix/msl/crypto/SessionCryptoContext;

    invoke-direct {v1, p1, v0}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V
    :try_end_1
    .catch Lcom/netflix/msl/MslMasterTokenException; {:try_start_1 .. :try_end_1} :catch_1

    .line 454
    new-instance v2, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;

    invoke-direct {v2, v0, v6, v7, v8}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;[B[B)V

    .line 455
    new-instance v0, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;-><init>(Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/crypto/ICryptoContext;)V

    return-object v0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Master token exception thrown when the master token is null."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 449
    :catch_1
    move-exception v0

    .line 450
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Master token constructed by token factory is not trusted."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public generateResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;
    .locals 9

    .prologue
    .line 368
    instance-of v0, p2, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$RequestData;

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Key request data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was not created by this factory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_0
    check-cast p2, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$RequestData;

    .line 373
    invoke-virtual {p3}, Lcom/netflix/msl/tokens/MasterToken;->getIdentity()Ljava/lang/String;

    move-result-object v0

    .line 374
    iget-object v1, p0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/netflix/msl/util/AuthenticationUtils;->isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/keyx/KeyExchangeScheme;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 375
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v2, Lcom/netflix/msl/MslError;->KEYX_INCORRECT_DATA:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Authentication Scheme for Device Type Not Supported "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/netflix/msl/MslKeyExchangeException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    throw v0

    .line 379
    :cond_1
    invoke-virtual {p3}, Lcom/netflix/msl/tokens/MasterToken;->isVerified()Z

    move-result v0

    if-nez v0, :cond_2

    .line 380
    new-instance v0, Lcom/netflix/msl/MslMasterTokenException;

    sget-object v1, Lcom/netflix/msl/MslError;->MASTERTOKEN_UNTRUSTED:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1, p3}, Lcom/netflix/msl/MslMasterTokenException;-><init>(Lcom/netflix/msl/MslError;Lcom/netflix/msl/tokens/MasterToken;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslMasterTokenException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0

    .line 383
    :cond_2
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 384
    const/16 v1, 0x20

    new-array v1, v1, [B

    .line 385
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 386
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 387
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v3, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 388
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "HmacSHA256"

    invoke-direct {v4, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$RequestData;->getKeyId()Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    move-result-object v6

    .line 392
    invoke-virtual {p3}, Lcom/netflix/msl/tokens/MasterToken;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v6, p3, v2}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange;->createCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;Lcom/netflix/msl/tokens/MasterToken;Ljava/lang/String;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v2

    .line 393
    invoke-interface {v2, v0}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([B)[B

    move-result-object v7

    .line 394
    invoke-interface {v2, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([B)[B

    move-result-object v8

    .line 397
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;

    move-result-object v0

    .line 398
    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/msl/tokens/TokenFactory;->renewMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    .line 401
    new-instance v1, Lcom/netflix/msl/crypto/SessionCryptoContext;

    invoke-direct {v1, p1, v0}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    .line 404
    new-instance v2, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;

    invoke-direct {v2, v0, v6, v7, v8}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;[B[B)V

    .line 405
    new-instance v0, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;-><init>(Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/crypto/ICryptoContext;)V

    return-object v0
.end method

.method public getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 6

    .prologue
    .line 463
    instance-of v0, p2, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$RequestData;

    if-nez v0, :cond_0

    .line 464
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Key request data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was not created by this factory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_0
    check-cast p2, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$RequestData;

    .line 466
    instance-of v0, p3, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;

    if-nez v0, :cond_1

    .line 467
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Key response data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was not created by this factory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_1
    check-cast p3, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;

    .line 471
    invoke-virtual {p2}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$RequestData;->getKeyId()Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    move-result-object v0

    .line 472
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;->getKeyId()Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    move-result-object v1

    .line 473
    invoke-virtual {v0, v1}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 474
    new-instance v2, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->KEYX_RESPONSE_REQUEST_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "; response "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Lcom/netflix/msl/MslKeyExchangeException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    throw v0

    .line 477
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationData(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v0

    .line 478
    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v3

    .line 480
    invoke-static {p1, v1, p4, v3}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange;->createCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;Lcom/netflix/msl/tokens/MasterToken;Ljava/lang/String;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    .line 481
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;->getEncryptionKey()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->unwrap([B)[B

    move-result-object v1

    .line 482
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;->getHmacKey()[B

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/netflix/msl/crypto/ICryptoContext;->unwrap([B)[B

    move-result-object v0

    .line 485
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v4, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 486
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "HmacSHA256"

    invoke-direct {v5, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 487
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$ResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    .line 488
    new-instance v0, Lcom/netflix/msl/crypto/SessionCryptoContext;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    return-object v0
.end method
