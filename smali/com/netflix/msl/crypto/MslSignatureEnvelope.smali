.class public Lcom/netflix/msl/crypto/MslSignatureEnvelope;
.super Ljava/lang/Object;
.source "MslSignatureEnvelope.java"


# static fields
.field private static final KEY_ALGORITHM:Ljava/lang/String; = "algorithm"

.field private static final KEY_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"


# instance fields
.field private final algorithm:Lcom/netflix/msl/MslConstants$SignatureAlgo;

.field private final signature:[B

.field private final version:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/MslConstants$SignatureAlgo;[B)V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    sget-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->V2:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    iput-object v0, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->version:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    .line 122
    iput-object p1, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->algorithm:Lcom/netflix/msl/MslConstants$SignatureAlgo;

    .line 123
    iput-object p2, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->signature:[B

    .line 124
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    sget-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->V1:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    iput-object v0, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->version:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->algorithm:Lcom/netflix/msl/MslConstants$SignatureAlgo;

    .line 111
    iput-object p1, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->signature:[B

    .line 112
    return-void
.end method

.method public static parse([B)Lcom/netflix/msl/crypto/MslSignatureEnvelope;
    .locals 4

    .prologue
    .line 202
    :try_start_0
    new-instance v1, Ljava/lang/String;

    sget-object v0, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 203
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0, v1}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 214
    :goto_0
    if-eqz v1, :cond_0

    const-string/jumbo v0, "version"

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    :cond_0
    sget-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->V1:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    .line 229
    :goto_1
    sget-object v2, Lcom/netflix/msl/crypto/MslSignatureEnvelope$1;->$SwitchMap$com$netflix$msl$crypto$MslSignatureEnvelope$Version:[I

    invoke-virtual {v0}, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 257
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNSUPPORTED_SIGNATURE_ENVELOPE:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "signature envelope "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    .line 218
    :cond_1
    :try_start_1
    const-string/jumbo v0, "version"

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->valueOf(I)Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;
    :try_end_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    goto :goto_1

    .line 219
    :catch_1
    move-exception v0

    .line 221
    sget-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->V1:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    goto :goto_1

    .line 222
    :catch_2
    move-exception v0

    .line 224
    sget-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->V1:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    goto :goto_1

    .line 231
    :pswitch_0
    new-instance v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    invoke-direct {v0, p0}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;-><init>([B)V

    .line 255
    :goto_2
    return-object v0

    .line 236
    :pswitch_1
    :try_start_2
    const-string/jumbo v0, "algorithm"

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/MslConstants$SignatureAlgo;->fromString(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$SignatureAlgo;

    move-result-object v2

    .line 237
    const-string/jumbo v0, "signature"

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 244
    if-nez v1, :cond_2

    .line 245
    new-instance v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    invoke-direct {v0, p0}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;-><init>([B)V
    :try_end_2
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    .line 246
    :catch_3
    move-exception v0

    .line 249
    new-instance v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    invoke-direct {v0, p0}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;-><init>([B)V

    goto :goto_2

    .line 250
    :catch_4
    move-exception v0

    .line 253
    new-instance v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    invoke-direct {v0, p0}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;-><init>([B)V

    goto :goto_2

    .line 255
    :cond_2
    new-instance v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;-><init>(Lcom/netflix/msl/MslConstants$SignatureAlgo;[B)V

    goto :goto_2

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parse([BLcom/netflix/msl/crypto/MslSignatureEnvelope$Version;)Lcom/netflix/msl/crypto/MslSignatureEnvelope;
    .locals 5

    .prologue
    .line 140
    sget-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$1;->$SwitchMap$com$netflix$msl$crypto$MslSignatureEnvelope$Version:[I

    invoke-virtual {p1}, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 182
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNSUPPORTED_SIGNATURE_ENVELOPE:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "signature envelope "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 142
    :pswitch_0
    new-instance v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    invoke-direct {v0, p0}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;-><init>([B)V

    .line 177
    :goto_0
    return-object v0

    .line 146
    :pswitch_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 147
    new-instance v1, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    :try_start_1
    const-string/jumbo v0, "version"

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->valueOf(I)Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    move-result-object v0

    .line 152
    sget-object v2, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->V2:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    invoke-virtual {v2, v0}, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNSUPPORTED_SIGNATURE_ENVELOPE:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "signature envelope "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    :try_start_2
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNIDENTIFIED_SIGNATURE_ENVELOPE:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "signature envelope "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 178
    :catch_1
    move-exception v0

    .line 179
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "signature envelope "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 161
    :cond_0
    :try_start_3
    const-string/jumbo v0, "algorithm"

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/MslConstants$SignatureAlgo;->fromString(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$SignatureAlgo;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    .line 169
    :try_start_4
    const-string/jumbo v0, "signature"

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    .line 173
    if-nez v1, :cond_1

    .line 174
    :try_start_5
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->INVALID_SIGNATURE:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "signature envelope "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 162
    :catch_2
    move-exception v0

    .line 163
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNIDENTIFIED_ALGORITHM:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "signature envelope "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 170
    :catch_3
    move-exception v0

    .line 171
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->INVALID_SIGNATURE:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "signature envelope "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_1
    new-instance v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;-><init>(Lcom/netflix/msl/MslConstants$SignatureAlgo;[B)V
    :try_end_5
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getAlgorithm()Lcom/netflix/msl/MslConstants$SignatureAlgo;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->algorithm:Lcom/netflix/msl/MslConstants$SignatureAlgo;

    return-object v0
.end method

.method public getBytes()[B
    .locals 4

    .prologue
    .line 288
    sget-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$1;->$SwitchMap$com$netflix$msl$crypto$MslSignatureEnvelope$Version:[I

    iget-object v1, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->version:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    invoke-virtual {v1}, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 302
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Signature envelope version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->version:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " encoding unsupported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->signature:[B

    .line 297
    :goto_0
    return-object v0

    .line 293
    :pswitch_1
    :try_start_0
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 294
    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->version:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    invoke-virtual {v2}, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;I)Lcom/netflix/android/org/json/JSONObject;

    .line 295
    const-string/jumbo v1, "algorithm"

    iget-object v2, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->algorithm:Lcom/netflix/msl/MslConstants$SignatureAlgo;

    invoke-virtual {v2}, Lcom/netflix/msl/MslConstants$SignatureAlgo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 296
    const-string/jumbo v1, "signature"

    iget-object v2, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->signature:[B

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 297
    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
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

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSignature()[B
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->signature:[B

    return-object v0
.end method
