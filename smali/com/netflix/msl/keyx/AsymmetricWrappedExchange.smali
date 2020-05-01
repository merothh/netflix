.class public Lcom/netflix/msl/keyx/AsymmetricWrappedExchange;
.super Lcom/netflix/msl/keyx/KeyExchangeFactory;
.source "AsymmetricWrappedExchange.java"


# static fields
.field private static final ENCRYPT_DECRYPT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;",
            ">;"
        }
    .end annotation
.end field

.field private static final SIGN_VERIFY:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final authutils:Lcom/netflix/msl/util/AuthenticationUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashSet;

    new-array v1, v5, [Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->encrypt:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    aput-object v2, v1, v3

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->decrypt:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange;->ENCRYPT_DECRYPT:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    new-array v1, v5, [Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->sign:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    aput-object v2, v1, v3

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->verify:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange;->SIGN_VERIFY:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/util/AuthenticationUtils;)V
    .locals 1

    sget-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->ASYMMETRIC_WRAPPED:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/keyx/KeyExchangeFactory;-><init>(Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    iput-object p1, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    return-void
.end method

.method private static createCryptoContext(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 6

    sget-object v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$1;->$SwitchMap$com$netflix$msl$keyx$AsymmetricWrappedExchange$RequestData$Mechanism:[I

    invoke-virtual {p2}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNSUPPORTED_KEYX_MECHANISM:Lcom/netflix/msl/MslError;

    invoke-virtual {p2}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v1, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$RsaOaepCryptoContext;

    invoke-direct {v1, p3, p4}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$RsaOaepCryptoContext;-><init>(Ljava/security/PrivateKey;Ljava/security/PublicKey;)V

    new-instance v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;->A128GCM:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    sget-object v3, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;->JWE_CS:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$CekCryptoContext;Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v1, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$RsaOaepCryptoContext;

    invoke-direct {v1, p3, p4}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$RsaOaepCryptoContext;-><init>(Ljava/security/PrivateKey;Ljava/security/PublicKey;)V

    new-instance v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;->A128GCM:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    sget-object v3, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;->JWE_JS:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$CekCryptoContext;Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext;

    sget-object v5, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;->WRAP_UNWRAP_OAEP:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext;

    sget-object v5, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;->WRAP_UNWRAP_PKCS1:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected createRequestData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/keyx/KeyRequestData;
    .locals 1

    new-instance v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;

    invoke-direct {v0, p2}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;-><init>(Lcom/netflix/android/org/json/JSONObject;)V

    return-object v0
.end method

.method protected createResponseData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/keyx/KeyResponseData;
    .locals 1

    new-instance v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;

    invoke-direct {v0, p2, p3}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/android/org/json/JSONObject;)V

    return-object v0
.end method

.method public generateResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;
    .locals 14

    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;

    if-nez v1, :cond_0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Key request data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " was not created by this factory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast p2, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;

    invoke-virtual/range {p3 .. p3}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/netflix/msl/util/AuthenticationUtils;->isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/keyx/KeyExchangeScheme;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->KEYX_INCORRECT_DATA:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Authentication scheme for entity not permitted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslKeyExchangeException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v1

    throw v1

    :cond_1
    const/16 v1, 0x10

    new-array v1, v1, [B

    const/16 v2, 0x20

    new-array v3, v2, [B

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextBytes([B)V

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextBytes([B)V

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v6, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "HmacSHA256"

    invoke-direct {v12, v3, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->getKeyPairId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->getMechanism()Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {p1, v2, v4, v7, v5}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange;->createCryptoContext(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v13

    sget-object v2, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$1;->$SwitchMap$com$netflix$msl$keyx$AsymmetricWrappedExchange$RequestData$Mechanism:[I

    invoke-virtual {v4}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    invoke-interface {v13, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([B)[B

    move-result-object v2

    invoke-interface {v13, v3}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([B)[B

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;

    move-result-object v3

    const/4 v8, 0x0

    move-object v4, p1

    move-object/from16 v5, p3

    move-object v7, v12

    invoke-interface/range {v3 .. v8}, Lcom/netflix/msl/tokens/TokenFactory;->createMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    :try_start_0
    new-instance v4, Lcom/netflix/msl/crypto/SessionCryptoContext;

    invoke-direct {v4, p1, v3}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V
    :try_end_0
    .catch Lcom/netflix/msl/MslMasterTokenException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v5, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;

    invoke-virtual/range {p2 .. p2}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->getKeyPairId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6, v2, v1}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Ljava/lang/String;[B[B)V

    new-instance v1, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    invoke-direct {v1, v5, v4}, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;-><init>(Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/crypto/ICryptoContext;)V

    return-object v1

    :pswitch_0
    new-instance v1, Lcom/netflix/msl/crypto/JsonWebKey;

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebKey$Usage;->enc:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    sget-object v3, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->A128CBC:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Lcom/netflix/msl/crypto/JsonWebKey$Usage;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V

    new-instance v7, Lcom/netflix/msl/crypto/JsonWebKey;

    sget-object v8, Lcom/netflix/msl/crypto/JsonWebKey$Usage;->sig:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    sget-object v9, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->HS256:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Lcom/netflix/msl/crypto/JsonWebKey$Usage;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V

    invoke-virtual {v1}, Lcom/netflix/msl/crypto/JsonWebKey;->toJSONString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v13, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([B)[B

    move-result-object v2

    invoke-virtual {v7}, Lcom/netflix/msl/crypto/JsonWebKey;->toJSONString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v13, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([B)[B

    move-result-object v1

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/netflix/msl/crypto/JsonWebKey;

    sget-object v2, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange;->ENCRYPT_DECRYPT:Ljava/util/Set;

    sget-object v3, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->A128CBC:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Ljava/util/Set;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V

    new-instance v7, Lcom/netflix/msl/crypto/JsonWebKey;

    sget-object v8, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange;->SIGN_VERIFY:Ljava/util/Set;

    sget-object v9, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->HS256:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Ljava/util/Set;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V

    invoke-virtual {v1}, Lcom/netflix/msl/crypto/JsonWebKey;->toJSONString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v13, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([B)[B

    move-result-object v2

    invoke-virtual {v7}, Lcom/netflix/msl/crypto/JsonWebKey;->toJSONString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v13, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([B)[B

    move-result-object v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v3, "Master token constructed by token factory is not trusted."

    invoke-direct {v2, v3, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public generateResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;
    .locals 14

    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;

    if-nez v1, :cond_0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Key request data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " was not created by this factory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast p2, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;

    invoke-virtual/range {p3 .. p3}, Lcom/netflix/msl/tokens/MasterToken;->isVerified()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/netflix/msl/MslMasterTokenException;

    sget-object v2, Lcom/netflix/msl/MslError;->MASTERTOKEN_UNTRUSTED:Lcom/netflix/msl/MslError;

    move-object/from16 v0, p3

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslMasterTokenException;-><init>(Lcom/netflix/msl/MslError;Lcom/netflix/msl/tokens/MasterToken;)V

    throw v1

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/netflix/msl/tokens/MasterToken;->getIdentity()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/netflix/msl/util/AuthenticationUtils;->isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/keyx/KeyExchangeScheme;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->KEYX_INCORRECT_DATA:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Authentication scheme for entity not permitted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslKeyExchangeException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v1

    throw v1

    :cond_2
    const/16 v1, 0x10

    new-array v1, v1, [B

    const/16 v2, 0x20

    new-array v3, v2, [B

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextBytes([B)V

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextBytes([B)V

    :try_start_0
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v6, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "HmacSHA256"

    invoke-direct {v12, v3, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual/range {p2 .. p2}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->getKeyPairId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->getMechanism()Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {p1, v2, v4, v7, v5}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange;->createCryptoContext(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v13

    sget-object v2, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$1;->$SwitchMap$com$netflix$msl$keyx$AsymmetricWrappedExchange$RequestData$Mechanism:[I

    invoke-virtual {v4}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    invoke-interface {v13, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([B)[B

    move-result-object v2

    invoke-interface {v13, v3}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([B)[B

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;

    move-result-object v3

    const/4 v8, 0x0

    move-object v4, p1

    move-object/from16 v5, p3

    move-object v7, v12

    invoke-interface/range {v3 .. v8}, Lcom/netflix/msl/tokens/TokenFactory;->renewMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    new-instance v4, Lcom/netflix/msl/crypto/SessionCryptoContext;

    invoke-direct {v4, p1, v3}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    new-instance v5, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;

    invoke-virtual/range {p2 .. p2}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->getKeyPairId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6, v2, v1}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Ljava/lang/String;[B[B)V

    new-instance v1, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    invoke-direct {v1, v5, v4}, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;-><init>(Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/crypto/ICryptoContext;)V

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Lcom/netflix/msl/MslCryptoException;

    sget-object v3, Lcom/netflix/msl/MslError;->SESSION_KEY_CREATION_FAILURE:Lcom/netflix/msl/MslError;

    invoke-direct {v2, v3, v1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslCryptoException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslCryptoException;

    move-result-object v1

    throw v1

    :pswitch_0
    new-instance v1, Lcom/netflix/msl/crypto/JsonWebKey;

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebKey$Usage;->enc:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    sget-object v3, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->A128CBC:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Lcom/netflix/msl/crypto/JsonWebKey$Usage;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V

    new-instance v7, Lcom/netflix/msl/crypto/JsonWebKey;

    sget-object v8, Lcom/netflix/msl/crypto/JsonWebKey$Usage;->sig:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    sget-object v9, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->HS256:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Lcom/netflix/msl/crypto/JsonWebKey$Usage;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V

    invoke-virtual {v1}, Lcom/netflix/msl/crypto/JsonWebKey;->toJSONString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v13, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([B)[B

    move-result-object v2

    invoke-virtual {v7}, Lcom/netflix/msl/crypto/JsonWebKey;->toJSONString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v13, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([B)[B

    move-result-object v1

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/netflix/msl/crypto/JsonWebKey;

    sget-object v2, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange;->ENCRYPT_DECRYPT:Ljava/util/Set;

    sget-object v3, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->A128CBC:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Ljava/util/Set;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V

    new-instance v7, Lcom/netflix/msl/crypto/JsonWebKey;

    sget-object v8, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange;->SIGN_VERIFY:Ljava/util/Set;

    sget-object v9, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->HS256:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Ljava/util/Set;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V

    invoke-virtual {v1}, Lcom/netflix/msl/crypto/JsonWebKey;->toJSONString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v13, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([B)[B

    move-result-object v2

    invoke-virtual {v7}, Lcom/netflix/msl/crypto/JsonWebKey;->toJSONString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v13, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([B)[B

    move-result-object v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 7

    const/4 v6, 0x0

    instance-of v0, p2, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;

    if-nez v0, :cond_0

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

    :cond_0
    check-cast p2, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;

    instance-of v0, p3, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;

    if-nez v0, :cond_1

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

    :cond_1
    check-cast p3, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;

    invoke-virtual {p2}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->getKeyPairId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->getKeyPairId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->KEYX_RESPONSE_REQUEST_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "; response "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-virtual {p2}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->KEYX_PRIVATE_KEY_MISSING:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "request Asymmetric private key"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p2}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->getMechanism()Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    move-result-object v2

    invoke-static {p1, v0, v2, v1, v6}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange;->createCryptoContext(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    sget-object v1, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$1;->$SwitchMap$com$netflix$msl$keyx$AsymmetricWrappedExchange$RequestData$Mechanism:[I

    invoke-virtual {v2}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p3}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->getEncryptionKey()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->unwrap([B)[B

    move-result-object v1

    invoke-virtual {p3}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->getHmacKey()[B

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/netflix/msl/crypto/ICryptoContext;->unwrap([B)[B

    move-result-object v0

    :try_start_0
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v4, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "HmacSHA256"

    invoke-direct {v5, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-virtual {p1, v6}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationData(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    new-instance v0, Lcom/netflix/msl/crypto/SessionCryptoContext;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    return-object v0

    :pswitch_0
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->getEncryptionKey()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->unwrap([B)[B

    move-result-object v1

    invoke-virtual {p3}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->getHmacKey()[B

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/netflix/msl/crypto/ICryptoContext;->unwrap([B)[B

    move-result-object v0

    :try_start_1
    new-instance v2, Lcom/netflix/android/org/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/netflix/android/org/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v3}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v0, Lcom/netflix/msl/crypto/JsonWebKey;

    invoke-direct {v0, v2}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Lcom/netflix/android/org/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/netflix/msl/crypto/JsonWebKey;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v4

    new-instance v0, Lcom/netflix/msl/crypto/JsonWebKey;

    invoke-direct {v0, v1}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Lcom/netflix/android/org/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/netflix/msl/crypto/JsonWebKey;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->SESSION_KEY_CREATION_FAILURE:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    invoke-virtual {v1, p4}, Lcom/netflix/msl/MslCryptoException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslCryptoException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->SESSION_KEY_CREATION_FAILURE:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    invoke-virtual {v1, p4}, Lcom/netflix/msl/MslCryptoException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslCryptoException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
