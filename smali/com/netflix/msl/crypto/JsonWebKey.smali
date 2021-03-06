.class public Lcom/netflix/msl/crypto/JsonWebKey;
.super Ljava/lang/Object;
.source "JsonWebKey.java"

# interfaces
.implements Lcom/netflix/android/org/json/JSONString;


# static fields
.field private static final KEY_ALGORITHM:Ljava/lang/String; = "alg"

.field private static final KEY_EXTRACTABLE:Ljava/lang/String; = "extractable"

.field private static final KEY_KEY:Ljava/lang/String; = "k"

.field private static final KEY_KEY_ID:Ljava/lang/String; = "kid"

.field private static final KEY_KEY_OPS:Ljava/lang/String; = "key_ops"

.field private static final KEY_MODULUS:Ljava/lang/String; = "n"

.field private static final KEY_PRIVATE_EXPONENT:Ljava/lang/String; = "d"

.field private static final KEY_PUBLIC_EXPONENT:Ljava/lang/String; = "e"

.field private static final KEY_TYPE:Ljava/lang/String; = "kty"

.field private static final KEY_USAGE:Ljava/lang/String; = "use"


# instance fields
.field private final algo:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

.field private final extractable:Z

.field private final id:Ljava/lang/String;

.field private final key:[B

.field private final keyOps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;",
            ">;"
        }
    .end annotation
.end field

.field private final keyPair:Ljava/security/KeyPair;

.field private final secretKey:Ljavax/crypto/SecretKey;

.field private final type:Lcom/netflix/msl/crypto/JsonWebKey$Type;

.field private final usage:Lcom/netflix/msl/crypto/JsonWebKey$Usage;


