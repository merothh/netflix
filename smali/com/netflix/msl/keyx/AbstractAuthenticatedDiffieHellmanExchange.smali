.class public abstract Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;
.super Lcom/netflix/msl/keyx/KeyExchangeFactory;
.source "AbstractAuthenticatedDiffieHellmanExchange.java"


# static fields
.field private static final HMAC_SHA256_ALGO:Ljava/lang/String; = "HmacSHA256"

.field private static final HMAC_SHA384_ALGO:Ljava/lang/String; = "HmacSHA384"

.field private static final SHA384_ALGO:Ljava/lang/String; = "SHA-384"


# instance fields
.field private final authutils:Lcom/netflix/msl/util/AuthenticationUtils;

.field private final params:Lcom/netflix/msl/keyx/DiffieHellmanParameters;

.field private final repository:Lcom/netflix/msl/keyx/DerivationKeyRepository;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/keyx/DerivationKeyRepository;Lcom/netflix/msl/keyx/DiffieHellmanParameters;Lcom/netflix/msl/util/AuthenticationUtils;)V
    .locals 1

    sget-object v0, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;->AUTHENTICATED_DH:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/keyx/KeyExchangeFactory;-><init>(Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    iput-object p1, p0, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->repository:Lcom/netflix/msl/keyx/DerivationKeyRepository;

    iput-object p2, p0, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->params:Lcom/netflix/msl/keyx/DiffieHellmanParameters;

    iput-object p3, p0, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    return-void
.end method

.method private static computeMac(Ljava/security/Key;[BLjava/lang/String;)[B
    .locals 4

    :try_start_0
    invoke-static {p2}, Lcom/netflix/msl/crypto/CryptoCache;->getMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " algorithm not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_HMAC_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static concat([B[B)[B
    .locals 4

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p0

    array-length v3, p1

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static correctNullBytes([B)[B
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-byte v3, p0, v0

    if-eqz v3, :cond_1

    :cond_0
    if-ne v2, v4, :cond_2

    :goto_1
    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    array-length v0, p0

    sub-int v3, v0, v2

    add-int/lit8 v0, v3, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    invoke-static {p0, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    goto :goto_1
.end method

.method protected static deriveSessionKeys(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljavax/crypto/spec/DHParameterSpec;[B)Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;
    .locals 8

    const/16 v7, 0x10

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v0, "DiffieHellman"

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    invoke-virtual {v0}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->correctNullBytes([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "HmacSHA384"

    invoke-direct {v1, p3, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string/jumbo v2, "HmacSHA384"

    invoke-static {v1, v0, v2}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->computeMac(Ljava/security/Key;[BLjava/lang/String;)[B

    move-result-object v0

    new-array v1, v7, [B

    array-length v2, v1

    invoke-static {v0, v6, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x20

    new-array v2, v2, [B

    array-length v3, v1

    array-length v4, v2

    invoke-static {v0, v3, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v0, v7, [B

    fill-array-data v0, :array_0

    new-array v3, v7, [B

    fill-array-data v3, :array_1

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v5, "HmacSHA256"

    invoke-direct {v4, v0, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v1, v2}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->concat([B[B)[B

    move-result-object v0

    const-string/jumbo v5, "HmacSHA256"

    invoke-static {v4, v0, v5}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->computeMac(Ljava/security/Key;[BLjava/lang/String;)[B

    move-result-object v0

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v5, "HmacSHA256"

    invoke-direct {v4, v0, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string/jumbo v0, "HmacSHA256"

    invoke-static {v4, v3, v0}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->computeMac(Ljava/security/Key;[BLjava/lang/String;)[B

    move-result-object v0

    new-array v3, v7, [B

    array-length v4, v3

    invoke-static {v0, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v4, "AES"

    invoke-direct {v0, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v4, "HmacSHA256"

    invoke-direct {v1, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v3, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;

    invoke-direct {v3, v0, v1, v2}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    return-object v3

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "DiffieHellman algorithm not found."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Diffie-Hellman private key or generated public key rejected by Diffie-Hellman key agreement."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Diffie-Hellman algorithm parameters rejected by Diffie-Hellman key agreement."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x2t
        0x76t
        0x17t
        -0x68t
        0x4ft
        0x62t
        0x27t
        0x53t
        -0x66t
        0x63t
        0xbt
        -0x77t
        0x7ct
        0x1t
        0x7dt
        0x69t
    .end array-data

    :array_1
    .array-data 1
        -0x80t
        -0x61t
        -0x7et
        -0x59t
        -0x53t
        -0x21t
        0x54t
        -0x73t
        0x3et
        -0x57t
        -0x23t
        0x6t
        0x7ft
        -0x7t
        -0x45t
        -0x6ft
    .end array-data
.end method

.method private generatePrivatePublicKeyPair(Ljavax/crypto/spec/DHParameterSpec;)Ljava/security/KeyPair;
    .locals 3

    :try_start_0
    const-string/jumbo v0, "DH"

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "DiffieHellman algorithm not found."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Diffie-Hellman algorithm parameters rejected by Diffie-Hellman key agreement."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private reconstituteRequestPublicKey(Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;Ljavax/crypto/spec/DHParameterSpec;)Ljava/security/PublicKey;
    .locals 5

    :try_start_0
    const-string/jumbo v0, "DiffieHellman"

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->getPublicKey()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "DiffieHellman algorithm not found."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Diffie-Hellman public key specification rejected by Diffie-Hellman key factory."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected createRequestData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/keyx/KeyRequestData;
    .locals 1

    new-instance v0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;

    invoke-direct {v0, p2}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;-><init>(Lcom/netflix/android/org/json/JSONObject;)V

    return-object v0
.end method

.method protected createResponseData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/keyx/KeyResponseData;
    .locals 1

    new-instance v0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;

    invoke-direct {v0, p2, p3}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/android/org/json/JSONObject;)V

    return-object v0
.end method

.method public generateResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;
    .locals 8

    instance-of v0, p2, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;

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
    check-cast p2, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;

    invoke-virtual {p3}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/msl/util/AuthenticationUtils;->isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/keyx/KeyExchangeScheme;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v2, Lcom/netflix/msl/MslError;->KEYX_INCORRECT_DATA:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Authentication Scheme for Device Type Not Supported "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p2}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->getMechanism()Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;

    move-result-object v2

    invoke-virtual {p2}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->getWrapdata()[B

    move-result-object v3

    invoke-virtual {p2}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->getParametersId()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->params:Lcom/netflix/msl/keyx/DiffieHellmanParameters;

    invoke-interface {v4, v0}, Lcom/netflix/msl/keyx/DiffieHellmanParameters;->getParameterSpec(Ljava/lang/String;)Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v4

    invoke-direct {p0, p2, v4}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->reconstituteRequestPublicKey(Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;Ljavax/crypto/spec/DHParameterSpec;)Ljava/security/PublicKey;

    move-result-object v5

    invoke-direct {p0, v4}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->generatePrivatePublicKeyPair(Ljavax/crypto/spec/DHParameterSpec;)Ljava/security/KeyPair;

    move-result-object v7

    invoke-virtual {v7}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-virtual {v7}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->getHashWrapKeyData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;[BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v5, v0, v4, v1}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->deriveSessionKeys(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljavax/crypto/spec/DHParameterSpec;[B)Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    iget-object v2, v1, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;->derivationKey:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([B)[B

    move-result-object v7

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;

    move-result-object v0

    iget-object v3, v1, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;->encryptionKey:Ljavax/crypto/SecretKey;

    iget-object v4, v1, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;->hmacKey:Ljavax/crypto/SecretKey;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/msl/tokens/TokenFactory;->createMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    new-instance v1, Lcom/netflix/msl/crypto/SessionCryptoContext;

    invoke-direct {v1, p1, v0}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    new-instance v2, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;

    invoke-virtual {p2}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->getParametersId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v0, v7, v3, v4}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;[BLjava/lang/String;Ljava/math/BigInteger;)V

    new-instance v0, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;-><init>(Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/crypto/ICryptoContext;)V

    return-object v0
.end method

.method public generateResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;
    .locals 8

    instance-of v0, p2, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;

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
    check-cast p2, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;

    invoke-virtual {p3}, Lcom/netflix/msl/tokens/MasterToken;->isVerified()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/netflix/msl/MslMasterTokenException;

    sget-object v1, Lcom/netflix/msl/MslError;->MASTERTOKEN_UNTRUSTED:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1, p3}, Lcom/netflix/msl/MslMasterTokenException;-><init>(Lcom/netflix/msl/MslError;Lcom/netflix/msl/tokens/MasterToken;)V

    throw v0

    :cond_1
    invoke-virtual {p3}, Lcom/netflix/msl/tokens/MasterToken;->getIdentity()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/msl/util/AuthenticationUtils;->isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/keyx/KeyExchangeScheme;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v2, Lcom/netflix/msl/MslError;->KEYX_INCORRECT_DATA:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Authentication Scheme for Device Type Not Supported "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p2}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->getMechanism()Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;

    move-result-object v2

    invoke-virtual {p2}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->getWrapdata()[B

    move-result-object v3

    invoke-virtual {p2}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->getParametersId()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->params:Lcom/netflix/msl/keyx/DiffieHellmanParameters;

    invoke-interface {v4, v0}, Lcom/netflix/msl/keyx/DiffieHellmanParameters;->getParameterSpec(Ljava/lang/String;)Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v4

    invoke-direct {p0, p2, v4}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->reconstituteRequestPublicKey(Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;Ljavax/crypto/spec/DHParameterSpec;)Ljava/security/PublicKey;

    move-result-object v5

    invoke-direct {p0, v4}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->generatePrivatePublicKeyPair(Ljavax/crypto/spec/DHParameterSpec;)Ljava/security/KeyPair;

    move-result-object v7

    invoke-virtual {v7}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-virtual {v7}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->getHashWrapKeyData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;[BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v5, v0, v4, v1}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->deriveSessionKeys(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljavax/crypto/spec/DHParameterSpec;[B)Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    iget-object v2, v1, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;->derivationKey:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([B)[B

    move-result-object v7

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;

    move-result-object v0

    iget-object v3, v1, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;->encryptionKey:Ljavax/crypto/SecretKey;

    iget-object v4, v1, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;->hmacKey:Ljavax/crypto/SecretKey;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/msl/tokens/TokenFactory;->renewMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    new-instance v1, Lcom/netflix/msl/crypto/SessionCryptoContext;

    invoke-direct {v1, p1, v0}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    new-instance v2, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;

    invoke-virtual {p2}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->getParametersId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v0, v7, v3, v4}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;[BLjava/lang/String;Ljava/math/BigInteger;)V

    new-instance v0, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;-><init>(Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/crypto/ICryptoContext;)V

    return-object v0
.end method

.method public getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 9

    const/4 v8, 0x0

    instance-of v0, p2, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;

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
    check-cast p2, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;

    instance-of v0, p3, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;

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
    check-cast p3, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;

    invoke-virtual {p2}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->getParametersId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->getParametersId()Ljava/lang/String;

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

    invoke-virtual {v2, p4}, Lcom/netflix/msl/MslKeyExchangeException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-virtual {p2}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->getPrivateKey()Ljavax/crypto/interfaces/DHPrivateKey;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->KEYX_PRIVATE_KEY_MISSING:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "request Diffie-Hellman private key"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslKeyExchangeException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    throw v0

    :cond_3
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "DiffieHellman"

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {p3}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->getPublicKey()Ljava/math/BigInteger;

    move-result-object v3

    new-instance v4, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    invoke-virtual {p2}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->getMechanism()Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->getWrapdata()[B

    move-result-object v5

    invoke-virtual {p1, v8}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationData(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$1;->$SwitchMap$com$netflix$msl$keyx$AbstractAuthenticatedDiffieHellmanExchange$Mechanism:[I

    invoke-virtual {v0}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Key request data mechanism "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is not supported but it should be."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "DiffieHellman algorithm not found."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v2, Lcom/netflix/msl/MslError;->KEYX_INVALID_PUBLIC_KEY:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "Diffie-Hellman public key specification rejected by Diffie-Hellman key factory."

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_0
    iget-object v0, p0, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->repository:Lcom/netflix/msl/keyx/DerivationKeyRepository;

    invoke-interface {v0, v5}, Lcom/netflix/msl/keyx/DerivationKeyRepository;->getDerivationKey([B)Ljavax/crypto/SecretKey;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->KEYX_DERIVATION_KEY_MISSING:Lcom/netflix/msl/MslError;

    invoke-static {v5}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :cond_4
    :try_start_1
    const-string/jumbo v6, "SHA-384"

    invoke-static {v6}, Lcom/netflix/msl/crypto/CryptoCache;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :goto_0
    invoke-static {v4, v1, v2, v0}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->deriveSessionKeys(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljavax/crypto/spec/DHParameterSpec;[B)Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->repository:Lcom/netflix/msl/keyx/DerivationKeyRepository;

    invoke-virtual {p3}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->getWrapdata()[B

    move-result-object v2

    iget-object v4, v1, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;->derivationKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0, v2, v4}, Lcom/netflix/msl/keyx/DerivationKeyRepository;->addDerivationKey([BLjavax/crypto/SecretKey;)V

    if-eqz v5, :cond_5

    iget-object v0, p0, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->repository:Lcom/netflix/msl/keyx/DerivationKeyRepository;

    invoke-interface {v0, v5}, Lcom/netflix/msl/keyx/DerivationKeyRepository;->removeDerivationKey([B)V

    :cond_5
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    new-instance v0, Lcom/netflix/msl/crypto/SessionCryptoContext;

    iget-object v4, v1, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;->encryptionKey:Ljavax/crypto/SecretKey;

    iget-object v5, v1, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;->hmacKey:Ljavax/crypto/SecretKey;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    return-object v0

    :catch_2
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "SHA-384 algorithm not found."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_1
    invoke-virtual {p0, p1, v0, v8, v3}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->getHashWrapKeyData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;[BLjava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1, v0, v8, v3}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->getHashWrapKeyData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;[BLjava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract getHashWrapKeyData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;[BLjava/lang/String;)[B
.end method
