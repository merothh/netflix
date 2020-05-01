.class public Lcom/netflix/msl/msg/PayloadChunk;
.super Ljava/lang/Object;
.source "PayloadChunk.java"

# interfaces
.implements Lcom/netflix/android/org/json/JSONString;


# static fields
.field private static final KEY_COMPRESSION_ALGORITHM:Ljava/lang/String; = "compressionalgo"

.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_END_OF_MESSAGE:Ljava/lang/String; = "endofmsg"

.field private static final KEY_MESSAGE_ID:Ljava/lang/String; = "messageid"

.field private static final KEY_PAYLOAD:Ljava/lang/String; = "payload"

.field private static final KEY_SEQUENCE_NUMBER:Ljava/lang/String; = "sequencenumber"

.field private static final KEY_SIGNATURE:Ljava/lang/String; = "signature"


# instance fields
.field private final compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

.field private final data:[B

.field private final endofmsg:Z

.field private final messageId:J

.field private final payload:[B

.field private final sequenceNumber:J

.field private final signature:[B


# direct methods
.method public constructor <init>(JJZLcom/netflix/msl/MslConstants$CompressionAlgorithm;[BLcom/netflix/msl/crypto/ICryptoContext;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x20000000000000L

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sequence number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is outside the valid range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_2

    const-wide/high16 v0, 0x20000000000000L

    cmp-long v0, p3, v0

    if-lez v0, :cond_3

    :cond_2
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Message ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is outside the valid range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz p6, :cond_7

    invoke-static {p6, p7}, Lcom/netflix/msl/util/MslUtils;->compress(Lcom/netflix/msl/MslConstants$CompressionAlgorithm;[B)[B

    move-result-object v0

    array-length v1, v0

    array-length v2, p7

    if-ge v1, v2, :cond_6

    iput-object p6, p0, Lcom/netflix/msl/msg/PayloadChunk;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    :goto_0
    iput-wide p1, p0, Lcom/netflix/msl/msg/PayloadChunk;->sequenceNumber:J

    iput-wide p3, p0, Lcom/netflix/msl/msg/PayloadChunk;->messageId:J

    iput-boolean p5, p0, Lcom/netflix/msl/msg/PayloadChunk;->endofmsg:Z

    iput-object p7, p0, Lcom/netflix/msl/msg/PayloadChunk;->data:[B

    :try_start_0
    new-instance v1, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    const-string/jumbo v2, "sequencenumber"

    iget-wide v4, p0, Lcom/netflix/msl/msg/PayloadChunk;->sequenceNumber:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v2, "messageid"

    iget-wide v4, p0, Lcom/netflix/msl/msg/PayloadChunk;->messageId:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    iget-boolean v2, p0, Lcom/netflix/msl/msg/PayloadChunk;->endofmsg:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "endofmsg"

    iget-boolean v3, p0, Lcom/netflix/msl/msg/PayloadChunk;->endofmsg:Z

    invoke-virtual {v1, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/netflix/android/org/json/JSONObject;

    :cond_4
    iget-object v2, p0, Lcom/netflix/msl/msg/PayloadChunk;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    if-eqz v2, :cond_5

    const-string/jumbo v2, "compressionalgo"

    iget-object v3, p0, Lcom/netflix/msl/msg/PayloadChunk;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    invoke-virtual {v3}, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :cond_5
    const-string/jumbo v2, "data"

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-interface {p8, v0}, Lcom/netflix/msl/crypto/ICryptoContext;->encrypt([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->payload:[B
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->payload:[B

    invoke-interface {p8, v0}, Lcom/netflix/msl/crypto/ICryptoContext;->sign([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->signature:[B

    return-void

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    move-object v0, p7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    move-object v0, p7

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_ENCODE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "payloadchunk payload"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/crypto/ICryptoContext;)V
    .locals 10

    const-wide/high16 v8, 0x20000000000000L

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string/jumbo v2, "payload"

    invoke-virtual {p1, v2}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/PayloadChunk;->payload:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v2, "signature"

    invoke-virtual {p1, v2}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/PayloadChunk;->signature:[B
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v2, p0, Lcom/netflix/msl/msg/PayloadChunk;->payload:[B

    iget-object v3, p0, Lcom/netflix/msl/msg/PayloadChunk;->signature:[B

    invoke-interface {p2, v2, v3}, Lcom/netflix/msl/crypto/ICryptoContext;->verify([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->PAYLOAD_VERIFICATION_FAILED:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0
    :try_end_2
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "payload chunk "

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

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/netflix/msl/MslMessageException;

    sget-object v2, Lcom/netflix/msl/MslError;->PAYLOAD_INVALID:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "payload chunk "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslMessageException;

    sget-object v2, Lcom/netflix/msl/MslError;->PAYLOAD_SIGNATURE_INVALID:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "payload chunk "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    iget-object v2, p0, Lcom/netflix/msl/msg/PayloadChunk;->payload:[B

    invoke-interface {p2, v2}, Lcom/netflix/msl/crypto/ICryptoContext;->decrypt([B)[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :try_start_4
    new-instance v2, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v2, v3}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "sequencenumber"

    invoke-virtual {v2, v4}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/msl/msg/PayloadChunk;->sequenceNumber:J

    iget-wide v4, p0, Lcom/netflix/msl/msg/PayloadChunk;->sequenceNumber:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    iget-wide v4, p0, Lcom/netflix/msl/msg/PayloadChunk;->sequenceNumber:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_2

    :cond_1
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->PAYLOAD_SEQUENCE_NUMBER_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "payload chunk payload "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "payload chunk payload "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_5
    const-string/jumbo v4, "messageid"

    invoke-virtual {v2, v4}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/msl/msg/PayloadChunk;->messageId:J

    iget-wide v4, p0, Lcom/netflix/msl/msg/PayloadChunk;->messageId:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    iget-wide v4, p0, Lcom/netflix/msl/msg/PayloadChunk;->messageId:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_4

    :cond_3
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->PAYLOAD_MESSAGE_ID_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "payload chunk payload "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string/jumbo v4, "endofmsg"

    invoke-virtual {v2, v4}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v1, "endofmsg"

    invoke-virtual {v2, v1}, Lcom/netflix/android/org/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_5
    iput-boolean v1, p0, Lcom/netflix/msl/msg/PayloadChunk;->endofmsg:Z

    const-string/jumbo v1, "compressionalgo"

    invoke-virtual {v2, v1}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "compressionalgo"

    invoke-virtual {v2, v1}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v1

    :try_start_6
    invoke-static {v1}, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->valueOf(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    move-result-object v4

    iput-object v4, p0, Lcom/netflix/msl/msg/PayloadChunk;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    :goto_0
    :try_start_7
    const-string/jumbo v1, "data"

    invoke-virtual {v2, v1}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v1

    :try_start_8
    invoke-static {v1}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_6

    :try_start_9
    array-length v2, v0

    if-nez v2, :cond_a

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v2, Lcom/netflix/msl/MslError;->PAYLOAD_DATA_CORRUPT:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :catch_4
    move-exception v0

    new-instance v2, Lcom/netflix/msl/MslMessageException;

    sget-object v4, Lcom/netflix/msl/MslError;->UNIDENTIFIED_COMPRESSION:Lcom/netflix/msl/MslError;

    invoke-direct {v2, v4, v1, v0}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_7
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/msl/msg/PayloadChunk;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    goto :goto_0

    :cond_8
    iget-boolean v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->endofmsg:Z

    if-nez v0, :cond_9

    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v2, Lcom/netflix/msl/MslError;->PAYLOAD_DATA_MISSING:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :cond_9
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->data:[B

    :goto_2
    return-void

    :cond_a
    iget-object v1, p0, Lcom/netflix/msl/msg/PayloadChunk;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    if-nez v1, :cond_b

    iput-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->data:[B

    goto :goto_2

    :cond_b
    iget-object v1, p0, Lcom/netflix/msl/msg/PayloadChunk;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    invoke-static {v1, v0}, Lcom/netflix/msl/util/MslUtils;->uncompress(Lcom/netflix/msl/MslConstants$CompressionAlgorithm;[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->data:[B
    :try_end_9
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_2

    :catch_5
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/netflix/msl/msg/PayloadChunk;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/netflix/msl/msg/PayloadChunk;

    iget-wide v2, p0, Lcom/netflix/msl/msg/PayloadChunk;->sequenceNumber:J

    iget-wide v4, p1, Lcom/netflix/msl/msg/PayloadChunk;->sequenceNumber:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/netflix/msl/msg/PayloadChunk;->messageId:J

    iget-wide v4, p1, Lcom/netflix/msl/msg/PayloadChunk;->messageId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/netflix/msl/msg/PayloadChunk;->endofmsg:Z

    iget-boolean v3, p1, Lcom/netflix/msl/msg/PayloadChunk;->endofmsg:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/netflix/msl/msg/PayloadChunk;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    iget-object v3, p1, Lcom/netflix/msl/msg/PayloadChunk;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/netflix/msl/msg/PayloadChunk;->data:[B

    iget-object v3, p1, Lcom/netflix/msl/msg/PayloadChunk;->data:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getCompressionAlgo()Lcom/netflix/msl/MslConstants$CompressionAlgorithm;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->data:[B

    return-object v0
.end method

.method public getMessageId()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->messageId:J

    return-wide v0
.end method

.method public getSequenceNumber()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->sequenceNumber:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->sequenceNumber:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    iget-wide v2, p0, Lcom/netflix/msl/msg/PayloadChunk;->messageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/netflix/msl/msg/PayloadChunk;->endofmsg:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    invoke-virtual {v0}, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->hashCode()I

    move-result v0

    :goto_0
    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/msg/PayloadChunk;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEndOfMessage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->endofmsg:Z

    return v0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    const-string/jumbo v1, "payload"

    iget-object v2, p0, Lcom/netflix/msl/msg/PayloadChunk;->payload:[B

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v1, "signature"

    iget-object v2, p0, Lcom/netflix/msl/msg/PayloadChunk;->signature:[B

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

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
.end method
