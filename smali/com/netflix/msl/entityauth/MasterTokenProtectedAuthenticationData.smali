.class public Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;
.super Lcom/netflix/msl/entityauth/EntityAuthenticationData;
.source "MasterTokenProtectedAuthenticationData.java"


# static fields
.field protected static final KEY_AUTHENTICATION_DATA:Ljava/lang/String; = "authdata"

.field protected static final KEY_MASTER_TOKEN:Ljava/lang/String; = "mastertoken"

.field protected static final KEY_SIGNATURE:Ljava/lang/String; = "signature"


# instance fields
.field private final authdata:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

.field private final ciphertext:[B

.field private final masterToken:Lcom/netflix/msl/tokens/MasterToken;

.field private final signature:[B


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)V
    .locals 5

    .prologue
    .line 113
    sget-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->MT_PROTECTED:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;-><init>(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)V

    .line 118
    :try_start_0
    new-instance v0, Lcom/netflix/msl/tokens/MasterToken;

    const-string/jumbo v1, "mastertoken"

    invoke-virtual {p2, v1}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/netflix/msl/tokens/MasterToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)V

    iput-object v0, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 123
    :try_start_1
    const-string/jumbo v0, "authdata"

    invoke-virtual {p2, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->ciphertext:[B
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 128
    :try_start_2
    const-string/jumbo v0, "signature"

    invoke-virtual {p2, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->signature:[B
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 139
    :try_start_3
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-interface {v0, v1}, Lcom/netflix/msl/util/MslStore;->getCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;
    :try_end_3
    .catch Lcom/netflix/msl/MslMasterTokenException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v0

    .line 140
    if-eqz v0, :cond_0

    .line 150
    :goto_0
    :try_start_4
    iget-object v1, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->ciphertext:[B

    iget-object v2, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->signature:[B

    invoke-interface {v0, v1, v2}, Lcom/netflix/msl/crypto/ICryptoContext;->verify([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    new-instance v0, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v1, Lcom/netflix/msl/MslError;->ENTITYAUTH_VERIFICATION_FAILED:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "master token protected authdata "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "master token protected authdata "

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

    .line 119
    :catch_1
    move-exception v0

    .line 120
    :try_start_5
    new-instance v1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->ENTITYAUTH_MASTERTOKEN_INVALID:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "master token protected authdata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    .line 132
    :catch_2
    move-exception v0

    .line 133
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "master token protected authdata "

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

    .line 124
    :catch_3
    move-exception v0

    .line 125
    :try_start_6
    new-instance v1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->ENTITYAUTH_CIPHERTEXT_INVALID:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "master token protected authdata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 129
    :catch_4
    move-exception v0

    .line 130
    new-instance v1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->ENTITYAUTH_SIGNATURE_INVALID:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "master token protected authdata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    .line 143
    :cond_0
    :try_start_7
    new-instance v0, Lcom/netflix/msl/crypto/SessionCryptoContext;

    iget-object v1, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-direct {v0, p1, v1}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V
    :try_end_7
    .catch Lcom/netflix/msl/MslMasterTokenException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 144
    :catch_5
    move-exception v0

    .line 145
    new-instance v1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->ENTITYAUTH_MASTERTOKEN_NOT_DECRYPTED:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 152
    :cond_1
    :try_start_8
    iget-object v1, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->ciphertext:[B

    invoke-interface {v0, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->decrypt([B)[B

    move-result-object v0

    .line 153
    new-instance v1, Lcom/netflix/android/org/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-static {p1, v1}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->create(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->authdata:Lcom/netflix/msl/entityauth/EntityAuthenticationData;
    :try_end_8
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    .line 158
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)V
    .locals 3

    .prologue
    .line 74
    sget-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->MT_PROTECTED:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;-><init>(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)V

    .line 76
    iput-object p2, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 77
    iput-object p3, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->authdata:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    .line 82
    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/netflix/msl/util/MslStore;->getCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;
    :try_end_0
    .catch Lcom/netflix/msl/MslMasterTokenException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    .line 92
    :goto_0
    invoke-virtual {p3}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->toJSONString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 93
    invoke-interface {v0, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->encrypt([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->ciphertext:[B

    .line 94
    iget-object v1, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->ciphertext:[B

    invoke-interface {v0, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->sign([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->signature:[B

    .line 95
    return-void

    .line 86
    :cond_0
    :try_start_1
    new-instance v0, Lcom/netflix/msl/crypto/SessionCryptoContext;

    invoke-direct {v0, p1, p2}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V
    :try_end_1
    .catch Lcom/netflix/msl/MslMasterTokenException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    new-instance v1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->ENTITYAUTH_MASTERTOKEN_NOT_DECRYPTED:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 198
    if-ne p1, p0, :cond_0

    .line 203
    :goto_0
    return v1

    .line 199
    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 200
    check-cast v0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;

    .line 201
    invoke-super {p0, p1}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    iget-object v4, v0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 202
    invoke-virtual {v3, v4}, Lcom/netflix/msl/tokens/MasterToken;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->authdata:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    iget-object v0, v0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->authdata:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    .line 203
    invoke-virtual {v3, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public getAuthData()Lcom/netflix/android/org/json/JSONObject;
    .locals 4

    .prologue
    .line 183
    :try_start_0
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 184
    const-string/jumbo v1, "mastertoken"

    iget-object v2, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 185
    const-string/jumbo v1, "authdata"

    iget-object v2, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->ciphertext:[B

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 186
    const-string/jumbo v1, "signature"

    iget-object v2, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->signature:[B

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 187
    new-instance v1, Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_ENCODE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "master token protected authdata"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getEncapsulatedAuthdata()Lcom/netflix/msl/entityauth/EntityAuthenticationData;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->authdata:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->authdata:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 211
    invoke-super {p0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 212
    invoke-virtual {v1}, Lcom/netflix/msl/tokens/MasterToken;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->authdata:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    .line 213
    invoke-virtual {v1}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
