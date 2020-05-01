.class public Lcom/netflix/msl/tokens/UserIdToken;
.super Ljava/lang/Object;
.source "UserIdToken.java"

# interfaces
.implements Lcom/netflix/android/org/json/JSONString;


# static fields
.field private static final KEY_EXPIRATION:Ljava/lang/String; = "expiration"

.field private static final KEY_IDENTITY:Ljava/lang/String; = "identity"

.field private static final KEY_ISSUER_DATA:Ljava/lang/String; = "issuerdata"

.field private static final KEY_MASTER_TOKEN_SERIAL_NUMBER:Ljava/lang/String; = "mtserialnumber"

.field private static final KEY_RENEWAL_WINDOW:Ljava/lang/String; = "renewalwindow"

.field private static final KEY_SERIAL_NUMBER:Ljava/lang/String; = "serialnumber"

.field private static final KEY_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final KEY_TOKENDATA:Ljava/lang/String; = "tokendata"

.field private static final KEY_USERDATA:Ljava/lang/String; = "userdata"

.field private static final MILLISECONDS_PER_SECOND:J = 0x3e8L


# instance fields
.field private final ctx:Lcom/netflix/msl/util/MslContext;

.field private final expiration:J

.field private final issuerData:Lcom/netflix/android/org/json/JSONObject;

.field private final mtSerialNumber:J

.field private final renewalWindow:J

.field private final serialNumber:J

