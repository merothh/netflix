.class public Lcom/netflix/msl/tokens/ServiceToken;
.super Ljava/lang/Object;
.source "ServiceToken.java"

# interfaces
.implements Lcom/netflix/android/org/json/JSONString;


# static fields
.field private static final KEY_COMPRESSION_ALGORITHM:Ljava/lang/String; = "compressionalgo"

.field private static final KEY_ENCRYPTED:Ljava/lang/String; = "encrypted"

.field private static final KEY_MASTER_TOKEN_SERIAL_NUMBER:Ljava/lang/String; = "mtserialnumber"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_SERVICEDATA:Ljava/lang/String; = "servicedata"

.field private static final KEY_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final KEY_TOKENDATA:Ljava/lang/String; = "tokendata"

.field private static final KEY_USER_ID_TOKEN_SERIAL_NUMBER:Ljava/lang/String; = "uitserialnumber"


# instance fields
.field private final compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

.field private final encrypted:Z

.field private final mtSerialNumber:J

.field private final name:Ljava/lang/String;

.field private final servicedata:[B

.field private final signature:[B

.field private final tokendata:[B

.field private final uitSerialNumber:J

.field private final verified:Z


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Lcom/netflix/msl/crypto/ICryptoContext;)V
    .locals 6

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    :try_start_0
    const-string/jumbo v0, "tokendata"

    invoke-virtual {p2, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->tokendata:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_2

    .line 303
    :try_start_1
    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->tokendata:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->tokendata:[B

    array-length v0, v0

    if-nez v0, :cond_1

    .line 304
    :cond_0
    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lcom/netflix/msl/MslError;->SERVICETOKEN_TOKENDATA_MISSING:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "servicetoken "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslEncodingException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslEncodingException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0
    :try_end_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_2

    .line 311
    :catch_0
    move-exception v0

    .line 312
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "servicetoken "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, p3}, Lcom/netflix/msl/MslEncodingException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslEncodingException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0

    .line 300
    :catch_1
    move-exception v0

    .line 301
    :try_start_2
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->SERVICETOKEN_TOKENDATA_INVALID:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "servicetoken "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, p3}, Lcom/netflix/msl/MslEncodingException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslEncodingException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0
    :try_end_2
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_2 .. :try_end_2} :catch_2

    .line 313
    :catch_2
    move-exception v0

    .line 314
    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslCryptoException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslCryptoException;

    .line 315
    throw v0

    .line 306
    :cond_1
    :try_start_3
    const-string/jumbo v0, "signature"

    invoke-virtual {p2, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->signature:[B
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_3 .. :try_end_3} :catch_2

    .line 310
    if-eqz p5, :cond_3

    :try_start_4
    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->tokendata:[B

    iget-object v1, p0, Lcom/netflix/msl/tokens/ServiceToken;->signature:[B

    invoke-interface {p5, v0, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->verify([B[B)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->verified:Z
    :try_end_4
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_4 .. :try_end_4} :catch_2

    .line 319
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->tokendata:[B

    sget-object v2, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 321
    :try_start_5
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0, v1}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 322
    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->name:Ljava/lang/String;

    .line 323
    const-string/jumbo v2, "mtserialnumber"

    invoke-virtual {v0, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 324
    const-string/jumbo v2, "mtserialnumber"

    invoke-virtual {v0, v2}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    .line 325
    iget-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    iget-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    const-wide/high16 v4, 0x20000000000000L

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 326
    :cond_2
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v2, Lcom/netflix/msl/MslError;->SERVICETOKEN_MASTERTOKEN_SERIAL_NUMBER_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "servicetokendata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0
    :try_end_5
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_5 .. :try_end_5} :catch_5

    .line 374
    :catch_3
    move-exception v0

    .line 375
    new-instance v2, Lcom/netflix/msl/MslEncodingException;

    sget-object v3, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "servicetokendata "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, p3}, Lcom/netflix/msl/MslEncodingException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslEncodingException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0

    .line 307
    :catch_4
    move-exception v0

    .line 308
    :try_start_6
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->SERVICETOKEN_SIGNATURE_INVALID:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "servicetoken "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, p3}, Lcom/netflix/msl/MslEncodingException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslEncodingException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0
    :try_end_6
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_6 .. :try_end_6} :catch_2

    .line 310
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 328
    :cond_4
    const-wide/16 v2, -0x1

    :try_start_7
    iput-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    .line 330
    :cond_5
    const-string/jumbo v2, "uitserialnumber"

    invoke-virtual {v0, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 331
    const-string/jumbo v2, "uitserialnumber"

    invoke-virtual {v0, v2}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    .line 332
    iget-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    iget-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    const-wide/high16 v4, 0x20000000000000L

    cmp-long v2, v2, v4

    if-lez v2, :cond_8

    .line 333
    :cond_6
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v2, Lcom/netflix/msl/MslError;->SERVICETOKEN_USERIDTOKEN_SERIAL_NUMBER_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "servicetokendata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0
    :try_end_7
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_7 .. :try_end_7} :catch_5

    .line 376
    :catch_5
    move-exception v0

    .line 377
    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslCryptoException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslCryptoException;

    .line 378
    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslCryptoException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    .line 379
    throw v0

    .line 335
    :cond_7
    const-wide/16 v2, -0x1

    :try_start_8
    iput-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    .line 340
    :cond_8
    const-string/jumbo v2, "encrypted"

    invoke-virtual {v0, v2}, Lcom/netflix/android/org/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->encrypted:Z

    .line 341
    const-string/jumbo v2, "compressionalgo"

    invoke-virtual {v0, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 342
    const-string/jumbo v2, "compressionalgo"

    invoke-virtual {v0, v2}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_8 .. :try_end_8} :catch_5

    move-result-object v2

    .line 344
    :try_start_9
    invoke-static {v2}, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->valueOf(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_9 .. :try_end_9} :catch_5

    .line 355
    :goto_1
    :try_start_a
    const-string/jumbo v2, "servicedata"

    invoke-virtual {v0, v2}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    iget-boolean v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->verified:Z
    :try_end_a
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_a .. :try_end_a} :catch_5

    if-eqz v2, :cond_e

    .line 359
    :try_start_b
    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_7
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_b .. :try_end_b} :catch_3
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_b .. :try_end_b} :catch_5

    move-result-object v0

    .line 363
    if-nez v0, :cond_a

    .line 364
    :try_start_c
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v2, Lcom/netflix/msl/MslError;->SERVICETOKEN_SERVICEDATA_INVALID:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "servicetokendata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0

    .line 345
    :catch_6
    move-exception v0

    .line 346
    new-instance v3, Lcom/netflix/msl/MslException;

    sget-object v4, Lcom/netflix/msl/MslError;->UNIDENTIFIED_COMPRESSION:Lcom/netflix/msl/MslError;

    invoke-direct {v3, v4, v2, v0}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 349
    :cond_9
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    goto :goto_1

    .line 360
    :catch_7
    move-exception v0

    .line 361
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v2, Lcom/netflix/msl/MslError;->SERVICETOKEN_SERVICEDATA_INVALID:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "servicetokendata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0

    .line 365
    :cond_a
    iget-boolean v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->encrypted:Z

    if-eqz v2, :cond_b

    array-length v2, v0

    if-lez v2, :cond_b

    .line 366
    invoke-interface {p5, v0}, Lcom/netflix/msl/crypto/ICryptoContext;->decrypt([B)[B

    move-result-object v0

    .line 368
    :cond_b
    iget-object v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    .line 369
    invoke-static {v2, v0}, Lcom/netflix/msl/util/MslUtils;->uncompress(Lcom/netflix/msl/MslConstants$CompressionAlgorithm;[B)[B

    move-result-object v0

    :cond_c
    iput-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->servicedata:[B
    :try_end_c
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_c .. :try_end_c} :catch_3
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_c .. :try_end_c} :catch_5

    .line 383
    :goto_2
    iget-wide v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    if-eqz p3, :cond_d

    iget-wide v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    invoke-virtual {p3}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 384
    :cond_d
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->SERVICETOKEN_MASTERTOKEN_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "st mtserialnumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; mt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0

    .line 372
    :cond_e
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_3
    iput-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->servicedata:[B
    :try_end_d
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_d .. :try_end_d} :catch_3
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_2

    :cond_f
    const/4 v0, 0x0

    goto :goto_3

    .line 385
    :cond_10
    iget-wide v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    if-eqz p4, :cond_11

    iget-wide v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    invoke-virtual {p4}, Lcom/netflix/msl/tokens/UserIdToken;->getSerialNumber()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    .line 386
    :cond_11
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->SERVICETOKEN_USERIDTOKEN_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "st uitserialnumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; uit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0

    .line 387
    :cond_12
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Lcom/netflix/android/org/json/JSONObject;",
            "Lcom/netflix/msl/tokens/MasterToken;",
            "Lcom/netflix/msl/tokens/UserIdToken;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/crypto/ICryptoContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    invoke-static {p2, p5}, Lcom/netflix/msl/tokens/ServiceToken;->selectCryptoContext(Lcom/netflix/android/org/json/JSONObject;Ljava/util/Map;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/msl/tokens/ServiceToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Lcom/netflix/msl/crypto/ICryptoContext;)V

    .line 264
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;[BLcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;ZLcom/netflix/msl/MslConstants$CompressionAlgorithm;Lcom/netflix/msl/crypto/ICryptoContext;)V
    .locals 6

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    invoke-virtual {p5, p4}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Cannot construct a service token bound to a master token and user ID token where the user ID token is not bound to the same master token."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    if-eqz p7, :cond_6

    .line 179
    invoke-static {p7, p3}, Lcom/netflix/msl/util/MslUtils;->compress(Lcom/netflix/msl/MslConstants$CompressionAlgorithm;[B)[B

    move-result-object v0

    .line 183
    array-length v1, v0

    array-length v2, p3

    if-ge v1, v2, :cond_5

    .line 184
    iput-object p7, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    .line 195
    :goto_0
    iput-object p2, p0, Lcom/netflix/msl/tokens/ServiceToken;->name:Ljava/lang/String;

    .line 196
    if-eqz p4, :cond_7

    invoke-virtual {p4}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v2

    :goto_1
    iput-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    .line 197
    if-eqz p5, :cond_8

    invoke-virtual {p5}, Lcom/netflix/msl/tokens/UserIdToken;->getSerialNumber()J

    move-result-wide v2

    :goto_2
    iput-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    .line 198
    iput-object p3, p0, Lcom/netflix/msl/tokens/ServiceToken;->servicedata:[B

    .line 199
    iput-boolean p6, p0, Lcom/netflix/msl/tokens/ServiceToken;->encrypted:Z

    .line 204
    if-eqz p6, :cond_1

    :try_start_0
    array-length v1, v0

    if-lez v1, :cond_1

    invoke-interface {p8, v0}, Lcom/netflix/msl/crypto/ICryptoContext;->encrypt([B)[B
    :try_end_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 208
    :cond_1
    :try_start_1
    new-instance v1, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 209
    const-string/jumbo v2, "name"

    iget-object v3, p0, Lcom/netflix/msl/tokens/ServiceToken;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 210
    iget-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const-string/jumbo v2, "mtserialnumber"

    iget-wide v4, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 211
    :cond_2
    iget-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    const-string/jumbo v2, "uitserialnumber"

    iget-wide v4, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 212
    :cond_3
    const-string/jumbo v2, "encrypted"

    iget-boolean v3, p0, Lcom/netflix/msl/tokens/ServiceToken;->encrypted:Z

    invoke-virtual {v1, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/netflix/android/org/json/JSONObject;

    .line 213
    iget-object v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    if-eqz v2, :cond_4

    const-string/jumbo v2, "compressionalgo"

    iget-object v3, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    invoke-virtual {v3}, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 214
    :cond_4
    const-string/jumbo v2, "servicedata"

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 215
    invoke-virtual {v1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->tokendata:[B
    :try_end_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :try_start_2
    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->tokendata:[B

    invoke-interface {p8, v0}, Lcom/netflix/msl/crypto/ICryptoContext;->sign([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->signature:[B

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->verified:Z
    :try_end_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_2 .. :try_end_2} :catch_1

    .line 228
    return-void

    .line 187
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    move-object v0, p3

    .line 188
    goto/16 :goto_0

    .line 191
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    move-object v0, p3

    .line 192
    goto/16 :goto_0

    .line 196
    :cond_7
    const-wide/16 v2, -0x1

    goto/16 :goto_1

    .line 197
    :cond_8
    const-wide/16 v2, -0x1

    goto/16 :goto_2

    .line 216
    :catch_0
    move-exception v0

    .line 217
    :try_start_3
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_ENCODE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "servicetoken"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, p4}, Lcom/netflix/msl/MslEncodingException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/netflix/msl/MslEncodingException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0
    :try_end_3
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_3 .. :try_end_3} :catch_1

    .line 223
    :catch_1
    move-exception v0

    .line 224
    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslCryptoException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslCryptoException;

    .line 225
    invoke-virtual {v0, p5}, Lcom/netflix/msl/MslCryptoException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    .line 226
    throw v0
.end method

.method private static selectCryptoContext(Lcom/netflix/android/org/json/JSONObject;Ljava/util/Map;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/android/org/json/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/crypto/ICryptoContext;",
            ">;)",
            "Lcom/netflix/msl/crypto/ICryptoContext;"
        }
    .end annotation

    .prologue
    .line 129
    :try_start_0
    const-string/jumbo v0, "tokendata"

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    :try_start_1
    array-length v1, v0

    if-nez v1, :cond_1

    .line 134
    :cond_0
    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lcom/netflix/msl/MslError;->SERVICETOKEN_TOKENDATA_MISSING:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "servicetoken "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "servicetoken "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 130
    :catch_1
    move-exception v0

    .line 131
    :try_start_2
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->SERVICETOKEN_TOKENDATA_INVALID:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "servicetoken "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 135
    :cond_1
    new-instance v1, Lcom/netflix/android/org/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 136
    const-string/jumbo v0, "name"

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/crypto/ICryptoContext;

    .line 139
    :goto_0
    return-object v0

    :cond_2
    const-string/jumbo v0, ""

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/crypto/ICryptoContext;
    :try_end_2
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 572
    if-ne p0, p1, :cond_1

    .line 579
    :cond_0
    :goto_0
    return v0

    .line 573
    :cond_1
    instance-of v2, p1, Lcom/netflix/msl/tokens/ServiceToken;

    if-eqz v2, :cond_3

    .line 574
    check-cast p1, Lcom/netflix/msl/tokens/ServiceToken;

    .line 575
    iget-object v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/tokens/ServiceToken;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    iget-wide v4, p1, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    iget-wide v4, p1, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 579
    goto :goto_0
.end method

.method public getCompressionAlgo()Lcom/netflix/msl/MslConstants$CompressionAlgorithm;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->servicedata:[B

    return-object v0
.end method

.method public getMasterTokenSerialNumber()J
    .locals 2

    .prologue
    .line 453
    iget-wide v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIdTokenSerialNumber()J
    .locals 2

    .prologue
    .line 478
    iget-wide v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netflix/msl/tokens/ServiceToken;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z
    .locals 4

    .prologue
    .line 468
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBoundTo(Lcom/netflix/msl/tokens/UserIdToken;)Z
    .locals 4

    .prologue
    .line 496
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/msl/tokens/UserIdToken;->getSerialNumber()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDecrypted()Z
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->servicedata:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->servicedata:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->servicedata:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEncrypted()Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->encrypted:Z

    return v0
.end method

.method public isMasterTokenBound()Z
    .locals 4

    .prologue
    .line 460
    iget-wide v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnbound()Z
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 504
    iget-wide v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserIdTokenBound()Z
    .locals 4

    .prologue
    .line 488
    iget-wide v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerified()Z
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->verified:Z

    return v0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 534
    :try_start_0
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 535
    const-string/jumbo v1, "tokendata"

    iget-object v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->tokendata:[B

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 536
    const-string/jumbo v1, "signature"

    iget-object v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->signature:[B

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 537
    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 538
    :catch_0
    move-exception v0

    .line 539
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
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 549
    :try_start_0
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 550
    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 551
    const-string/jumbo v1, "mtserialnumber"

    iget-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 552
    const-string/jumbo v1, "uitserialnumber"

    iget-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 553
    const-string/jumbo v1, "servicedata"

    const-string/jumbo v2, "(redacted)"

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 555
    new-instance v1, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 556
    const-string/jumbo v2, "tokendata"

    invoke-virtual {v1, v2, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 557
    const-string/jumbo v0, "signature"

    iget-object v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->signature:[B

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 558
    invoke-virtual {v1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 559
    :catch_0
    move-exception v0

    .line 560
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
.end method
