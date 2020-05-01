.class public Lcom/netflix/msl/msg/MessageOutputStream;
.super Ljava/io/OutputStream;
.source "MessageOutputStream.java"


# instance fields
.field private caching:Z

.field private final capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

.field private final charset:Ljava/nio/charset/Charset;

.field private closeDestination:Z

.field private closed:Z

.field private compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

.field private final cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

.field private currentPayload:Ljava/io/ByteArrayOutputStream;

.field private final destination:Ljava/io/OutputStream;

.field private final header:Lcom/netflix/msl/msg/Header;

.field private payloadSequenceNumber:J

.field private final payloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/msl/msg/PayloadChunk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/ErrorHeader;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 325
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->payloadSequenceNumber:J

    .line 327
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->currentPayload:Ljava/io/ByteArrayOutputStream;

    .line 330
    iput-boolean v2, p0, Lcom/netflix/msl/msg/MessageOutputStream;->closed:Z

    .line 332
    iput-boolean v2, p0, Lcom/netflix/msl/msg/MessageOutputStream;->closeDestination:Z

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->caching:Z

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->payloads:Ljava/util/List;

    .line 67
    iput-object p2, p0, Lcom/netflix/msl/msg/MessageOutputStream;->destination:Ljava/io/OutputStream;

    .line 68
    iput-object p3, p0, Lcom/netflix/msl/msg/MessageOutputStream;->charset:Ljava/nio/charset/Charset;

    .line 69
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    .line 70
    iput-object p4, p0, Lcom/netflix/msl/msg/MessageOutputStream;->header:Lcom/netflix/msl/msg/Header;

    .line 71
    iput-object v3, p0, Lcom/netflix/msl/msg/MessageOutputStream;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    .line 72
    iput-object v3, p0, Lcom/netflix/msl/msg/MessageOutputStream;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    .line 73
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->destination:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageOutputStream;->header:Lcom/netflix/msl/msg/Header;

    invoke-virtual {v1}, Lcom/netflix/msl/msg/Header;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 74
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->destination:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/MessageHeader;Lcom/netflix/msl/crypto/ICryptoContext;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 325
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->payloadSequenceNumber:J

    .line 327
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->currentPayload:Ljava/io/ByteArrayOutputStream;

    .line 330
    iput-boolean v2, p0, Lcom/netflix/msl/msg/MessageOutputStream;->closed:Z

    .line 332
    iput-boolean v2, p0, Lcom/netflix/msl/msg/MessageOutputStream;->closeDestination:Z

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->caching:Z

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->payloads:Ljava/util/List;

    .line 93
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v0

    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageHeader;->getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/msl/msg/MessageCapabilities;->intersection(Lcom/netflix/msl/msg/MessageCapabilities;Lcom/netflix/msl/msg/MessageCapabilities;)Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageCapabilities;->getCompressionAlgorithms()Ljava/util/Set;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->getPreferredAlgorithm(Ljava/util/Set;)Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    move-result-object v0

    .line 102
    :goto_0
    iput-object p2, p0, Lcom/netflix/msl/msg/MessageOutputStream;->destination:Ljava/io/OutputStream;

    .line 103
    iput-object p3, p0, Lcom/netflix/msl/msg/MessageOutputStream;->charset:Ljava/nio/charset/Charset;

    .line 104
    iput-object v1, p0, Lcom/netflix/msl/msg/MessageOutputStream;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    .line 105
    iput-object p4, p0, Lcom/netflix/msl/msg/MessageOutputStream;->header:Lcom/netflix/msl/msg/Header;

    .line 106
    iput-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    .line 107
    iput-object p5, p0, Lcom/netflix/msl/msg/MessageOutputStream;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    .line 108
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->destination:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageOutputStream;->header:Lcom/netflix/msl/msg/Header;

    invoke-virtual {v1}, Lcom/netflix/msl/msg/Header;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 109
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->destination:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 110
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->closed:Z

    if-eqz v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->closed:Z

    .line 215
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageOutputStream;->flush()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->currentPayload:Ljava/io/ByteArrayOutputStream;

    .line 220
    iget-boolean v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->closeDestination:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->destination:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_0
.end method

.method public closeDestination(Z)V
    .locals 0

    .prologue
    .line 201
    iput-boolean p1, p0, Lcom/netflix/msl/msg/MessageOutputStream;->closeDestination:Z

    .line 202
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V

    .line 118
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 119
    return-void
.end method