.field private final signature:[B

.field private final tokendata:[B

.field private final user:Lcom/netflix/msl/tokens/MslUser;

.field private final userdata:[B

.field private final verified:Z


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/tokens/MasterToken;)V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x20000000000000L

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/netflix/msl/tokens/UserIdToken;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 212
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v1

    .line 217
    :try_start_0
    const-string/jumbo v2, "tokendata"

    invoke-virtual {p2, v2}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->tokendata:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :try_start_1
    iget-object v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->tokendata:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->tokendata:[B

    array-length v2, v2

    if-nez v2, :cond_1

    .line 222
    :cond_0
    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_TOKENDATA_MISSING:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "useridtoken "

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

    throw v0
    :try_end_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "useridtoken "

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

    throw v0

    .line 218
    :catch_1
    move-exception v0

    .line 219
    :try_start_2
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->USERIDTOKEN_TOKENDATA_INVALID:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "useridtoken "

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

    throw v0
    :try_end_2
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 224
    :cond_1
    :try_start_3
    const-string/jumbo v2, "signature"

    invoke-virtual {p2, v2}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->signature:[B
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 228
    :try_start_4
    iget-object v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->tokendata:[B

    iget-object v3, p0, Lcom/netflix/msl/tokens/UserIdToken;->signature:[B

    invoke-interface {v1, v2, v3}, Lcom/netflix/msl/crypto/ICryptoContext;->verify([B[B)Z

    move-result v2

    iput-boolean v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->verified:Z
    :try_end_4
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 234
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/msl/tokens/UserIdToken;->tokendata:[B

    sget-object v4, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 236
    :try_start_5
    new-instance v3, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v3, v2}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 237
    const-string/jumbo v4, "renewalwindow"

    invoke-virtual {v3, v4}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->renewalWindow:J

    .line 238
    const-string/jumbo v4, "expiration"

    invoke-virtual {v3, v4}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->expiration:J

    .line 239
    iget-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->expiration:J

    iget-wide v6, p0, Lcom/netflix/msl/tokens/UserIdToken;->renewalWindow:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 240
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_EXPIRES_BEFORE_RENEWAL:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "usertokendata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0
    :try_end_5
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_5 .. :try_end_5} :catch_4

    .line 256
    :catch_2
    move-exception v0

    .line 257
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v3, Lcom/netflix/msl/MslError;->USERIDTOKEN_TOKENDATA_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "usertokendata "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, p3}, Lcom/netflix/msl/MslEncodingException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0

    .line 225
    :catch_3
    move-exception v0

    .line 226
    :try_start_6
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->USERIDTOKEN_SIGNATURE_INVALID:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "useridtoken "

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

    throw v0
    :try_end_6
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    .line 241
    :cond_2
    :try_start_7
    const-string/jumbo v4, "mtserialnumber"

    invoke-virtual {v3, v4}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->mtSerialNumber:J

    .line 242
    iget-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->mtSerialNumber:J

    cmp-long v4, v4, v8

    if-ltz v4, :cond_3

    iget-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->mtSerialNumber:J

    cmp-long v4, v4, v10

    if-lez v4, :cond_4

    .line 243
    :cond_3
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_MASTERTOKEN_SERIAL_NUMBER_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "usertokendata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0
    :try_end_7
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_7 .. :try_end_7} :catch_4

    .line 258
    :catch_4
    move-exception v0

    .line 259
    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslCryptoException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslCryptoException;

    .line 260
    throw v0

    .line 244
    :cond_4
    :try_start_8
    const-string/jumbo v4, "serialnumber"

    invoke-virtual {v3, v4}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->serialNumber:J

    .line 245
    iget-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->serialNumber:J

    cmp-long v4, v4, v8

    if-ltz v4, :cond_5

    iget-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->serialNumber:J

    cmp-long v4, v4, v10

    if-lez v4, :cond_6

    .line 246
    :cond_5
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_SERIAL_NUMBER_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "usertokendata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0
    :try_end_8
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_8 .. :try_end_8} :catch_4

    .line 249
    :cond_6
    :try_start_9
    const-string/jumbo v4, "userdata"

    invoke-virtual {v3, v4}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_9 .. :try_end_9} :catch_4

    move-result-object v4

    .line 253
    if-eqz v4, :cond_7

    :try_start_a
    array-length v5, v4

    if-nez v5, :cond_8

    .line 254
    :cond_7
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_USERDATA_MISSING:Lcom/netflix/msl/MslError;

    const-string/jumbo v4, "userdata"

    invoke-virtual {v3, v4}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0

    .line 250
    :catch_5
    move-exception v0

    .line 251
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_USERDATA_INVALID:Lcom/netflix/msl/MslError;

    const-string/jumbo v4, "userdata"

    invoke-virtual {v3, v4}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0

    .line 255
    :cond_8
    iget-boolean v3, p0, Lcom/netflix/msl/tokens/UserIdToken;->verified:Z

    if-eqz v3, :cond_b

    invoke-interface {v1, v4}, Lcom/netflix/msl/crypto/ICryptoContext;->decrypt([B)[B

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/netflix/msl/tokens/UserIdToken;->userdata:[B
    :try_end_a
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_a .. :try_end_a} :catch_4

    .line 264
    iget-object v1, p0, Lcom/netflix/msl/tokens/UserIdToken;->userdata:[B

    if-eqz v1, :cond_d

    .line 265
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->userdata:[B

    sget-object v3, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 267
    :try_start_b
    new-instance v2, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v2, v1}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 268
    const-string/jumbo v3, "issuerdata"

    invoke-virtual {v2, v3}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string/jumbo v0, "issuerdata"

    invoke-virtual {v2, v0}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    :cond_9
    iput-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->issuerData:Lcom/netflix/android/org/json/JSONObject;

    .line 269
    const-string/jumbo v0, "identity"

    invoke-virtual {v2, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c

    .line 271
    :cond_a
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v2, Lcom/netflix/msl/MslError;->USERIDTOKEN_IDENTITY_INVALID:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userdata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0
    :try_end_b
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_b .. :try_end_b} :catch_6

    .line 276
    :catch_6
    move-exception v0

    .line 277
    new-instance v2, Lcom/netflix/msl/MslEncodingException;

    sget-object v3, Lcom/netflix/msl/MslError;->USERIDTOKEN_USERDATA_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "userdata "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, p3}, Lcom/netflix/msl/MslEncodingException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0

    :cond_b
    move-object v1, v0

    .line 255
    goto :goto_0

    .line 272
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;

    move-result-object v2

    .line 273
    invoke-interface {v2, p1, v0}, Lcom/netflix/msl/tokens/TokenFactory;->createUser(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;)Lcom/netflix/msl/tokens/MslUser;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->user:Lcom/netflix/msl/tokens/MslUser;

    .line 274
    iget-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->user:Lcom/netflix/msl/tokens/MslUser;

    if-nez v0, :cond_e

    .line 275
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "TokenFactory.createUser() returned null in violation of the interface contract."

    invoke-direct {v0, v2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_c .. :try_end_c} :catch_6

    .line 280
    :cond_d
    iput-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->issuerData:Lcom/netflix/android/org/json/JSONObject;

    .line 281
    iput-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->user:Lcom/netflix/msl/tokens/MslUser;

    .line 285
    :cond_e
    if-eqz p3, :cond_f

    iget-wide v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->mtSerialNumber:J

    invoke-virtual {p3}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 286
    :cond_f
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_MASTERTOKEN_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uit mtserialnumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->mtSerialNumber:J

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

    throw v0

    .line 287
    :cond_10
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Ljava/util/Date;Ljava/util/Date;Lcom/netflix/msl/tokens/MasterToken;JLcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/tokens/MslUser;)V
    .locals 7

    .prologue
    const-wide/16 v2, 0x3e8

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p3, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Cannot construct a user ID token that expires before its renewal window opens."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    if-nez p4, :cond_1

    .line 139
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Cannot construct a user ID token without a master token."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-ltz v0, :cond_2

    const-wide/high16 v0, 0x20000000000000L

    cmp-long v0, p5, v0

    if-lez v0, :cond_3

    .line 142
    :cond_2
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Serial number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is outside the valid range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_3
    iput-object p1, p0, Lcom/netflix/msl/tokens/UserIdToken;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 145
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->renewalWindow:J

    .line 146
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->expiration:J

    .line 147
    invoke-virtual {p4}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->mtSerialNumber:J

    .line 148
    iput-wide p5, p0, Lcom/netflix/msl/tokens/UserIdToken;->serialNumber:J

    .line 149
    iput-object p7, p0, Lcom/netflix/msl/tokens/UserIdToken;->issuerData:Lcom/netflix/android/org/json/JSONObject;

    .line 150
    iput-object p8, p0, Lcom/netflix/msl/tokens/UserIdToken;->user:Lcom/netflix/msl/tokens/MslUser;

    .line 153
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/netflix/msl/tokens/UserIdToken;->issuerData:Lcom/netflix/android/org/json/JSONObject;

    if-eqz v1, :cond_4

    .line 156
    const-string/jumbo v1, "issuerdata"

    iget-object v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->issuerData:Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 157
    :cond_4
    const-string/jumbo v1, "identity"

    invoke-interface {p8}, Lcom/netflix/msl/tokens/MslUser;->getEncoded()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 158
    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->userdata:[B
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :try_start_1
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/netflix/msl/tokens/UserIdToken;->userdata:[B

    invoke-interface {v0, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->encrypt([B)[B
    :try_end_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 170
    :try_start_2
    new-instance v2, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v2}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 171
    const-string/jumbo v3, "renewalwindow"

    iget-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->renewalWindow:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 172
    const-string/jumbo v3, "expiration"

    iget-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->expiration:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 173
    const-string/jumbo v3, "mtserialnumber"

    iget-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->mtSerialNumber:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 174
    const-string/jumbo v3, "serialnumber"

    iget-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->serialNumber:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 175
    const-string/jumbo v3, "userdata"

    invoke-static {v1}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 176
    invoke-virtual {v2}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/tokens/UserIdToken;->tokendata:[B
    :try_end_2
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_2 .. :try_end_2} :catch_2

    .line 182
    :try_start_3
    iget-object v1, p0, Lcom/netflix/msl/tokens/UserIdToken;->tokendata:[B

    invoke-interface {v0, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->sign([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->signature:[B

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->verified:Z
    :try_end_3
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_3 .. :try_end_3} :catch_2

    .line 188
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_ENCODE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "userdata"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 177
    :catch_1
    move-exception v0

    .line 178
    :try_start_4
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_ENCODE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "usertokendata"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, p4}, Lcom/netflix/msl/MslEncodingException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0
    :try_end_4
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_4 .. :try_end_4} :catch_2

    .line 184
    :catch_2
    move-exception v0

    .line 185
    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslCryptoException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslCryptoException;

    .line 186
    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 480
    if-ne p0, p1, :cond_1

    .line 486
    :cond_0
    :goto_0
    return v0

    .line 481
    :cond_1
    instance-of v2, p1, Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v2, :cond_3

    .line 482
    check-cast p1, Lcom/netflix/msl/tokens/UserIdToken;

    .line 483
    iget-wide v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->serialNumber:J

    iget-wide v4, p1, Lcom/netflix/msl/tokens/UserIdToken;->serialNumber:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->mtSerialNumber:J

    iget-wide v4, p1, Lcom/netflix/msl/tokens/UserIdToken;->mtSerialNumber:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 486
    goto :goto_0
.end method

.method public getExpiration()Ljava/util/Date;
    .locals 6

    .prologue
    .line 339
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->expiration:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getIssuerData()Lcom/netflix/android/org/json/JSONObject;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->issuerData:Lcom/netflix/android/org/json/JSONObject;

    return-object v0
.end method

.method public getMasterTokenSerialNumber()J
    .locals 2

    .prologue
    .line 397
    iget-wide v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->mtSerialNumber:J

    return-wide v0
.end method

.method public getRenewalWindow()Ljava/util/Date;
    .locals 6

    .prologue
    .line 307
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->renewalWindow:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getSerialNumber()J
    .locals 2

    .prologue
    .line 387
    iget-wide v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->serialNumber:J

    return-wide v0
.end method

.method public getUser()Lcom/netflix/msl/tokens/MslUser;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->user:Lcom/netflix/msl/tokens/MslUser;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->serialNumber:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->mtSerialNumber:J

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
    .line 405
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->mtSerialNumber:J

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
    .line 293
    iget-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->user:Lcom/netflix/msl/tokens/MslUser;

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

    .line 360
    if-eqz p1, :cond_2

    .line 361
    iget-wide v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->expiration:J

    mul-long/2addr v2, v4

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 364
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 361
    goto :goto_0

    .line 362
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/msl/tokens/UserIdToken;->isVerified()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 363
    iget-wide v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->expiration:J

    mul-long/2addr v2, v4

    iget-object v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v4}, Lcom/netflix/msl/util/MslContext;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 364
    goto :goto_0
.end method

.method public isRenewable(Ljava/util/Date;)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 328
    if-eqz p1, :cond_2

    .line 329
    iget-wide v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->renewalWindow:J

    mul-long/2addr v2, v4

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 329
    goto :goto_0

    .line 330
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/msl/tokens/UserIdToken;->isVerified()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    iget-wide v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->renewalWindow:J

    mul-long/2addr v2, v4

    iget-object v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->ctx:Lcom/netflix/msl/util/MslContext;

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
    .line 300
    iget-boolean v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->verified:Z

    return v0
.end method

.method public final toJSONString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 441
    :try_start_0
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 442
    const-string/jumbo v1, "tokendata"

    iget-object v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->tokendata:[B

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 443
    const-string/jumbo v1, "signature"

    iget-object v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->signature:[B

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 444
    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 445
    :catch_0
    move-exception v0

    .line 446
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
    .line 456
    :try_start_0
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 457
    const-string/jumbo v1, "renewalwindow"

    iget-wide v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->renewalWindow:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 458
    const-string/jumbo v1, "expiration"

    iget-wide v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->expiration:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 459
    const-string/jumbo v1, "mtserialnumber"

    iget-wide v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->mtSerialNumber:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 460
    const-string/jumbo v1, "serialnumber"

    iget-wide v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->serialNumber:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 461
    const-string/jumbo v1, "userdata"

    const-string/jumbo v2, "(redacted)"

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 463
    new-instance v1, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 464
    const-string/jumbo v2, "tokendata"

    invoke-virtual {v1, v2, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 465
    const-string/jumbo v0, "signature"

    iget-object v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->signature:[B

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 466
    invoke-virtual {v1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 467
    :catch_0
    move-exception v0

    .line 468
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
