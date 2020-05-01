.class public Lcom/netflix/msl/msg/ErrorHeader;
.super Lcom/netflix/msl/msg/Header;
.source "ErrorHeader.java"


# static fields
.field private static final KEY_ERROR_CODE:Ljava/lang/String; = "errorcode"

.field private static final KEY_ERROR_MESSAGE:Ljava/lang/String; = "errormsg"

.field private static final KEY_INTERNAL_CODE:Ljava/lang/String; = "internalcode"

.field private static final KEY_MESSAGE_ID:Ljava/lang/String; = "messageid"

.field private static final KEY_RECIPIENT:Ljava/lang/String; = "recipient"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final KEY_USER_MESSAGE:Ljava/lang/String; = "usermsg"

.field private static final MILLISECONDS_PER_SECOND:J = 0x3e8L


# instance fields
.field private final entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

.field private final errorCode:Lcom/netflix/msl/MslConstants$ResponseCode;

.field private final errorMsg:Ljava/lang/String;

.field private final errordata:[B

.field private final internalCode:I

.field private final messageId:J

.field private final recipient:Ljava/lang/String;

.field private final signature:[B

.field private final timestamp:Ljava/lang/Long;

.field private final userMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;Ljava/lang/String;JLcom/netflix/msl/MslConstants$ResponseCode;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/netflix/msl/msg/Header;-><init>()V

    .line 108
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x20000000000000L

    cmp-long v0, p4, v0

    if-lez v0, :cond_1

    .line 109
    :cond_0
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Message ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is out of range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    if-nez p2, :cond_2

    .line 113
    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v1, Lcom/netflix/msl/MslError;->MESSAGE_ENTITY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0

    .line 116
    :cond_2
    invoke-virtual {p2}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->encrypts()Z

    move-result v1

    .line 119
    iput-object p2, p0, Lcom/netflix/msl/msg/ErrorHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    .line 120
    if-eqz v1, :cond_7

    :goto_0
    iput-object p3, p0, Lcom/netflix/msl/msg/ErrorHeader;->recipient:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/msg/ErrorHeader;->timestamp:Ljava/lang/Long;

    .line 122
    iput-wide p4, p0, Lcom/netflix/msl/msg/ErrorHeader;->messageId:J

    .line 123
    iput-object p6, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorCode:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 124
    if-ltz p7, :cond_8

    :goto_1
    iput p7, p0, Lcom/netflix/msl/msg/ErrorHeader;->internalCode:I

    .line 125
    iput-object p8, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorMsg:Ljava/lang/String;

    .line 126
    iput-object p9, p0, Lcom/netflix/msl/msg/ErrorHeader;->userMsg:Ljava/lang/String;

    .line 129
    new-instance v1, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 131
    :try_start_0
    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->recipient:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string/jumbo v2, "recipient"

    iget-object v3, p0, Lcom/netflix/msl/msg/ErrorHeader;->recipient:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 132
    :cond_3
    const-string/jumbo v2, "timestamp"

    iget-object v3, p0, Lcom/netflix/msl/msg/ErrorHeader;->timestamp:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 133
    const-string/jumbo v2, "messageid"

    iget-wide v4, p0, Lcom/netflix/msl/msg/ErrorHeader;->messageId:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 134
    const-string/jumbo v2, "errorcode"

    iget-object v3, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorCode:Lcom/netflix/msl/MslConstants$ResponseCode;

    invoke-virtual {v3}, Lcom/netflix/msl/MslConstants$ResponseCode;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;I)Lcom/netflix/android/org/json/JSONObject;

    .line 135
    iget v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->internalCode:I

    if-lez v2, :cond_4

    const-string/jumbo v2, "internalcode"

    iget v3, p0, Lcom/netflix/msl/msg/ErrorHeader;->internalCode:I

    invoke-virtual {v1, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;I)Lcom/netflix/android/org/json/JSONObject;

    .line 136
    :cond_4
    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorMsg:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string/jumbo v2, "errormsg"

    iget-object v3, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorMsg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 137
    :cond_5
    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->userMsg:Ljava/lang/String;

    if-eqz v2, :cond_6

    const-string/jumbo v2, "usermsg"

    iget-object v3, p0, Lcom/netflix/msl/msg/ErrorHeader;->userMsg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    :cond_6
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationFactory(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;

    move-result-object v2

    .line 145
    if-nez v2, :cond_9

    .line 146
    new-instance v1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->ENTITYAUTH_FACTORY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_1 .. :try_end_1} :catch_2

    .line 153
    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {v0, p2}, Lcom/netflix/msl/MslCryptoException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslCryptoException;

    .line 155
    invoke-virtual {v0, p4, p5}, Lcom/netflix/msl/MslCryptoException;->setMessageId(J)Lcom/netflix/msl/MslException;

    .line 156
    throw v0

    .line 120
    :cond_7
    const/4 p3, 0x0

    goto/16 :goto_0

    .line 124
    :cond_8
    const/4 p7, -0x1

    goto :goto_1

    .line 138
    :catch_1
    move-exception v0

    .line 139
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_ENCODE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "errordata"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, p2}, Lcom/netflix/msl/MslEncodingException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/netflix/msl/MslEncodingException;->setMessageId(J)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0

    .line 147
    :cond_9
    :try_start_2
    invoke-virtual {v2, p1, p2}, Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;->getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    .line 150
    invoke-virtual {v1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 151
    invoke-interface {v0, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->encrypt([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:[B

    .line 152
    iget-object v1, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:[B

    invoke-interface {v0, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->sign([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->signature:[B
    :try_end_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_2 .. :try_end_2} :catch_2

    .line 162
    return-void

    .line 157
    :catch_2
    move-exception v0

    .line 158
    invoke-virtual {v0, p2}, Lcom/netflix/msl/MslEntityAuthException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEntityAuthException;

    .line 159
    invoke-virtual {v0, p4, p5}, Lcom/netflix/msl/MslEntityAuthException;->setMessageId(J)Lcom/netflix/msl/MslException;

    .line 160
    throw v0
.end method

.method protected constructor <init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Lcom/netflix/msl/entityauth/EntityAuthenticationData;[B)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 183
    invoke-direct {p0}, Lcom/netflix/msl/msg/Header;-><init>()V

    .line 186
    :try_start_0
    iput-object p3, p0, Lcom/netflix/msl/msg/ErrorHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    .line 187
    iput-object p4, p0, Lcom/netflix/msl/msg/ErrorHeader;->signature:[B

    .line 188
    if-nez p3, :cond_0

    .line 189
    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v1, Lcom/netflix/msl/MslError;->MESSAGE_ENTITY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0
    :try_end_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_0 .. :try_end_0} :catch_1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslCryptoException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslCryptoException;

    .line 210
    throw v0

    .line 191
    :cond_0
    :try_start_1
    invoke-virtual {p3}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v1

    .line 192
    invoke-virtual {p1, v1}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationFactory(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;

    move-result-object v2

    .line 193
    if-nez v2, :cond_1

    .line 194
    new-instance v0, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->ENTITYAUTH_FACTORY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-virtual {v1}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    :catch_1
    move-exception v0

    .line 212
    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslEntityAuthException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEntityAuthException;

    .line 213
    throw v0

    .line 195
    :cond_1
    :try_start_2
    invoke-virtual {v2, p1, p3}, Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;->getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/crypto/ICryptoContext;
    :try_end_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 199
    :try_start_3
    invoke-static {p2}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:[B
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_3 .. :try_end_3} :catch_1

    .line 203
    :try_start_4
    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:[B

    array-length v2, v2

    if-nez v2, :cond_3

    .line 204
    :cond_2
    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v1, Lcom/netflix/msl/MslError;->HEADER_DATA_MISSING:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1, p2}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslMessageException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    throw v0

    .line 200
    :catch_2
    move-exception v0

    .line 201
    new-instance v1, Lcom/netflix/msl/MslMessageException;

    sget-object v2, Lcom/netflix/msl/MslError;->HEADER_DATA_INVALID:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, p2, v0}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, p3}, Lcom/netflix/msl/MslMessageException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    throw v0

    .line 205
    :cond_3
    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:[B

    iget-object v3, p0, Lcom/netflix/msl/msg/ErrorHeader;->signature:[B

    invoke-interface {v1, v2, v3}, Lcom/netflix/msl/crypto/ICryptoContext;->verify([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    .line 206
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->MESSAGE_VERIFICATION_FAILED:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslCryptoException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslCryptoException;

    move-result-object v0

    throw v0

    .line 207
    :cond_4
    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:[B

    invoke-interface {v1, v2}, Lcom/netflix/msl/crypto/ICryptoContext;->decrypt([B)[B
    :try_end_4
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    .line 216
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 219
    :try_start_5
    new-instance v3, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v3, v2}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 220
    const-string/jumbo v1, "messageid"

    invoke-virtual {v3, v1}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/msl/msg/ErrorHeader;->messageId:J

    .line 221
    iget-wide v4, p0, Lcom/netflix/msl/msg/ErrorHeader;->messageId:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_5

    iget-wide v4, p0, Lcom/netflix/msl/msg/ErrorHeader;->messageId:J

    const-wide/high16 v6, 0x20000000000000L

    cmp-long v1, v4, v6

    if-lez v1, :cond_6

    .line 222
    :cond_5
    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v1, Lcom/netflix/msl/MslError;->MESSAGE_ID_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "errordata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslMessageException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    throw v0
    :try_end_5
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    .line 223
    :catch_3
    move-exception v0

    .line 224
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v3, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "errordata "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, p3}, Lcom/netflix/msl/MslEncodingException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0

    .line 228
    :cond_6
    :try_start_6
    const-string/jumbo v1, "recipient"

    invoke-virtual {v3, v1}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "recipient"

    invoke-virtual {v3, v1}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/netflix/msl/msg/ErrorHeader;->recipient:Ljava/lang/String;

    .line 229
    const-string/jumbo v1, "timestamp"

    invoke-virtual {v3, v1}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v0, "timestamp"

    invoke-virtual {v3, v0}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_7
    iput-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->timestamp:Ljava/lang/Long;

    .line 232
    sget-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;
    :try_end_6
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    .line 234
    :try_start_7
    const-string/jumbo v0, "errorcode"

    invoke-virtual {v3, v0}, Lcom/netflix/android/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/netflix/msl/MslConstants$ResponseCode;->valueOf(I)Lcom/netflix/msl/MslConstants$ResponseCode;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4

    move-result-object v0

    .line 238
    :goto_1
    :try_start_8
    iput-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorCode:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 240
    const-string/jumbo v0, "internalcode"

    invoke-virtual {v3, v0}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 241
    const-string/jumbo v0, "internalcode"

    invoke-virtual {v3, v0}, Lcom/netflix/android/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->internalCode:I

    .line 242
    iget v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->internalCode:I

    if-gez v0, :cond_a

    .line 243
    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v1, Lcom/netflix/msl/MslError;->INTERNAL_CODE_NEGATIVE:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "errordata "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslMessageException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    iget-wide v4, p0, Lcom/netflix/msl/msg/ErrorHeader;->messageId:J

    invoke-virtual {v0, v4, v5}, Lcom/netflix/msl/MslMessageException;->setMessageId(J)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    throw v0
    :try_end_8
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4

    .line 249
    :catch_4
    move-exception v0

    .line 250
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "errordata "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, p3}, Lcom/netflix/msl/MslEncodingException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->messageId:J

    invoke-virtual {v0, v2, v3}, Lcom/netflix/msl/MslEncodingException;->setMessageId(J)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0

    :cond_8
    move-object v1, v0

    .line 228
    goto/16 :goto_0

    .line 235
    :catch_5
    move-exception v0

    .line 236
    :try_start_9
    sget-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    goto :goto_1

    .line 245
    :cond_9
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->internalCode:I

    .line 247
    :cond_a
    const-string/jumbo v0, "errormsg"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorMsg:Ljava/lang/String;

    .line 248
    const-string/jumbo v0, "usermsg"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->userMsg:Ljava/lang/String;
    :try_end_9
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_9 .. :try_end_9} :catch_4

    .line 252
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 336
    if-ne p0, p1, :cond_1

    .line 347
    :cond_0
    :goto_0
    return v0

    .line 337
    :cond_1
    instance-of v2, p1, Lcom/netflix/msl/msg/ErrorHeader;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 338
    :cond_2
    check-cast p1, Lcom/netflix/msl/msg/ErrorHeader;

    .line 339
    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    iget-object v3, p1, Lcom/netflix/msl/msg/ErrorHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v2, v3}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->recipient:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/msg/ErrorHeader;->recipient:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->recipient:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->recipient:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/msg/ErrorHeader;->recipient:Ljava/lang/String;

    .line 340
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->timestamp:Ljava/lang/Long;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->timestamp:Ljava/lang/Long;

    iget-object v3, p1, Lcom/netflix/msl/msg/ErrorHeader;->timestamp:Ljava/lang/Long;

    .line 341
    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->timestamp:Ljava/lang/Long;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/netflix/msl/msg/ErrorHeader;->timestamp:Ljava/lang/Long;

    if-nez v2, :cond_7

    :cond_5
    iget-wide v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->messageId:J

    iget-wide v4, p1, Lcom/netflix/msl/msg/ErrorHeader;->messageId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorCode:Lcom/netflix/msl/MslConstants$ResponseCode;

    iget-object v3, p1, Lcom/netflix/msl/msg/ErrorHeader;->errorCode:Lcom/netflix/msl/MslConstants$ResponseCode;

    if-ne v2, v3, :cond_7

    iget v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->internalCode:I

    iget v3, p1, Lcom/netflix/msl/msg/ErrorHeader;->internalCode:I

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorMsg:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/msg/ErrorHeader;->errorMsg:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorMsg:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorMsg:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/msg/ErrorHeader;->errorMsg:Ljava/lang/String;

    .line 346
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->userMsg:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/msg/ErrorHeader;->userMsg:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->userMsg:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->userMsg:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/msg/ErrorHeader;->userMsg:Ljava/lang/String;

    .line 347
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    return-object v0
.end method

.method public getErrorCode()Lcom/netflix/msl/MslConstants$ResponseCode;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorCode:Lcom/netflix/msl/MslConstants$ResponseCode;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalCode()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->internalCode:I

    return v0
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 281
    iget-wide v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->messageId:J

    return-wide v0
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->recipient:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 6

    .prologue
    .line 274
    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->timestamp:Ljava/lang/Long;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/netflix/msl/msg/ErrorHeader;->timestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->userMsg:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 355
    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->hashCode()I

    move-result v2

    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->recipient:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->recipient:Ljava/lang/String;

    .line 356
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    xor-int/2addr v2, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->timestamp:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->timestamp:Ljava/lang/Long;

    .line 357
    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_1
    xor-int/2addr v0, v2

    iget-wide v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->messageId:J

    .line 358
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorCode:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 359
    invoke-virtual {v2}, Lcom/netflix/msl/MslConstants$ResponseCode;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->internalCode:I

    .line 360
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    xor-int/2addr v2, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorMsg:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorMsg:Ljava/lang/String;

    .line 361
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->userMsg:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/netflix/msl/msg/ErrorHeader;->userMsg:Ljava/lang/String;

    .line 362
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    xor-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 356
    goto :goto_0

    :cond_2
    move v0, v1

    .line 357
    goto :goto_1

    :cond_3
    move v0, v1

    .line 361
    goto :goto_2
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 321
    :try_start_0
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 322
    const-string/jumbo v1, "entityauthdata"

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 323
    const-string/jumbo v1, "errordata"

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:[B

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 324
    const-string/jumbo v1, "signature"

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->signature:[B

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 325
    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 326
    :catch_0
    move-exception v0

    .line 327
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