.method public flush()V
    .locals 10

    .prologue
    .line 236
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->currentPayload:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->closed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->currentPayload:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageOutputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->isHandshake()Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageOutputStream;->currentPayload:Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageOutputStream;->currentPayload:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 251
    :goto_1
    new-instance v1, Lcom/netflix/msl/msg/PayloadChunk;

    iget-wide v2, p0, Lcom/netflix/msl/msg/MessageOutputStream;->payloadSequenceNumber:J

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getMessageId()J

    move-result-wide v4

    iget-boolean v6, p0, Lcom/netflix/msl/msg/MessageOutputStream;->closed:Z

    iget-object v7, p0, Lcom/netflix/msl/msg/MessageOutputStream;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    iget-object v9, p0, Lcom/netflix/msl/msg/MessageOutputStream;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-direct/range {v1 .. v9}, Lcom/netflix/msl/msg/PayloadChunk;-><init>(JJZLcom/netflix/msl/MslConstants$CompressionAlgorithm;[BLcom/netflix/msl/crypto/ICryptoContext;)V

    .line 252
    iget-boolean v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->caching:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->payloads:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->destination:Ljava/io/OutputStream;

    invoke-virtual {v1}, Lcom/netflix/msl/msg/PayloadChunk;->toJSONString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageOutputStream;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 254
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->destination:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 255
    iget-wide v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->payloadSequenceNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->payloadSequenceNumber:J

    .line 259
    iget-boolean v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->closed:Z

    if-eqz v0, :cond_5

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->currentPayload:Ljava/io/ByteArrayOutputStream;
    :try_end_0
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error encoding payload chunk [sequence number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/netflix/msl/msg/MessageOutputStream;->payloadSequenceNumber:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 250
    :cond_4
    const/4 v1, 0x0

    :try_start_1
    new-array v8, v1, [B

    goto :goto_1

    .line 262
    :cond_5
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->currentPayload:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_1
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/netflix/msl/MslException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 265
    :catch_1
    move-exception v0

    .line 266
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error encrypting payload chunk [sequence number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/netflix/msl/msg/MessageOutputStream;->payloadSequenceNumber:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 267
    :catch_2
    move-exception v0

    .line 268
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error compressing payload chunk [sequence number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/netflix/msl/msg/MessageOutputStream;->payloadSequenceNumber:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->header:Lcom/netflix/msl/msg/Header;

    instance-of v0, v0, Lcom/netflix/msl/msg/ErrorHeader;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->header:Lcom/netflix/msl/msg/Header;

    check-cast v0, Lcom/netflix/msl/msg/ErrorHeader;

    .line 171
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->header:Lcom/netflix/msl/msg/Header;

    instance-of v0, v0, Lcom/netflix/msl/msg/MessageHeader;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->header:Lcom/netflix/msl/msg/Header;

    check-cast v0, Lcom/netflix/msl/msg/MessageHeader;

    .line 162
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getPayloads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/msl/msg/PayloadChunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->payloads:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setCompressionAlgorithm(Lcom/netflix/msl/MslConstants$CompressionAlgorithm;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageOutputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v1

    .line 138
    if-nez v1, :cond_0

    .line 139
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Cannot write payload data for an error message."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    if-eqz p1, :cond_3

    .line 143
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageOutputStream;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    if-nez v1, :cond_2

    .line 153
    :cond_1
    :goto_0
    return v0

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageOutputStream;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageCapabilities;->getCompressionAlgorithms()Ljava/util/Set;

    move-result-object v1

    .line 146
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    if-eq v0, p1, :cond_4

    .line 151
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageOutputStream;->flush()V

    .line 152
    :cond_4
    iput-object p1, p0, Lcom/netflix/msl/msg/MessageOutputStream;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    .line 153
    const/4 v0, 0x1

    goto :goto_0
.end method

.method stopCaching()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->caching:Z

    .line 189
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->payloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 190
    return-void
.end method

.method public write(I)V
    .locals 3

    .prologue
    .line 305
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 306
    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 307
    invoke-virtual {p0, v0}, Lcom/netflix/msl/msg/MessageOutputStream;->write([B)V

    .line 308
    return-void
.end method

.method public write([B)V
    .locals 2

    .prologue
    .line 297
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/msl/msg/MessageOutputStream;->write([BII)V

    .line 298
    return-void
.end method

.method public write([BII)V
    .locals 2

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 279
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Message output stream already closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageOutputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v0

    .line 283
    if-nez v0, :cond_1

    .line 284
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Cannot write payload data for an error message."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->isHandshake()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Cannot write payload data for a handshake message."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->currentPayload:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 290
    return-void
.end method
