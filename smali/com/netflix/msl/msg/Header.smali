.class public abstract Lcom/netflix/msl/msg/Header;
.super Ljava/lang/Object;
.source "Header.java"

# interfaces
.implements Lcom/netflix/android/org/json/JSONString;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseHeader(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;Ljava/util/Map;)Lcom/netflix/msl/msg/Header;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Lcom/netflix/android/org/json/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/crypto/ICryptoContext;",
            ">;)",
            "Lcom/netflix/msl/msg/Header;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 120
    :try_start_0
    const-string/jumbo v0, "entityauthdata"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "entityauthdata"

    .line 121
    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->create(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v3

    .line 123
    :goto_0
    const-string/jumbo v0, "mastertoken"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v4, Lcom/netflix/msl/tokens/MasterToken;

    const-string/jumbo v0, "mastertoken"

    .line 124
    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    invoke-direct {v4, p0, v0}, Lcom/netflix/msl/tokens/MasterToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)V
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :try_start_1
    const-string/jumbo v0, "signature"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 131
    if-nez v5, :cond_2

    .line 132
    :try_start_2
    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v1, Lcom/netflix/msl/MslError;->HEADER_SIGNATURE_INVALID:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "header/errormsg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "header/errormsg "

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

    :cond_1
    move-object v3, v4

    .line 121
    goto :goto_0

    .line 128
    :catch_1
    move-exception v0

    .line 129
    :try_start_3
    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v1, Lcom/netflix/msl/MslError;->HEADER_SIGNATURE_INVALID:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "header/errormsg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 139
    :cond_2
    :try_start_4
    const-string/jumbo v0, "headerdata"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    const-string/jumbo v0, "headerdata"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    new-instance v0, Lcom/netflix/msl/msg/MessageHeader;

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/netflix/msl/msg/MessageHeader;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Lcom/netflix/msl/entityauth/EntityAuthenticationData;Lcom/netflix/msl/tokens/MasterToken;[BLjava/util/Map;)V

    .line 147
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->isDecrypted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 148
    if-eqz v4, :cond_3

    .line 149
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->MESSAGE_MASTERTOKENBASED_VERIFICATION_FAILED:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;)V

    invoke-virtual {v0, v4}, Lcom/netflix/msl/MslCryptoException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslCryptoException;

    move-result-object v0

    throw v0
    :try_end_4
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 163
    :catch_2
    move-exception v0

    .line 164
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "header/errormsg "

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

    .line 151
    :cond_3
    :try_start_5
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->MESSAGE_ENTITYDATABASED_VERIFICATION_FAILED:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;)V

    invoke-virtual {v0, v3}, Lcom/netflix/msl/MslCryptoException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslCryptoException;

    move-result-object v0

    throw v0

    .line 159
    :cond_4
    const-string/jumbo v0, "errordata"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 160
    const-string/jumbo v0, "errordata"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    new-instance v0, Lcom/netflix/msl/msg/ErrorHeader;

    invoke-direct {v0, p0, v1, v3, v5}, Lcom/netflix/msl/msg/ErrorHeader;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Lcom/netflix/msl/entityauth/EntityAuthenticationData;[B)V
    :try_end_5
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_5
    return-object v0

    .line 168
    :cond_6
    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
.end method
