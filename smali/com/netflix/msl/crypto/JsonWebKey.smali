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

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    :try_start_0
    const-string/jumbo v2, "kty"

    invoke-virtual {p1, v2}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 346
    const-string/jumbo v2, "use"

    invoke-virtual {p1, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "use"

    invoke-virtual {p1, v2}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 347
    :goto_0
    const-string/jumbo v2, "key_ops"

    invoke-virtual {p1, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 348
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 349
    const-string/jumbo v3, "key_ops"

    invoke-virtual {p1, v3}, Lcom/netflix/android/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v6

    move v3, v0

    .line 350
    :goto_1
    invoke-virtual {v6}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 351
    invoke-virtual {v6, v3}, Lcom/netflix/android/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 350
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move-object v4, v1

    .line 346
    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 355
    :goto_2
    const-string/jumbo v2, "alg"

    invoke-virtual {p1, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "alg"

    invoke-virtual {p1, v2}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 356
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

    .line 357
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

    .line 364
    :try_start_1
    invoke-static {v5}, Lcom/netflix/msl/crypto/JsonWebKey$Type;->valueOf(Ljava/lang/String;)Lcom/netflix/msl/crypto/JsonWebKey$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->type:Lcom/netflix/msl/crypto/JsonWebKey$Type;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 369
    if-eqz v4, :cond_6

    :try_start_2
    invoke-static {v4}, Lcom/netflix/msl/crypto/JsonWebKey$Usage;->valueOf(Ljava/lang/String;)Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->usage:Lcom/netflix/msl/crypto/JsonWebKey$Usage;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .line 373
    if-eqz v3, :cond_9

    .line 374
    const-class v0, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v5

    .line 375
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 377
    :try_start_3
    invoke-static {v0}, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->valueOf(Ljava/lang/String;)Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    .line 378
    :catch_0
    move-exception v0

    .line 379
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNIDENTIFIED_JWK_KEYOP:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v4, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    move-object v3, v1

    .line 353
    goto :goto_2

    :cond_4
    move-object v2, v1

    .line 355
    goto :goto_3

    :cond_5
    move-object v0, v1

    .line 357
    goto :goto_4

    .line 358
    :catch_1
    move-exception v0

    .line 359
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

    .line 365
    :catch_2
    move-exception v0

    .line 366
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNIDENTIFIED_JWK_TYPE:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v5, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    move-object v0, v1

    .line 369
    goto :goto_5

    .line 370
    :catch_3
    move-exception v0

    .line 371
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNIDENTIFIED_JWK_USAGE:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v4, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 382
    :cond_7
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyOps:Ljava/util/Set;

    .line 387
    :goto_7
    if-eqz v2, :cond_a

    :try_start_4
    invoke-static {v2}, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->fromString(Ljava/lang/String;)Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->algo:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5

    .line 395
    :try_start_5
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->type:Lcom/netflix/msl/crypto/JsonWebKey$Type;

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebKey$Type;->oct:Lcom/netflix/msl/crypto/JsonWebKey$Type;

    if-ne v0, v2, :cond_d

    .line 396
    const-string/jumbo v0, "k"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/JsonUtils;->b64urlDecode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->key:[B

    .line 397
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->key:[B

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->key:[B

    array-length v0, v0

    if-nez v0, :cond_b

    .line 398
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

    .line 447
    :catch_4
    move-exception v0

    .line 448
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 384
    :cond_9
    iput-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyOps:Ljava/util/Set;

    goto :goto_7

    :cond_a
    move-object v0, v1

    .line 387
    goto :goto_8

    .line 388
    :catch_5
    move-exception v0

    .line 389
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v3, Lcom/netflix/msl/MslError;->UNIDENTIFIED_JWK_ALGORITHM:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v3, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 399
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

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyPair:Ljava/security/KeyPair;

    .line 454
    :goto_9
    return-void

    .line 405
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->key:[B

    .line 406
    const-string/jumbo v0, "RSA"

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 409
    const-string/jumbo v0, "n"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/JsonUtils;->b64urlDecode(Ljava/lang/String;)[B

    move-result-object v0

    .line 410
    if-eqz v0, :cond_e

    array-length v2, v0

    if-nez v2, :cond_f

    .line 411
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

    .line 449
    :catch_6
    move-exception v0

    .line 450
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNSUPPORTED_JWK_ALGORITHM:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 412
    :cond_f
    :try_start_7
    new-instance v4, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v4, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 416
    const-string/jumbo v0, "e"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 417
    const-string/jumbo v0, "e"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/JsonUtils;->b64urlDecode(Ljava/lang/String;)[B

    move-result-object v0

    .line 418
    if-eqz v0, :cond_10

    array-length v2, v0

    if-nez v2, :cond_11

    .line 419
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

    .line 451
    :catch_7
    move-exception v0

    .line 452
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_JWK_KEYDATA:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 420
    :cond_11
    :try_start_8
    new-instance v2, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v2, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 421
    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v0, v4, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 422
    invoke-virtual {v3, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    move-object v2, v0

    .line 429
    :goto_a
    const-string/jumbo v0, "d"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 430
    const-string/jumbo v0, "d"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/JsonUtils;->b64urlDecode(Ljava/lang/String;)[B

    move-result-object v0

    .line 431
    if-eqz v0, :cond_12

    array-length v1, v0

    if-nez v1, :cond_14

    .line 432
    :cond_12
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->INVALID_JWK_KEYDATA:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "private exponent is empty"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :cond_13
    move-object v2, v1

    .line 424
    goto :goto_a

    .line 433
    :cond_14
    new-instance v1, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v1, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 434
    new-instance v0, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-direct {v0, v4, v1}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 435
    invoke-virtual {v3, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 441
    :goto_b
    if-nez v2, :cond_16

    if-nez v0, :cond_16

    .line 442
    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "no public or private key"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :cond_15
    move-object v0, v1

    .line 437
    goto :goto_b

    .line 444
    :cond_16
    new-instance v1, Ljava/security/KeyPair;

    invoke-direct {v1, v2, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    iput-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyPair:Ljava/security/KeyPair;

    .line 445
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

    .prologue
    const/4 v2, 0x0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    if-nez p5, :cond_0

    if-nez p6, :cond_0

    .line 205
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "At least one of the public key or private key must be provided."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    if-eqz p2, :cond_1

    .line 207
    sget-object v0, Lcom/netflix/msl/crypto/JsonWebKey$1;->$SwitchMap$com$netflix$msl$crypto$JsonWebKey$Algorithm:[I

    invoke-virtual {p2}, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 212
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "The algorithm must be an RSA algorithm."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_1
    :pswitch_0
    sget-object v0, Lcom/netflix/msl/crypto/JsonWebKey$Type;->rsa:Lcom/netflix/msl/crypto/JsonWebKey$Type;

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->type:Lcom/netflix/msl/crypto/JsonWebKey$Type;

    .line 217
    iput-object p1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->usage:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    .line 218
    iput-object v2, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyOps:Ljava/util/Set;

    .line 219
    iput-object p2, p0, Lcom/netflix/msl/crypto/JsonWebKey;->algo:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    .line 220
    iput-boolean p3, p0, Lcom/netflix/msl/crypto/JsonWebKey;->extractable:Z

    .line 221
    iput-object p4, p0, Lcom/netflix/msl/crypto/JsonWebKey;->id:Ljava/lang/String;

    .line 222
    new-instance v0, Ljava/security/KeyPair;

    invoke-direct {v0, p5, p6}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyPair:Ljava/security/KeyPair;

    .line 223
    iput-object v2, p0, Lcom/netflix/msl/crypto/JsonWebKey;->key:[B

    .line 224
    iput-object v2, p0, Lcom/netflix/msl/crypto/JsonWebKey;->secretKey:Ljavax/crypto/SecretKey;

    .line 225
    return-void

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/netflix/msl/crypto/JsonWebKey$Usage;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    if-eqz p2, :cond_0

    .line 240
    sget-object v0, Lcom/netflix/msl/crypto/JsonWebKey$1;->$SwitchMap$com$netflix$msl$crypto$JsonWebKey$Algorithm:[I

    invoke-virtual {p2}, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 246
    :pswitch_0
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "The algorithm must be a symmetric key algorithm."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    :pswitch_1
    sget-object v0, Lcom/netflix/msl/crypto/JsonWebKey$Type;->oct:Lcom/netflix/msl/crypto/JsonWebKey$Type;

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->type:Lcom/netflix/msl/crypto/JsonWebKey$Type;

    .line 251
    iput-object p1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->usage:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    .line 252
    iput-object v2, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyOps:Ljava/util/Set;

    .line 253
    iput-object p2, p0, Lcom/netflix/msl/crypto/JsonWebKey;->algo:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    .line 254
    iput-boolean p3, p0, Lcom/netflix/msl/crypto/JsonWebKey;->extractable:Z

    .line 255
    iput-object p4, p0, Lcom/netflix/msl/crypto/JsonWebKey;->id:Ljava/lang/String;

    .line 256
    iput-object v2, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyPair:Ljava/security/KeyPair;

    .line 257
    invoke-interface {p5}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->key:[B

    .line 258
    iput-object p5, p0, Lcom/netflix/msl/crypto/JsonWebKey;->secretKey:Ljavax/crypto/SecretKey;

    .line 259
    return-void

    .line 240
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

    .prologue
    const/4 v1, 0x0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    if-nez p5, :cond_0

    if-nez p6, :cond_0

    .line 277
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "At least one of the public key or private key must be provided."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    if-eqz p2, :cond_1

    .line 279
    sget-object v0, Lcom/netflix/msl/crypto/JsonWebKey$1;->$SwitchMap$com$netflix$msl$crypto$JsonWebKey$Algorithm:[I

    invoke-virtual {p2}, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 284
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "The algorithm must be an RSA algorithm."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_1
    :pswitch_0
    sget-object v0, Lcom/netflix/msl/crypto/JsonWebKey$Type;->rsa:Lcom/netflix/msl/crypto/JsonWebKey$Type;

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->type:Lcom/netflix/msl/crypto/JsonWebKey$Type;

    .line 289
    iput-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->usage:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    .line 290
    if-eqz p1, :cond_2

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyOps:Ljava/util/Set;

    .line 291
    iput-object p2, p0, Lcom/netflix/msl/crypto/JsonWebKey;->algo:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    .line 292
    iput-boolean p3, p0, Lcom/netflix/msl/crypto/JsonWebKey;->extractable:Z

    .line 293
    iput-object p4, p0, Lcom/netflix/msl/crypto/JsonWebKey;->id:Ljava/lang/String;

    .line 294
    new-instance v0, Ljava/security/KeyPair;

    invoke-direct {v0, p5, p6}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyPair:Ljava/security/KeyPair;

    .line 295
    iput-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->key:[B

    .line 296
    iput-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->secretKey:Ljavax/crypto/SecretKey;

    .line 297
    return-void

    :cond_2
    move-object v0, v1

    .line 290
    goto :goto_0

    .line 279
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

    .prologue
    const/4 v1, 0x0

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    if-eqz p2, :cond_0

    .line 312
    sget-object v0, Lcom/netflix/msl/crypto/JsonWebKey$1;->$SwitchMap$com$netflix$msl$crypto$JsonWebKey$Algorithm:[I

    invoke-virtual {p2}, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 318
    :pswitch_0
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "The algorithm must be a symmetric key algorithm."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_0
    :pswitch_1
    sget-object v0, Lcom/netflix/msl/crypto/JsonWebKey$Type;->oct:Lcom/netflix/msl/crypto/JsonWebKey$Type;

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->type:Lcom/netflix/msl/crypto/JsonWebKey$Type;

    .line 323
    iput-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->usage:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    .line 324
    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyOps:Ljava/util/Set;

    .line 325
    iput-object p2, p0, Lcom/netflix/msl/crypto/JsonWebKey;->algo:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    .line 326
    iput-boolean p3, p0, Lcom/netflix/msl/crypto/JsonWebKey;->extractable:Z

    .line 327
    iput-object p4, p0, Lcom/netflix/msl/crypto/JsonWebKey;->id:Ljava/lang/String;

    .line 328
    iput-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyPair:Ljava/security/KeyPair;

    .line 329
    invoke-interface {p5}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->key:[B

    .line 330
    iput-object p5, p0, Lcom/netflix/msl/crypto/JsonWebKey;->secretKey:Ljavax/crypto/SecretKey;

    .line 331
    return-void

    :cond_1
    move-object v0, v1

    .line 324
    goto :goto_0

    .line 312
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

    .prologue
    .line 184
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 186
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

    .prologue
    .line 481
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->algo:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
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

    .prologue
    .line 474
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyOps:Ljava/util/Set;

    return-object v0
.end method

.method public getRsaKeyPair()Ljava/security/KeyPair;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyPair:Ljava/security/KeyPair;

    return-object v0
.end method

.method public getSecretKey()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->secretKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 3

    .prologue
    .line 537
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->secretKey:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->secretKey:Ljavax/crypto/SecretKey;

    .line 544
    :goto_0
    return-object v0

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->key:[B

    if-nez v0, :cond_1

    .line 542
    const/4 v0, 0x0

    goto :goto_0

    .line 544
    :cond_1
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->key:[B

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 545
    :catch_0
    move-exception v0

    .line 546
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_SYMMETRIC_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getType()Lcom/netflix/msl/crypto/JsonWebKey$Type;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->type:Lcom/netflix/msl/crypto/JsonWebKey$Type;

    return-object v0
.end method

.method public getUsage()Lcom/netflix/msl/crypto/JsonWebKey$Usage;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->usage:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    return-object v0
.end method

.method public isExtractable()Z
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->extractable:Z

    return v0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 556
    :try_start_0
    new-instance v3, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v3}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 559
    const-string/jumbo v0, "kty"

    iget-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->type:Lcom/netflix/msl/crypto/JsonWebKey$Type;

    invoke-virtual {v1}, Lcom/netflix/msl/crypto/JsonWebKey$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 560
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->usage:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "use"

    iget-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->usage:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    invoke-virtual {v1}, Lcom/netflix/msl/crypto/JsonWebKey$Usage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyOps:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 562
    new-instance v1, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    .line 563
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

    .line 564
    invoke-virtual {v0}, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 603
    :catch_0
    move-exception v0

    .line 604
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

    .line 565
    :cond_1
    :try_start_1
    const-string/jumbo v0, "key_ops"

    invoke-virtual {v3, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 567
    :cond_2
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->algo:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "alg"

    iget-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->algo:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    invoke-virtual {v1}, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 568
    :cond_3
    const-string/jumbo v0, "extractable"

    iget-boolean v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->extractable:Z

    invoke-virtual {v3, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/netflix/android/org/json/JSONObject;

    .line 569
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->id:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "kid"

    iget-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->id:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 572
    :cond_4
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->type:Lcom/netflix/msl/crypto/JsonWebKey$Type;

    sget-object v1, Lcom/netflix/msl/crypto/JsonWebKey$Type;->oct:Lcom/netflix/msl/crypto/JsonWebKey$Type;

    if-ne v0, v1, :cond_6

    .line 573
    const-string/jumbo v0, "k"

    iget-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->key:[B

    invoke-static {v1}, Lcom/netflix/msl/util/JsonUtils;->b64urlEncode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 602
    :cond_5
    :goto_1
    invoke-virtual {v3}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 578
    :cond_6
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyPair:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 579
    iget-object v1, p0, Lcom/netflix/msl/crypto/JsonWebKey;->keyPair:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    .line 582
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 583
    :goto_2
    invoke-static {v2}, Lcom/netflix/msl/crypto/JsonWebKey;->bi2bytes(Ljava/math/BigInteger;)[B

    move-result-object v2

    .line 584
    const-string/jumbo v4, "n"

    invoke-static {v2}, Lcom/netflix/msl/util/JsonUtils;->b64urlEncode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 587
    if-eqz v0, :cond_7

    .line 588
    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    .line 589
    invoke-static {v0}, Lcom/netflix/msl/crypto/JsonWebKey;->bi2bytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 590
    const-string/jumbo v2, "e"

    invoke-static {v0}, Lcom/netflix/msl/util/JsonUtils;->b64urlEncode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 594
    :cond_7
    if-eqz v1, :cond_5

    .line 595
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    .line 596
    invoke-static {v0}, Lcom/netflix/msl/crypto/JsonWebKey;->bi2bytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 597
    const-string/jumbo v1, "d"

    invoke-static {v0}, Lcom/netflix/msl/util/JsonUtils;->b64urlEncode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_1

    .line 582
    :cond_8
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;
    :try_end_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_2
.end method
