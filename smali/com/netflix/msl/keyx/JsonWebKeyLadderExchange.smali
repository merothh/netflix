.class public Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;
.super Lcom/netflix/msl/keyx/KeyExchangeFactory;
.source "JsonWebKeyLadderExchange.java"


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

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field private static final WRAP_KEY_ID:Ljava/lang/String; = "wrapKeyId"

.field private static final WRAP_UNWRAP:Ljava/util/Set;
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

.field private final repository:Lcom/netflix/msl/keyx/WrapCryptoContextRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->UTF_8:Ljava/nio/charset/Charset;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v5, [Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->encrypt:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    aput-object v2, v1, v3

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->decrypt:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->ENCRYPT_DECRYPT:Ljava/util/Set;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v5, [Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->wrapKey:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    aput-object v2, v1, v3

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->unwrapKey:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->WRAP_UNWRAP:Ljava/util/Set;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v5, [Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->sign:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    aput-object v2, v1, v3

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->verify:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->SIGN_VERIFY:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/keyx/WrapCryptoContextRepository;Lcom/netflix/msl/util/AuthenticationUtils;)V
    .locals 1

    .prologue
    .line 627
    sget-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->JWK_LADDER:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/keyx/KeyExchangeFactory;-><init>(Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 628
    iput-object p1, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->repository:Lcom/netflix/msl/keyx/WrapCryptoContextRepository;

    .line 629
    iput-object p2, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    .line 630
    return-void
.end method

.method private static createCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$Mechanism;[BLjava/lang/String;)Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$JwkCryptoContext;
    .locals 3

    .prologue
    .line 596
    sget-object v0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$1;->$SwitchMap$com$netflix$msl$keyx$JsonWebKeyLadderExchange$Mechanism:[I

    invoke-virtual {p1}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$Mechanism;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 616
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNSUPPORTED_KEYX_MECHANISM:Lcom/netflix/msl/MslError;

    invoke-virtual {p1}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$Mechanism;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 599
    :pswitch_0
    new-instance v0, Lcom/netflix/msl/entityauth/PresharedAuthenticationData;

    invoke-direct {v0, p3}, Lcom/netflix/msl/entityauth/PresharedAuthenticationData;-><init>(Ljava/lang/String;)V

    .line 600
    sget-object v1, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->PSK:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-virtual {p0, v1}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationFactory(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;

    move-result-object v1

    .line 601
    if-nez v1, :cond_0

    .line 602
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNSUPPORTED_KEYX_MECHANISM:Lcom/netflix/msl/MslError;

    invoke-virtual {p1}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$Mechanism;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_0
    invoke-virtual {v1, p0, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;->getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v1

    .line 604
    new-instance v0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;

    invoke-direct {v0, v1}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;-><init>(Lcom/netflix/msl/crypto/ICryptoContext;)V

    .line 613
    :goto_0
    return-object v0

    .line 608
    :pswitch_1
    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->getMslCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    .line 609
    invoke-interface {v0, p2}, Lcom/netflix/msl/crypto/ICryptoContext;->unwrap([B)[B

    move-result-object v0

    .line 610
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_2

    .line 611
    :cond_1
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->KEYX_WRAPPING_KEY_MISSING:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0

    .line 612
    :cond_2
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 613
    new-instance v0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;

    invoke-direct {v0, v1}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;-><init>(Ljavax/crypto/SecretKey;)V

    goto :goto_0

    .line 596
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected createRequestData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/keyx/KeyRequestData;
    .locals 1

    .prologue
    .line 637
    new-instance v0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$RequestData;

    invoke-direct {v0, p2}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$RequestData;-><init>(Lcom/netflix/android/org/json/JSONObject;)V

    return-object v0
.end method

.method protected createResponseData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/keyx/KeyResponseData;
    .locals 1

    .prologue
    .line 645
    new-instance v0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$ResponseData;

    invoke-direct {v0, p2, p3}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$ResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/android/org/json/JSONObject;)V

    return-object v0
.end method

.method public generateResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;
    .locals 14

    .prologue
    .line 717
    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$RequestData;

    if-nez v1, :cond_0

    .line 718
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

    .line 719
    :cond_0
    check-cast p2, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$RequestData;

    .line 722
    invoke-virtual/range {p3 .. p3}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v8

    .line 723
    iget-object v1, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Lcom/netflix/msl/util/AuthenticationUtils;->isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/keyx/KeyExchangeScheme;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 724
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v2, Lcom/netflix/msl/MslError;->KEYX_INCORRECT_DATA:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Authentication scheme for entity not permitted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/netflix/msl/MslKeyExchangeException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v1

    throw v1

    .line 727
    :cond_1
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 728
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 729
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v6, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 732
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v2

    .line 733
    invoke-interface {v2, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([B)[B

    move-result-object v9

    .line 736
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 737
    const/16 v2, 0x20

    new-array v2, v2, [B

    .line 738
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 739
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 740
    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v10, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 741
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "HmacSHA256"

    invoke-direct {v7, v2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 744
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$RequestData;->getMechanism()Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$Mechanism;

    move-result-object v11

    .line 745
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$RequestData;->getWrapdata()[B

    move-result-object v12

    .line 748
    new-instance v1, Lcom/netflix/msl/crypto/JsonWebKey;

    sget-object v2, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->WRAP_UNWRAP:Ljava/util/Set;

    sget-object v3, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->A128KW:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const/4 v4, 0x0

    const-string/jumbo v5, "wrapKeyId"

    invoke-direct/range {v1 .. v6}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Ljava/util/Set;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V

    .line 749
    invoke-static {p1, v11, v12, v8}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->createCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$Mechanism;[BLjava/lang/String;)Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$JwkCryptoContext;

    move-result-object v2

    .line 750
    invoke-virtual {v1}, Lcom/netflix/msl/crypto/JsonWebKey;->toJSONString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([B)[B

    move-result-object v11

    .line 753
    new-instance v8, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;

    invoke-direct {v8, v6}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;-><init>(Ljavax/crypto/SecretKey;)V

    .line 754
    new-instance v1, Lcom/netflix/msl/crypto/JsonWebKey;

    sget-object v2, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->ENCRYPT_DECRYPT:Ljava/util/Set;

    sget-object v3, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->A128CBC:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Ljava/util/Set;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V

    .line 755
    new-instance v2, Lcom/netflix/msl/crypto/JsonWebKey;

    sget-object v3, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->SIGN_VERIFY:Ljava/util/Set;

    sget-object v4, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->HS256:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Ljava/util/Set;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V

    .line 756
    invoke-virtual {v1}, Lcom/netflix/msl/crypto/JsonWebKey;->toJSONString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v8, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([B)[B

    move-result-object v12

    .line 757
    invoke-virtual {v2}, Lcom/netflix/msl/crypto/JsonWebKey;->toJSONString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v8, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([B)[B

    move-result-object v13

    .line 760
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;

    move-result-object v3

    .line 761
    const/4 v8, 0x0

    move-object v4, p1

    move-object/from16 v5, p3

    move-object v6, v10

    invoke-interface/range {v3 .. v8}, Lcom/netflix/msl/tokens/TokenFactory;->createMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    .line 764
    new-instance v7, Lcom/netflix/msl/crypto/SessionCryptoContext;

    invoke-direct {v7, p1, v2}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    .line 767
    new-instance v1, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$ResponseData;

    move-object v3, v11

    move-object v4, v9

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$ResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;[B[B[B[B)V

    .line 768
    new-instance v2, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    invoke-direct {v2, v1, v7}, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;-><init>(Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/crypto/ICryptoContext;)V

    return-object v2
.end method

.method public generateResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;
    .locals 14

    .prologue
    .line 653
    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$RequestData;

    if-nez v1, :cond_0

    .line 654
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

    .line 655
    :cond_0
    check-cast p2, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$RequestData;

    .line 659
    invoke-virtual/range {p3 .. p3}, Lcom/netflix/msl/tokens/MasterToken;->isVerified()Z

    move-result v1

    if-nez v1, :cond_1

    .line 660
    new-instance v1, Lcom/netflix/msl/MslMasterTokenException;

    sget-object v2, Lcom/netflix/msl/MslError;->MASTERTOKEN_UNTRUSTED:Lcom/netflix/msl/MslError;

    move-object/from16 v0, p3

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslMasterTokenException;-><init>(Lcom/netflix/msl/MslError;Lcom/netflix/msl/tokens/MasterToken;)V

    throw v1

    .line 663
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$RequestData;->getMechanism()Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$Mechanism;

    move-result-object v8

    .line 664
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$RequestData;->getWrapdata()[B

    move-result-object v9

    .line 665
    invoke-virtual/range {p3 .. p3}, Lcom/netflix/msl/tokens/MasterToken;->getIdentity()Ljava/lang/String;

    move-result-object v10

    .line 668
    iget-object v1, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v2

    invoke-interface {v1, v10, v2}, Lcom/netflix/msl/util/AuthenticationUtils;->isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/keyx/KeyExchangeScheme;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 669
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v2, Lcom/netflix/msl/MslError;->KEYX_INCORRECT_DATA:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Authentication scheme for entity not permitted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/netflix/msl/MslKeyExchangeException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v1

    throw v1

    .line 672
    :cond_2
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 673
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 674
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v6, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 677
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v2

    .line 678
    invoke-interface {v2, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([B)[B

    move-result-object v11

    .line 681
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 682
    const/16 v2, 0x20

    new-array v2, v2, [B

    .line 683
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 684
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 685
    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v12, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 686
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "HmacSHA256"

    invoke-direct {v7, v2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 689
    new-instance v1, Lcom/netflix/msl/crypto/JsonWebKey;

    sget-object v2, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->WRAP_UNWRAP:Ljava/util/Set;

    sget-object v3, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->A128KW:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const/4 v4, 0x0

    const-string/jumbo v5, "wrapKeyId"

    invoke-direct/range {v1 .. v6}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Ljava/util/Set;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V

    .line 690
    invoke-static {p1, v8, v9, v10}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->createCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$Mechanism;[BLjava/lang/String;)Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$JwkCryptoContext;

    move-result-object v2

    .line 691
    invoke-virtual {v1}, Lcom/netflix/msl/crypto/JsonWebKey;->toJSONString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([B)[B

    move-result-object v9

    .line 694
    new-instance v8, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;

    invoke-direct {v8, v6}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;-><init>(Ljavax/crypto/SecretKey;)V

    .line 695
    new-instance v1, Lcom/netflix/msl/crypto/JsonWebKey;

    sget-object v2, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->ENCRYPT_DECRYPT:Ljava/util/Set;

    sget-object v3, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->A128CBC:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Ljava/util/Set;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V

    .line 696
    new-instance v2, Lcom/netflix/msl/crypto/JsonWebKey;

    sget-object v3, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->SIGN_VERIFY:Ljava/util/Set;

    sget-object v4, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->HS256:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Ljava/util/Set;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V

    .line 697
    invoke-virtual {v1}, Lcom/netflix/msl/crypto/JsonWebKey;->toJSONString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v8, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([B)[B

    move-result-object v10

    .line 698
    invoke-virtual {v2}, Lcom/netflix/msl/crypto/JsonWebKey;->toJSONString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v8, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([B)[B

    move-result-object v13

    .line 701
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;

    move-result-object v3

    .line 702
    const/4 v8, 0x0

    move-object v4, p1

    move-object/from16 v5, p3

    move-object v6, v12

    invoke-interface/range {v3 .. v8}, Lcom/netflix/msl/tokens/TokenFactory;->renewMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    .line 705
    new-instance v7, Lcom/netflix/msl/crypto/SessionCryptoContext;

    invoke-direct {v7, p1, v2}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    .line 708
    new-instance v1, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$ResponseData;

    move-object v3, v9

    move-object v4, v11

    move-object v5, v10

    move-object v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$ResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;[B[B[B[B)V

    .line 709
    new-instance v2, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    invoke-direct {v2, v1, v7}, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;-><init>(Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/crypto/ICryptoContext;)V

    return-object v2
.end method

.method public getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 8

    .prologue
    .line 776
    instance-of v0, p2, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$RequestData;

    if-nez v0, :cond_0

    .line 777
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

    .line 778
    :cond_0
    check-cast p2, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$RequestData;

    .line 779
    instance-of v0, p3, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$ResponseData;

    if-nez v0, :cond_1

    .line 780
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

    .line 781
    :cond_1
    check-cast p3, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$ResponseData;

    .line 784
    invoke-virtual {p2}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$RequestData;->getMechanism()Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$Mechanism;

    move-result-object v0

    .line 785
    invoke-virtual {p2}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$RequestData;->getWrapdata()[B

    move-result-object v1

    .line 786
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationData(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v2

    .line 787
    invoke-virtual {v2}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v3

    .line 789
    sget-object v4, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$1;->$SwitchMap$com$netflix$msl$keyx$JsonWebKeyLadderExchange$Mechanism:[I

    invoke-virtual {v0}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$Mechanism;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 808
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->UNSUPPORTED_KEYX_MECHANISM:Lcom/netflix/msl/MslError;

    invoke-virtual {v0}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$Mechanism;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    throw v0

    .line 792
    :pswitch_0
    new-instance v4, Lcom/netflix/msl/entityauth/PresharedAuthenticationData;

    invoke-direct {v4, v3}, Lcom/netflix/msl/entityauth/PresharedAuthenticationData;-><init>(Ljava/lang/String;)V

    .line 793
    sget-object v5, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->PSK:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-virtual {p1, v5}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationFactory(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;

    move-result-object v5

    .line 794
    if-nez v5, :cond_2

    .line 795
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->UNSUPPORTED_KEYX_MECHANISM:Lcom/netflix/msl/MslError;

    invoke-virtual {v0}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$Mechanism;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    throw v0

    .line 796
    :cond_2
    invoke-virtual {v5, p1, v4}, Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;->getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v4

    .line 797
    new-instance v0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;

    invoke-direct {v0, v4}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;-><init>(Lcom/netflix/msl/crypto/ICryptoContext;)V

    .line 812
    :cond_3
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$ResponseData;->getWrapKey()[B

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/netflix/msl/crypto/ICryptoContext;->unwrap([B)[B

    move-result-object v0

    .line 813
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 816
    :try_start_0
    new-instance v0, Lcom/netflix/msl/crypto/JsonWebKey;

    new-instance v5, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v5, v4}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Lcom/netflix/android/org/json/JSONObject;)V
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    invoke-virtual {v0}, Lcom/netflix/msl/crypto/JsonWebKey;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 823
    new-instance v4, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;

    invoke-direct {v4, v0}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;-><init>(Ljavax/crypto/SecretKey;)V

    .line 824
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$ResponseData;->getEncryptionKey()[B

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/netflix/msl/crypto/ICryptoContext;->unwrap([B)[B

    move-result-object v0

    .line 825
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$ResponseData;->getHmacKey()[B

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/netflix/msl/crypto/ICryptoContext;->unwrap([B)[B

    move-result-object v5

    .line 826
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 827
    new-instance v7, Ljava/lang/String;

    sget-object v0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v5, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 830
    :try_start_1
    new-instance v0, Lcom/netflix/msl/crypto/JsonWebKey;

    new-instance v5, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v5, v6}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Lcom/netflix/android/org/json/JSONObject;)V
    :try_end_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 836
    :try_start_2
    new-instance v5, Lcom/netflix/msl/crypto/JsonWebKey;

    new-instance v6, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v6, v7}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Lcom/netflix/android/org/json/JSONObject;)V
    :try_end_2
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 842
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$ResponseData;->getWrapdata()[B

    move-result-object v2

    .line 843
    iget-object v6, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->repository:Lcom/netflix/msl/keyx/WrapCryptoContextRepository;

    invoke-interface {v6, v2, v4}, Lcom/netflix/msl/keyx/WrapCryptoContextRepository;->addCryptoContext([BLcom/netflix/msl/crypto/ICryptoContext;)V

    .line 844
    if-eqz v1, :cond_4

    .line 845
    iget-object v2, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->repository:Lcom/netflix/msl/keyx/WrapCryptoContextRepository;

    invoke-interface {v2, v1}, Lcom/netflix/msl/keyx/WrapCryptoContextRepository;->removeCryptoContext([B)V

    .line 848
    :cond_4
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$ResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    .line 849
    invoke-virtual {v0}, Lcom/netflix/msl/crypto/JsonWebKey;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 850
    invoke-virtual {v5}, Lcom/netflix/msl/crypto/JsonWebKey;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 851
    new-instance v0, Lcom/netflix/msl/crypto/SessionCryptoContext;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    return-object v0

    .line 802
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->repository:Lcom/netflix/msl/keyx/WrapCryptoContextRepository;

    invoke-interface {v0, v1}, Lcom/netflix/msl/keyx/WrapCryptoContextRepository;->getCryptoContext([B)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    .line 803
    if-nez v0, :cond_3

    .line 804
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->KEYX_WRAPPING_KEY_MISSING:Lcom/netflix/msl/MslError;

    invoke-static {v1}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/netflix/msl/MslKeyExchangeException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    throw v0

    .line 817
    :catch_0
    move-exception v0

    .line 818
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->INVALID_JWK:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v3, v4, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    throw v0

    .line 831
    :catch_1
    move-exception v0

    .line 832
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->INVALID_JWK:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v3, v6, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    throw v0

    .line 837
    :catch_2
    move-exception v0

    .line 838
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->INVALID_JWK:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v3, v7, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    throw v0

    .line 789
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