# direct methods
.method public constructor <init>(Lcom/netflix/android/org/json/JSONObject;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string/jumbo v2, "kty"

    invoke-virtual {p1, v2}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "use"

    invoke-virtual {p1, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "use"

    invoke-virtual {p1, v2}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    :goto_0
    const-string/jumbo v2, "key_ops"

    invoke-virtual {p1, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v3, "key_ops"

    invoke-virtual {p1, v3}, Lcom/netflix/android/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v6

    move v3, v0

    :goto_1
    invoke-virtual {v6}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_1

    invoke-virtual {v6, v3}, Lcom/netflix/android/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move-object v4, v1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_2
    const-string/jumbo v2, "alg"

    invoke-virtual {p1, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "alg"

    invoke-virtual {p1, v2}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    const-string/jumbo v6, "extractable"

    invoke-virtual {p1, v6}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v0, "extractable"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_2
    iput-boolean v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->extractable:Z

    const-string/jumbo v0, "kid"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "kid"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->id:Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v5}, Lcom/netflix/msl/crypto/JsonWebKey$Type;->valueOf(Ljava/lang/String;)Lcom/netflix/msl/crypto/JsonWebKey$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->type:Lcom/netflix/msl/crypto/JsonWebKey$Type;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v4, :cond_6

    :try_start_2
    invoke-static {v4}, Lcom/netflix/msl/crypto/JsonWebKey$Usage;->valueOf(Ljava/lang/String;)Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->usage:Lcom/netflix/msl/crypto/JsonWebKey$Usage;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v3, :cond_9

    const-class v0, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_3
    invoke-static {v0}, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->valueOf(Ljava/lang/String;)Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNIDENTIFIED_JWK_KEYOP:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v4, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    move-object v3, v1

    goto :goto_2

    :cond_4
    move-object v2, v1

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "jwk "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNIDENTIFIED_JWK_TYPE:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v5, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    move-object v0, v1

    goto :goto_5

    :catch_3
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNIDENTIFIED_JWK_USAGE:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v4, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyOps:Ljava/util/Set;

    :goto_7
    if-eqz v2, :cond_a

    :try_start_4
    invoke-static {v2}, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->fromString(Ljava/lang/String;)Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->algo:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->type:Lcom/netflix/msl/crypto/JsonWebKey$Type;

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebKey$Type;->oct:Lcom/netflix/msl/crypto/JsonWebKey$Type;

    if-ne v0, v2, :cond_d

    const-string/jumbo v0, "k"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/JsonUtils;->b64urlDecode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->key:[B

    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->key:[B

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->key:[B

    array-length v0, v0

    if-nez v0, :cond_b

    :cond_8
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->INVALID_JWK_KEYDATA:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "symmetric key is empty"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_5 .. :try_end_5} :catch_7

    :catch_4
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    :cond_9
    iput-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyOps:Ljava/util/Set;

    goto :goto_7

    :cond_a
    move-object v0, v1

    goto :goto_8

    :catch_5
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v3, Lcom/netflix/msl/MslError;->UNIDENTIFIED_JWK_ALGORITHM:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v3, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_b
    :try_start_6
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->algo:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    if-eqz v0, :cond_c

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->key:[B

    iget-object v2, p0, Lcom/netflix/msl/crypto/JsonWebKey;->algo:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    invoke-virtual {v2}, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->getJcaAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :cond_c
    iput-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->secretKey:Ljavax/crypto/SecretKey;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyPair:Ljava/security/KeyPair;

    :goto_9
    return-void

    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->key:[B

    const-string/jumbo v0, "RSA"

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    const-string/jumbo v0, "n"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/JsonUtils;->b64urlDecode(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_e

    array-length v2, v0

    if-nez v2, :cond_f

    :cond_e
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->INVALID_JWK_KEYDATA:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "modulus is empty"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_6 .. :try_end_6} :catch_7

    :catch_6
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNSUPPORTED_JWK_ALGORITHM:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    :cond_f
    :try_start_7
    new-instance v4, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v4, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const-string/jumbo v0, "e"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string/jumbo v0, "e"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/JsonUtils;->b64urlDecode(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_10

    array-length v2, v0

    if-nez v2, :cond_11

    :cond_10
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->INVALID_JWK_KEYDATA:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "public exponent is empty"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_JWK_KEYDATA:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    :cond_11
    :try_start_8
    new-instance v2, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v2, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v0, v4, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v3, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    move-object v2, v0

    :goto_a
    const-string/jumbo v0, "d"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string/jumbo v0, "d"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/JsonUtils;->b64urlDecode(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_12

    array-length v1, v0

    if-nez v1, :cond_14

    :cond_12
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->INVALID_JWK_KEYDATA:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "private exponent is empty"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :cond_13
    move-object v2, v1

    goto :goto_a

    :cond_14
    new-instance v1, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v1, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v0, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-direct {v0, v4, v1}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v3, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    :goto_b
    if-nez v2, :cond_16

    if-nez v0, :cond_16

    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "no public or private key"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :cond_15
    move-object v0, v1

    goto :goto_b

    :cond_16
    new-instance v1, Ljava/security/KeyPair;

    invoke-direct {v1, v2, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    iput-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyPair:Ljava/security/KeyPair;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->secretKey:Ljavax/crypto/SecretKey;
    :try_end_8
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_9
.end method

.method public constructor <init>(Lcom/netflix/msl/crypto/JsonWebKey$Usage;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p5, :cond_0

    if-nez p6, :cond_0

    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "At least one of the public key or private key must be provided."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    sget-object v0, Lcom/netflix/msl/crypto/JsonWebKey$1;->$SwitchMap$com$netflix$msl$crypto$JsonWebKey$Algorithm:[I

    invoke-virtual {p2}, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "The algorithm must be an RSA algorithm."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :pswitch_0
    sget-object v0, Lcom/netflix/msl/crypto/JsonWebKey$Type;->rsa:Lcom/netflix/msl/crypto/JsonWebKey$Type;

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->type:Lcom/netflix/msl/crypto/JsonWebKey$Type;

    iput-object p1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->usage:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    iput-object v2, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyOps:Ljava/util/Set;

    iput-object p2, p0, Lcom/netflix/msl/crypto/JsonWebKey;->algo:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    iput-boolean p3, p0, Lcom/netflix/msl/crypto/JsonWebKey;->extractable:Z

    iput-object p4, p0, Lcom/netflix/msl/crypto/JsonWebKey;->id:Ljava/lang/String;

    new-instance v0, Ljava/security/KeyPair;

    invoke-direct {v0, p5, p6}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyPair:Ljava/security/KeyPair;

    iput-object v2, p0, Lcom/netflix/msl/crypto/JsonWebKey;->key:[B

    iput-object v2, p0, Lcom/netflix/msl/crypto/JsonWebKey;->secretKey:Ljavax/crypto/SecretKey;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/netflix/msl/crypto/JsonWebKey$Usage;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    sget-object v0, Lcom/netflix/msl/crypto/JsonWebKey$1;->$SwitchMap$com$netflix$msl$crypto$JsonWebKey$Algorithm:[I

    invoke-virtual {p2}, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "The algorithm must be a symmetric key algorithm."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :pswitch_1
    sget-object v0, Lcom/netflix/msl/crypto/JsonWebKey$Type;->oct:Lcom/netflix/msl/crypto/JsonWebKey$Type;

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->type:Lcom/netflix/msl/crypto/JsonWebKey$Type;

    iput-object p1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->usage:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    iput-object v2, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyOps:Ljava/util/Set;

    iput-object p2, p0, Lcom/netflix/msl/crypto/JsonWebKey;->algo:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    iput-boolean p3, p0, Lcom/netflix/msl/crypto/JsonWebKey;->extractable:Z

    iput-object p4, p0, Lcom/netflix/msl/crypto/JsonWebKey;->id:Ljava/lang/String;

    iput-object v2, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyPair:Ljava/security/KeyPair;

    invoke-interface {p5}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->key:[B

    iput-object p5, p0, Lcom/netflix/msl/crypto/JsonWebKey;->secretKey:Ljavax/crypto/SecretKey;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Ljava/util/Set;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;",
            ">;",
            "Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/security/interfaces/RSAPublicKey;",
            "Ljava/security/interfaces/RSAPrivateKey;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p5, :cond_0

    if-nez p6, :cond_0

    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "At least one of the public key or private key must be provided."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    sget-object v0, Lcom/netflix/msl/crypto/JsonWebKey$1;->$SwitchMap$com$netflix$msl$crypto$JsonWebKey$Algorithm:[I

    invoke-virtual {p2}, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "The algorithm must be an RSA algorithm."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :pswitch_0
    sget-object v0, Lcom/netflix/msl/crypto/JsonWebKey$Type;->rsa:Lcom/netflix/msl/crypto/JsonWebKey$Type;

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->type:Lcom/netflix/msl/crypto/JsonWebKey$Type;

    iput-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->usage:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    if-eqz p1, :cond_2

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyOps:Ljava/util/Set;

    iput-object p2, p0, Lcom/netflix/msl/crypto/JsonWebKey;->algo:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    iput-boolean p3, p0, Lcom/netflix/msl/crypto/JsonWebKey;->extractable:Z

    iput-object p4, p0, Lcom/netflix/msl/crypto/JsonWebKey;->id:Ljava/lang/String;

    new-instance v0, Ljava/security/KeyPair;

    invoke-direct {v0, p5, p6}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyPair:Ljava/security/KeyPair;

    iput-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->key:[B

    iput-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->secretKey:Ljavax/crypto/SecretKey;

    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/util/Set;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;",
            ">;",
            "Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;",
            "Z",
            "Ljava/lang/String;",
            "Ljavax/crypto/SecretKey;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    sget-object v0, Lcom/netflix/msl/crypto/JsonWebKey$1;->$SwitchMap$com$netflix$msl$crypto$JsonWebKey$Algorithm:[I

    invoke-virtual {p2}, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "The algorithm must be a symmetric key algorithm."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :pswitch_1
    sget-object v0, Lcom/netflix/msl/crypto/JsonWebKey$Type;->oct:Lcom/netflix/msl/crypto/JsonWebKey$Type;

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->type:Lcom/netflix/msl/crypto/JsonWebKey$Type;

    iput-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->usage:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyOps:Ljava/util/Set;

    iput-object p2, p0, Lcom/netflix/msl/crypto/JsonWebKey;->algo:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    iput-boolean p3, p0, Lcom/netflix/msl/crypto/JsonWebKey;->extractable:Z

    iput-object p4, p0, Lcom/netflix/msl/crypto/JsonWebKey;->id:Ljava/lang/String;

    iput-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyPair:Ljava/security/KeyPair;

    invoke-interface {p5}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->key:[B

    iput-object p5, p0, Lcom/netflix/msl/crypto/JsonWebKey;->secretKey:Ljavax/crypto/SecretKey;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static bi2bytes(Ljava/math/BigInteger;)[B
    .locals 6

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    array-length v2, v0

    sub-int v1, v2, v1

    array-length v2, v0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlgorithm()Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->algo:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyOps()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyOps:Ljava/util/Set;

    return-object v0
.end method

.method public getRsaKeyPair()Ljava/security/KeyPair;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyPair:Ljava/security/KeyPair;

    return-object v0
.end method

.method public getSecretKey()Ljavax/crypto/SecretKey;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->secretKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 3

    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->secretKey:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->secretKey:Ljavax/crypto/SecretKey;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->key:[B

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->key:[B

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_SYMMETRIC_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getType()Lcom/netflix/msl/crypto/JsonWebKey$Type;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->type:Lcom/netflix/msl/crypto/JsonWebKey$Type;

    return-object v0
.end method

.method public getUsage()Lcom/netflix/msl/crypto/JsonWebKey$Usage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->usage:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    return-object v0
.end method

.method public isExtractable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->extractable:Z

    return v0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 5

    :try_start_0
    new-instance v3, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v3}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    const-string/jumbo v0, "kty"

    iget-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->type:Lcom/netflix/msl/crypto/JsonWebKey$Type;

    invoke-virtual {v1}, Lcom/netflix/msl/crypto/JsonWebKey$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->usage:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "use"

    iget-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->usage:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    invoke-virtual {v1}, Lcom/netflix/msl/crypto/JsonWebKey$Usage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyOps:Ljava/util/Set;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyOps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    invoke-virtual {v0}, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error encoding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " JSON."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_1
    const-string/jumbo v0, "key_ops"

    invoke-virtual {v3, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :cond_2
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->algo:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "alg"

    iget-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->algo:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    invoke-virtual {v1}, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :cond_3
    const-string/jumbo v0, "extractable"

    iget-boolean v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->extractable:Z

    invoke-virtual {v3, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/netflix/android/org/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->id:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "kid"

    iget-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->id:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :cond_4
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->type:Lcom/netflix/msl/crypto/JsonWebKey$Type;

    sget-object v1, Lcom/netflix/msl/crypto/JsonWebKey$Type;->oct:Lcom/netflix/msl/crypto/JsonWebKey$Type;

    if-ne v0, v1, :cond_6

    const-string/jumbo v0, "k"

    iget-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->key:[B

    invoke-static {v1}, Lcom/netflix/msl/util/JsonUtils;->b64urlEncode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :cond_5
    :goto_1
    invoke-virtual {v3}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyPair:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    iget-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyPair:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    :goto_2
    invoke-static {v2}, Lcom/netflix/msl/crypto/JsonWebKey;->bi2bytes(Ljava/math/BigInteger;)[B

    move-result-object v2

    const-string/jumbo v4, "n"

    invoke-static {v2}, Lcom/netflix/msl/util/JsonUtils;->b64urlEncode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/crypto/JsonWebKey;->bi2bytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    const-string/jumbo v2, "e"

    invoke-static {v0}, Lcom/netflix/msl/util/JsonUtils;->b64urlEncode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :cond_7
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/crypto/JsonWebKey;->bi2bytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    const-string/jumbo v1, "d"

    invoke-static {v0}, Lcom/netflix/msl/util/JsonUtils;->b64urlEncode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_1

    :cond_8
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;
    :try_end_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_2
.end method
