.class public Lcom/netflix/msl/tokens/MasterToken;
.super Ljava/lang/Object;
.source "MasterToken.java"

# interfaces
.implements Lcom/netflix/android/org/json/JSONString;


# static fields
.field private static final KEY_ENCRYPTION_ALGORITHM:Ljava/lang/String; = "encryptionalgorithm"

.field private static final KEY_ENCRYPTION_KEY:Ljava/lang/String; = "encryptionkey"

.field private static final KEY_EXPIRATION:Ljava/lang/String; = "expiration"

.field private static final KEY_HMAC_KEY:Ljava/lang/String; = "hmackey"

.field private static final KEY_IDENTITY:Ljava/lang/String; = "identity"

.field private static final KEY_ISSUER_DATA:Ljava/lang/String; = "issuerdata"

.field private static final KEY_RENEWAL_WINDOW:Ljava/lang/String; = "renewalwindow"

.field private static final KEY_SEQUENCE_NUMBER:Ljava/lang/String; = "sequencenumber"

.field private static final KEY_SERIAL_NUMBER:Ljava/lang/String; = "serialnumber"

.field private static final KEY_SESSIONDATA:Ljava/lang/String; = "sessiondata"

.field private static final KEY_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final KEY_SIGNATURE_ALGORITHM:Ljava/lang/String; = "signaturealgorithm"

.field private static final KEY_SIGNATURE_KEY:Ljava/lang/String; = "signaturekey"

.field private static final KEY_TOKENDATA:Ljava/lang/String; = "tokendata"

.field private static final MILLISECONDS_PER_SECOND:J = 0x3e8L


# instance fields
.field private final ctx:Lcom/netflix/msl/util/MslContext;

.field private final encryptionKey:Ljavax/crypto/SecretKey;

.field private final expiration:J

.field private final identity:Ljava/lang/String;

.field private final issuerData:Lcom/netflix/android/org/json/JSONObject;

.field private final renewalWindow:J

.field private final sequenceNumber:J

.field private final serialNumber:J

