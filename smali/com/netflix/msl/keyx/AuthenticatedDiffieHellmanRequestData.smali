.class public Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;
.super Lcom/netflix/msl/keyx/KeyRequestData;
.source "AuthenticatedDiffieHellmanRequestData.java"


# static fields
.field private static final KEY_MECHANISM:Ljava/lang/String; = "mechanism"

.field private static final KEY_PARAMETERS_ID:Ljava/lang/String; = "parametersid"

.field private static final KEY_PUBLIC_KEY:Ljava/lang/String; = "publickey"

.field private static final KEY_WRAPDATA:Ljava/lang/String; = "wrapdata"


# instance fields
.field private final mechanism:Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;

.field private final parametersId:Ljava/lang/String;

.field private final privateKey:Ljavax/crypto/interfaces/DHPrivateKey;

.field private final publicKey:Ljava/math/BigInteger;

.field private final wrapdata:[B


# direct methods
.method public constructor <init>(Lcom/netflix/android/org/json/JSONObject;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 108
    sget-object v0, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;->AUTHENTICATED_DH:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/keyx/KeyRequestData;-><init>(Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 111
    :try_start_0
    const-string/jumbo v0, "mechanism"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 113
    :try_start_1
    invoke-static {v1}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;->valueOf(Ljava/lang/String;)Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->mechanism:Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 122
    :try_start_2
    sget-object v0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData$1;->$SwitchMap$com$netflix$msl$keyx$AbstractAuthenticatedDiffieHellmanExchange$Mechanism:[I

    iget-object v1, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->mechanism:Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;

    invoke-virtual {v1}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 138
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNSUPPORTED_KEYX_MECHANISM:Lcom/netflix/msl/MslError;

    iget-object v2, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->mechanism:Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;

    invoke-virtual {v2}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keydata "

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

    .line 114
    :catch_1
    move-exception v0

    .line 115
    :try_start_3
    new-instance v2, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->UNIDENTIFIED_KEYX_MECHANISM:Lcom/netflix/msl/MslError;

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 117
    :catch_2
    move-exception v0

    .line 118
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keydata "

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

    .line 125
    :pswitch_0
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->wrapdata:[B
    :try_end_4
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 145
    :cond_0
    :try_start_5
    const-string/jumbo v0, "parametersid"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->parametersId:Ljava/lang/String;

    .line 146
    const-string/jumbo v0, "publickey"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 147
    new-instance v1, Ljava/math/BigInteger;

    invoke-static {v0}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->correctNullBytes([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->publicKey:Ljava/math/BigInteger;
    :try_end_5
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_5

    .line 154
    iput-object v2, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->privateKey:Ljavax/crypto/interfaces/DHPrivateKey;

    .line 155
    return-void

    .line 129
    :pswitch_1
    :try_start_6
    const-string/jumbo v0, "wrapdata"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->wrapdata:[B
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    .line 133
    :try_start_7
    iget-object v0, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->wrapdata:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->wrapdata:[B

    array-length v0, v0

    if-nez v0, :cond_0

    .line 134
    :cond_1
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->KEYX_WRAPPING_KEY_MISSING:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "keydata "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 130
    :catch_3
    move-exception v0

    .line 131
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->KEYX_WRAPPING_KEY_MISSING:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "keydata "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    .line 148
    :catch_4
    move-exception v0

    .line 149
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keydata "

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

    .line 150
    :catch_5
    move-exception v0

    .line 151
    :goto_0
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v2, Lcom/netflix/msl/MslError;->KEYX_INVALID_PUBLIC_KEY:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keydata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 150
    :catch_6
    move-exception v0

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;Ljava/lang/String;Ljava/math/BigInteger;Ljavax/crypto/interfaces/DHPrivateKey;[B)V
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;->AUTHENTICATED_DH:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/keyx/KeyRequestData;-><init>(Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 77
    iput-object p1, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->mechanism:Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;

    .line 79
    sget-object v0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData$1;->$SwitchMap$com$netflix$msl$keyx$AbstractAuthenticatedDiffieHellmanExchange$Mechanism:[I

    invoke-virtual {p1}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->wrapdata:[B

    .line 91
    :goto_0
    iput-object p2, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->parametersId:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->publicKey:Ljava/math/BigInteger;

    .line 93
    iput-object p4, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->privateKey:Ljavax/crypto/interfaces/DHPrivateKey;

    .line 94
    return-void

    .line 81
    :pswitch_0
    if-nez p5, :cond_0

    .line 82
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Previous wrapping key based key exchange requires the previous wrapping key data."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iput-object p5, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->wrapdata:[B

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 217
    if-ne p1, p0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v3

    .line 220
    :cond_1
    instance-of v0, p1, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;

    if-nez v0, :cond_2

    move v3, v2

    .line 221
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 223
    check-cast v0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;

    .line 224
    iget-object v1, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->wrapdata:[B

    iget-object v4, v0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->wrapdata:[B

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    .line 225
    iget-object v1, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->privateKey:Ljavax/crypto/interfaces/DHPrivateKey;

    iget-object v5, v0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->privateKey:Ljavax/crypto/interfaces/DHPrivateKey;

    if-eq v1, v5, :cond_3

    iget-object v1, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->privateKey:Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->privateKey:Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->privateKey:Ljavax/crypto/interfaces/DHPrivateKey;

    .line 227
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPrivateKey;->getEncoded()[B

    move-result-object v1

    iget-object v5, v0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->privateKey:Ljavax/crypto/interfaces/DHPrivateKey;

    invoke-interface {v5}, Ljavax/crypto/interfaces/DHPrivateKey;->getEncoded()[B

    move-result-object v5

    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    move v1, v3

    .line 228
    :goto_1
    invoke-super {p0, p1}, Lcom/netflix/msl/keyx/KeyRequestData;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->mechanism:Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;

    iget-object v6, v0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->mechanism:Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;

    .line 229
    invoke-virtual {v5, v6}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->parametersId:Ljava/lang/String;

    iget-object v5, v0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->parametersId:Ljava/lang/String;

    .line 231
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->publicKey:Ljava/math/BigInteger;

    iget-object v0, v0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->publicKey:Ljava/math/BigInteger;

    .line 232
    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    :cond_4
    move v3, v2

    goto :goto_0

    :cond_5
    move v1, v2

    .line 227
    goto :goto_1
.end method

.method protected getKeydata()Lcom/netflix/android/org/json/JSONObject;
    .locals 3

    .prologue
    .line 200
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 201
    const-string/jumbo v1, "mechanism"

    iget-object v2, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->mechanism:Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;

    invoke-virtual {v2}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 202
    iget-object v1, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->wrapdata:[B

    if-eqz v1, :cond_0

    .line 203
    const-string/jumbo v1, "wrapdata"

    iget-object v2, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->wrapdata:[B

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 204
    :cond_0
    const-string/jumbo v1, "parametersid"

    iget-object v2, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->parametersId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 205
    iget-object v1, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->publicKey:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 206
    const-string/jumbo v2, "publickey"

    invoke-static {v1}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->correctNullBytes([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 207
    return-object v0
.end method

.method public getMechanism()Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->mechanism:Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;

    return-object v0
.end method

.method public getParametersId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->parametersId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateKey()Ljavax/crypto/interfaces/DHPrivateKey;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->privateKey:Ljavax/crypto/interfaces/DHPrivateKey;

    return-object v0
.end method

.method public getPublicKey()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->publicKey:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getWrapdata()[B
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->wrapdata:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 244
    iget-object v0, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->wrapdata:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->wrapdata:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    .line 245
    :goto_0
    iget-object v2, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->privateKey:Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->privateKey:Ljavax/crypto/interfaces/DHPrivateKey;

    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPrivateKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    .line 246
    :cond_0
    invoke-super {p0}, Lcom/netflix/msl/keyx/KeyRequestData;->hashCode()I

    move-result v2

    iget-object v3, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->mechanism:Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;

    .line 247
    invoke-virtual {v3}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;->hashCode()I

    move-result v3

    xor-int/2addr v2, v3

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->parametersId:Ljava/lang/String;

    .line 249
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->publicKey:Ljava/math/BigInteger;

    .line 250
    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 244
    goto :goto_0
.end method