.field private final sessiondata:[B

.field private final signature:[B

.field private final signatureKey:Ljavax/crypto/SecretKey;

.field private final tokendata:[B

.field private final verified:Z


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x20000000000000L

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Lcom/netflix/msl/tokens/MasterToken;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 270
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v1

    .line 275
    :try_start_0
    const-string/jumbo v2, "tokendata"

    invoke-virtual {p2, v2}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/tokens/MasterToken;->tokendata:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :try_start_1
    iget-object v2, p0, Lcom/netflix/msl/tokens/MasterToken;->tokendata:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/msl/tokens/MasterToken;->tokendata:[B

    array-length v2, v2

    if-nez v2, :cond_1

    .line 280
    :cond_0
    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lcom/netflix/msl/MslError;->MASTERTOKEN_TOKENDATA_MISSING:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mastertoken "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mastertoken "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 276
    :catch_1
    move-exception v0

    .line 277
    :try_start_2
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MASTERTOKEN_TOKENDATA_INVALID:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mastertoken "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 282
    :cond_1
    :try_start_3
    const-string/jumbo v2, "signature"

    invoke-virtual {p2, v2}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/tokens/MasterToken;->signature:[B
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 286
    :try_start_4
    iget-object v2, p0, Lcom/netflix/msl/tokens/MasterToken;->tokendata:[B

    iget-object v3, p0, Lcom/netflix/msl/tokens/MasterToken;->signature:[B

    invoke-interface {v1, v2, v3}, Lcom/netflix/msl/crypto/ICryptoContext;->verify([B[B)Z

    move-result v2

    iput-boolean v2, p0, Lcom/netflix/msl/tokens/MasterToken;->verified:Z
    :try_end_4
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 292
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/msl/tokens/MasterToken;->tokendata:[B

    sget-object v4, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 294
    :try_start_5
    new-instance v3, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v3, v2}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 295
    const-string/jumbo v4, "renewalwindow"

    invoke-virtual {v3, v4}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/msl/tokens/MasterToken;->renewalWindow:J

    .line 296
    const-string/jumbo v4, "expiration"

    invoke-virtual {v3, v4}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/msl/tokens/MasterToken;->expiration:J

    .line 297
    iget-wide v4, p0, Lcom/netflix/msl/tokens/MasterToken;->expiration:J

    iget-wide v6, p0, Lcom/netflix/msl/tokens/MasterToken;->renewalWindow:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 298
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->MASTERTOKEN_EXPIRES_BEFORE_RENEWAL:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mastertokendata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    .line 314
    :catch_2
    move-exception v0

    .line 315
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v3, Lcom/netflix/msl/MslError;->MASTERTOKEN_TOKENDATA_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mastertokendata "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 283
    :catch_3
    move-exception v0

    .line 284
    :try_start_6
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MASTERTOKEN_SIGNATURE_INVALID:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mastertoken "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    .line 299
    :cond_2
    :try_start_7
    const-string/jumbo v4, "sequencenumber"

    invoke-virtual {v3, v4}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    .line 300
    iget-wide v4, p0, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    cmp-long v4, v4, v8

    if-ltz v4, :cond_3

    iget-wide v4, p0, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    cmp-long v4, v4, v10

    if-lez v4, :cond_4

    .line 301
    :cond_3
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->MASTERTOKEN_SEQUENCE_NUMBER_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mastertokendata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_4
    const-string/jumbo v4, "serialnumber"

    invoke-virtual {v3, v4}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/msl/tokens/MasterToken;->serialNumber:J

    .line 303
    iget-wide v4, p0, Lcom/netflix/msl/tokens/MasterToken;->serialNumber:J

    cmp-long v4, v4, v8

    if-ltz v4, :cond_5

    iget-wide v4, p0, Lcom/netflix/msl/tokens/MasterToken;->serialNumber:J

    cmp-long v4, v4, v10

    if-lez v4, :cond_6

    .line 304
    :cond_5
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->MASTERTOKEN_SERIAL_NUMBER_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mastertokendata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2

    .line 307
    :cond_6
    :try_start_8
    const-string/jumbo v4, "sessiondata"

    invoke-virtual {v3, v4}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2

    move-result-object v4

    .line 311
    if-eqz v4, :cond_7

    :try_start_9
    array-length v5, v4

    if-nez v5, :cond_8

    .line 312
    :cond_7
    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lcom/netflix/msl/MslError;->MASTERTOKEN_SESSIONDATA_MISSING:Lcom/netflix/msl/MslError;

    const-string/jumbo v4, "sessiondata"

    invoke-virtual {v3, v4}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 308
    :catch_4
    move-exception v0

    .line 309
    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lcom/netflix/msl/MslError;->MASTERTOKEN_SESSIONDATA_INVALID:Lcom/netflix/msl/MslError;

    const-string/jumbo v4, "sessiondata"

    invoke-virtual {v3, v4}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_8
    iget-boolean v3, p0, Lcom/netflix/msl/tokens/MasterToken;->verified:Z

    if-eqz v3, :cond_a

    invoke-interface {v1, v4}, Lcom/netflix/msl/crypto/ICryptoContext;->decrypt([B)[B

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/netflix/msl/tokens/MasterToken;->sessiondata:[B
    :try_end_9
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2

    .line 319
    iget-object v1, p0, Lcom/netflix/msl/tokens/MasterToken;->sessiondata:[B

    if-eqz v1, :cond_c

    .line 321
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/msl/tokens/MasterToken;->sessiondata:[B

    sget-object v3, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 325
    :try_start_a
    new-instance v2, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v2, v1}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 326
    const-string/jumbo v3, "issuerdata"

    invoke-virtual {v2, v3}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string/jumbo v0, "issuerdata"

    invoke-virtual {v2, v0}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    :cond_9
    iput-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->issuerData:Lcom/netflix/android/org/json/JSONObject;

    .line 327
    const-string/jumbo v0, "identity"

    invoke-virtual {v2, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->identity:Ljava/lang/String;

    .line 328
    const-string/jumbo v0, "encryptionkey"

    invoke-virtual {v2, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 329
    const-string/jumbo v0, "encryptionalgorithm"

    const-string/jumbo v4, "AES"

    invoke-virtual {v2, v0, v4}, Lcom/netflix/android/org/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 330
    const-string/jumbo v0, "signaturekey"

    invoke-virtual {v2, v0}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "signaturekey"

    .line 331
    invoke-virtual {v2, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    :goto_1
    const-string/jumbo v5, "signaturealgorithm"

    const-string/jumbo v6, "HmacSHA256"

    invoke-virtual {v2, v5, v6}, Lcom/netflix/android/org/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_a .. :try_end_a} :catch_5

    move-result-object v1

    .line 341
    :try_start_b
    invoke-static {v4}, Lcom/netflix/msl/MslConstants$EncryptionAlgo;->fromString(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$EncryptionAlgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/msl/MslConstants$EncryptionAlgo;->toString()Ljava/lang/String;

    move-result-object v2

    .line 342
    invoke-static {v1}, Lcom/netflix/msl/MslConstants$SignatureAlgo;->fromString(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$SignatureAlgo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netflix/msl/MslConstants$SignatureAlgo;->toString()Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_6

    move-result-object v1

    .line 349
    :try_start_c
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v3}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v4, v3, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v4, p0, Lcom/netflix/msl/tokens/MasterToken;->encryptionKey:Ljavax/crypto/SecretKey;

    .line 350
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcom/netflix/msl/tokens/MasterToken;->signatureKey:Ljavax/crypto/SecretKey;
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_7

    .line 360
    :goto_2
    return-void

    :cond_a
    move-object v1, v0

    .line 313
    goto/16 :goto_0

    .line 331
    :cond_b
    :try_start_d
    const-string/jumbo v0, "hmackey"

    .line 332
    invoke-virtual {v2, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_d .. :try_end_d} :catch_5

    move-result-object v0

    goto :goto_1

    .line 334
    :catch_5
    move-exception v0

    .line 335
    new-instance v2, Lcom/netflix/msl/MslEncodingException;

    sget-object v3, Lcom/netflix/msl/MslError;->MASTERTOKEN_SESSIONDATA_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sessiondata "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 343
    :catch_6
    move-exception v0

    .line 344
    new-instance v2, Lcom/netflix/msl/MslCryptoException;

    sget-object v3, Lcom/netflix/msl/MslError;->UNIDENTIFIED_ALGORITHM:Lcom/netflix/msl/MslError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "encryption algorithm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; signature algorithm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 351
    :catch_7
    move-exception v0

    .line 352
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->MASTERTOKEN_KEY_CREATION_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 355
    :cond_c
    iput-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->issuerData:Lcom/netflix/android/org/json/JSONObject;

    .line 356
    iput-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->identity:Ljava/lang/String;

    .line 357
    iput-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->encryptionKey:Ljavax/crypto/SecretKey;

    .line 358
    iput-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->signatureKey:Ljavax/crypto/SecretKey;

    goto :goto_2
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Ljava/util/Date;Ljava/util/Date;JJLcom/netflix/android/org/json/JSONObject;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V
    .locals 10

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-virtual {p3, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v3, "Cannot construct a master token that expires before its renewal window opens."

    invoke-direct {v2, v3}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 190
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-ltz v2, :cond_1

    const-wide/high16 v2, 0x20000000000000L

    cmp-long v2, p4, v2

    if-lez v2, :cond_2

    .line 191
    :cond_1
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sequence number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is outside the valid range."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-ltz v2, :cond_3

    const-wide/high16 v2, 0x20000000000000L

    cmp-long v2, p6, v2

    if-lez v2, :cond_4

    .line 193
    :cond_3
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Serial number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is outside the valid range."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 195
    :cond_4
    iput-object p1, p0, Lcom/netflix/msl/tokens/MasterToken;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 196
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->renewalWindow:J

    .line 197
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->expiration:J

    .line 198
    iput-wide p4, p0, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    .line 199
    move-wide/from16 v0, p6

    iput-wide v0, p0, Lcom/netflix/msl/tokens/MasterToken;->serialNumber:J

    .line 200
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->issuerData:Lcom/netflix/android/org/json/JSONObject;

    .line 201
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->identity:Ljava/lang/String;

    .line 202
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->encryptionKey:Ljavax/crypto/SecretKey;

    .line 203
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->signatureKey:Ljavax/crypto/SecretKey;

    .line 206
    new-instance v2, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v2}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 209
    :try_start_0
    iget-object v3, p0, Lcom/netflix/msl/tokens/MasterToken;->encryptionKey:Ljavax/crypto/SecretKey;

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    .line 210
    iget-object v4, p0, Lcom/netflix/msl/tokens/MasterToken;->encryptionKey:Ljavax/crypto/SecretKey;

    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/msl/MslConstants$EncryptionAlgo;->fromString(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$EncryptionAlgo;

    move-result-object v4

    .line 211
    iget-object v5, p0, Lcom/netflix/msl/tokens/MasterToken;->signatureKey:Ljavax/crypto/SecretKey;

    invoke-interface {v5}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v5

    .line 212
    iget-object v6, p0, Lcom/netflix/msl/tokens/MasterToken;->signatureKey:Ljavax/crypto/SecretKey;

    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/netflix/msl/MslConstants$SignatureAlgo;->fromString(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$SignatureAlgo;

    move-result-object v6

    .line 215
    iget-object v7, p0, Lcom/netflix/msl/tokens/MasterToken;->issuerData:Lcom/netflix/android/org/json/JSONObject;

    if-eqz v7, :cond_5

    .line 216
    const-string/jumbo v7, "issuerdata"

    iget-object v8, p0, Lcom/netflix/msl/tokens/MasterToken;->issuerData:Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v2, v7, v8}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 217
    :cond_5
    const-string/jumbo v7, "identity"

    iget-object v8, p0, Lcom/netflix/msl/tokens/MasterToken;->identity:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 218
    const-string/jumbo v7, "encryptionkey"

    invoke-virtual {v2, v7, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 219
    const-string/jumbo v3, "encryptionalgorithm"

    invoke-virtual {v2, v3, v4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 220
    const-string/jumbo v3, "hmackey"

    invoke-virtual {v2, v3, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 221
    const-string/jumbo v3, "signaturekey"

    invoke-virtual {v2, v3, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 222
    const-string/jumbo v3, "signaturealgorithm"

    invoke-virtual {v2, v3, v6}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 223
    invoke-virtual {v2}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/tokens/MasterToken;->sessiondata:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 231
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v2

    .line 232
    iget-object v3, p0, Lcom/netflix/msl/tokens/MasterToken;->sessiondata:[B

    invoke-interface {v2, v3}, Lcom/netflix/msl/crypto/ICryptoContext;->encrypt([B)[B

    move-result-object v3

    .line 236
    :try_start_1
    new-instance v4, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v4}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 237
    const-string/jumbo v5, "renewalwindow"

    iget-wide v6, p0, Lcom/netflix/msl/tokens/MasterToken;->renewalWindow:J

    invoke-virtual {v4, v5, v6, v7}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 238
    const-string/jumbo v5, "expiration"

    iget-wide v6, p0, Lcom/netflix/msl/tokens/MasterToken;->expiration:J

    invoke-virtual {v4, v5, v6, v7}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 239
    const-string/jumbo v5, "sequencenumber"

    iget-wide v6, p0, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    invoke-virtual {v4, v5, v6, v7}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 240
    const-string/jumbo v5, "serialnumber"

    iget-wide v6, p0, Lcom/netflix/msl/tokens/MasterToken;->serialNumber:J

    invoke-virtual {v4, v5, v6, v7}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 241
    const-string/jumbo v5, "sessiondata"

    invoke-static {v3}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 242
    invoke-virtual {v4}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/msl/tokens/MasterToken;->tokendata:[B
    :try_end_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 248
    iget-object v3, p0, Lcom/netflix/msl/tokens/MasterToken;->tokendata:[B

    invoke-interface {v2, v3}, Lcom/netflix/msl/crypto/ICryptoContext;->sign([B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/tokens/MasterToken;->signature:[B

    .line 249
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/netflix/msl/tokens/MasterToken;->verified:Z

    .line 250
    return-void

    .line 224
    :catch_0
    move-exception v2

    .line 225
    new-instance v3, Lcom/netflix/msl/MslCryptoException;

    sget-object v4, Lcom/netflix/msl/MslError;->UNIDENTIFIED_ALGORITHM:Lcom/netflix/msl/MslError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "encryption algorithm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/netflix/msl/tokens/MasterToken;->encryptionKey:Ljavax/crypto/SecretKey;

    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; signature algorithm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/netflix/msl/tokens/MasterToken;->signatureKey:Ljavax/crypto/SecretKey;

    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 226
    :catch_1
    move-exception v2

    .line 227
    new-instance v3, Lcom/netflix/msl/MslEncodingException;

    sget-object v4, Lcom/netflix/msl/MslError;->JSON_ENCODE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v5, "sessiondata"

    invoke-direct {v3, v4, v5, v2}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 243
    :catch_2
    move-exception v2

    .line 244
    new-instance v3, Lcom/netflix/msl/MslEncodingException;

    sget-object v4, Lcom/netflix/msl/MslError;->JSON_ENCODE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v5, "mastertokendata"

    invoke-direct {v3, v4, v5, v2}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 598
    if-ne p0, p1, :cond_1

    .line 605
    :cond_0
    :goto_0
    return v0

    .line 599
    :cond_1
    instance-of v2, p1, Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v2, :cond_3

    .line 600
    check-cast p1, Lcom/netflix/msl/tokens/MasterToken;

    .line 601
    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->serialNumber:J

    iget-wide v4, p1, Lcom/netflix/msl/tokens/MasterToken;->serialNumber:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    iget-wide v4, p1, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->expiration:J

    iget-wide v4, p1, Lcom/netflix/msl/tokens/MasterToken;->expiration:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 605
    goto :goto_0
.end method

.method public getEncryptionKey()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->encryptionKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getExpiration()Ljava/util/Date;
    .locals 6

    .prologue
    .line 412
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->expiration:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->identity:Ljava/lang/String;

    return-object v0
.end method

.method public getIssuerData()Lcom/netflix/android/org/json/JSONObject;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->issuerData:Lcom/netflix/android/org/json/JSONObject;

    return-object v0
.end method

.method public getRenewalWindow()Ljava/util/Date;
    .locals 6

    .prologue
    .line 380
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->renewalWindow:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getSequenceNumber()J
    .locals 2

    .prologue
    .line 444
    iget-wide v0, p0, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    return-wide v0
.end method

.method public getSerialNumber()J
    .locals 2

    .prologue
    .line 451
    iget-wide v0, p0, Lcom/netflix/msl/tokens/MasterToken;->serialNumber:J

    return-wide v0
.end method

.method public getSignatureKey()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->signatureKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->serialNumber:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->expiration:J

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

.method public isDecrypted()Z
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->sessiondata:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpired(Ljava/util/Date;)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 433
    if-eqz p1, :cond_2

    .line 434
    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->expiration:J

    mul-long/2addr v2, v4

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 437
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 434
    goto :goto_0

    .line 435
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/msl/tokens/MasterToken;->isVerified()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 436
    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->expiration:J

    mul-long/2addr v2, v4

    iget-object v4, p0, Lcom/netflix/msl/tokens/MasterToken;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v4}, Lcom/netflix/msl/util/MslContext;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 437
    goto :goto_0
.end method

.method public isNewerThan(Lcom/netflix/msl/tokens/MasterToken;)Z
    .locals 10

    .prologue
    const-wide/high16 v8, 0x20000000000000L

    const-wide/16 v6, 0x7f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 470
    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    iget-wide v4, p1, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 471
    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->expiration:J

    iget-wide v4, p1, Lcom/netflix/msl/tokens/MasterToken;->expiration:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 483
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 471
    goto :goto_0

    .line 475
    :cond_2
    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    iget-wide v4, p1, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 476
    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    sub-long/2addr v2, v8

    add-long/2addr v2, v6

    .line 477
    iget-wide v4, p1, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    cmp-long v2, v4, v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 482
    :cond_3
    iget-wide v2, p1, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    sub-long/2addr v2, v8

    add-long/2addr v2, v6

    .line 483
    iget-wide v4, p0, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    cmp-long v2, v4, v2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isRenewable(Ljava/util/Date;)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 401
    if-eqz p1, :cond_2

    .line 402
    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->renewalWindow:J

    mul-long/2addr v2, v4

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 405
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 402
    goto :goto_0

    .line 403
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/msl/tokens/MasterToken;->isVerified()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->renewalWindow:J

    mul-long/2addr v2, v4

    iget-object v4, p0, Lcom/netflix/msl/tokens/MasterToken;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v4}, Lcom/netflix/msl/util/MslContext;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isVerified()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/netflix/msl/tokens/MasterToken;->verified:Z

    return v0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 559
    :try_start_0
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 560
    const-string/jumbo v1, "tokendata"

    iget-object v2, p0, Lcom/netflix/msl/tokens/MasterToken;->tokendata:[B

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 561
    const-string/jumbo v1, "signature"

    iget-object v2, p0, Lcom/netflix/msl/tokens/MasterToken;->signature:[B

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 562
    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 563
    :catch_0
    move-exception v0

    .line 564
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
    .line 574
    :try_start_0
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 575
    const-string/jumbo v1, "renewalwindow"

    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->renewalWindow:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 576
    const-string/jumbo v1, "expiration"

    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->expiration:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 577
    const-string/jumbo v1, "sequencenumber"

    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 578
    const-string/jumbo v1, "serialnumber"

    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->serialNumber:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 579
    const-string/jumbo v1, "sessiondata"

    const-string/jumbo v2, "(redacted)"

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 581
    new-instance v1, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 582
    const-string/jumbo v2, "tokendata"

    invoke-virtual {v1, v2, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 583
    const-string/jumbo v0, "signature"

    iget-object v2, p0, Lcom/netflix/msl/tokens/MasterToken;->signature:[B

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 584
    invoke-virtual {v1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 585
    :catch_0
    move-exception v0

    .line 586
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
