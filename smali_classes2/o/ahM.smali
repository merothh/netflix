.class public Lo/ahM;
.super Ljava/io/OutputStream;
.source ""


# instance fields
.field private final a:Ljava/io/OutputStream;

.field private final b:Lcom/netflix/msl/util/MslContext;

.field private final c:Lo/ahn;

.field private final d:Lo/ahI;

.field private final e:Lo/ahL;

.field private f:Ljava/io/ByteArrayOutputStream;

.field private g:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

.field private h:Z

.field private i:J

.field private final j:Lo/agM;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ahN;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Lo/ahP;Lo/agM;)V
    .locals 4

    .line 105
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, 0x1

    .line 379
    iput-wide v0, p0, Lo/ahM;->i:J

    .line 381
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lo/ahM;->f:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    .line 384
    iput-boolean v0, p0, Lo/ahM;->h:Z

    .line 386
    iput-boolean v0, p0, Lo/ahM;->o:Z

    const/4 v0, 0x1

    .line 389
    iput-boolean v0, p0, Lo/ahM;->n:Z

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ahM;->k:Ljava/util/List;

    .line 106
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->h()Lo/aho;

    move-result-object v0

    .line 109
    invoke-virtual {p3}, Lo/ahP;->h()Lo/ahL;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v1}, Lo/ahL;->a()Ljava/util/Set;

    move-result-object v2

    .line 114
    invoke-static {v2}, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->e(Ljava/util/Set;)Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    move-result-object v2

    .line 115
    invoke-virtual {v1}, Lo/ahL;->b()Ljava/util/Set;

    move-result-object v3

    .line 116
    invoke-virtual {v0, v3}, Lo/aho;->e(Ljava/util/Set;)Lo/ahn;

    move-result-object v3

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v0, v2}, Lo/aho;->e(Ljava/util/Set;)Lo/ahn;

    move-result-object v3

    .line 125
    :goto_0
    :try_start_0
    invoke-virtual {p3, v0, v3}, Lo/ahP;->a(Lo/aho;Lo/ahn;)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    iput-object p1, p0, Lo/ahM;->b:Lcom/netflix/msl/util/MslContext;

    .line 131
    iput-object p2, p0, Lo/ahM;->a:Ljava/io/OutputStream;

    .line 132
    iput-object v3, p0, Lo/ahM;->c:Lo/ahn;

    .line 133
    iput-object v1, p0, Lo/ahM;->e:Lo/ahL;

    .line 134
    iput-object p3, p0, Lo/ahM;->d:Lo/ahI;

    .line 135
    iput-object v2, p0, Lo/ahM;->g:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    .line 136
    iput-object p4, p0, Lo/ahM;->j:Lo/agM;

    .line 137
    iget-object p1, p0, Lo/ahM;->a:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 138
    iget-object p1, p0, Lo/ahM;->a:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    :catch_0
    move-exception p1

    .line 127
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Error encoding the message header."

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public a()Lo/ahP;
    .locals 2

    .line 189
    iget-object v0, p0, Lo/ahM;->d:Lo/ahI;

    instance-of v1, v0, Lo/ahP;

    if-eqz v1, :cond_0

    .line 190
    check-cast v0, Lo/ahP;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    .line 230
    iput-boolean p1, p0, Lo/ahM;->o:Z

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/ahN;",
            ">;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lo/ahM;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/netflix/msl/MslConstants$CompressionAlgorithm;)Z
    .locals 2

    .line 166
    invoke-virtual {p0}, Lo/ahM;->a()Lo/ahP;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    .line 172
    iget-object v0, p0, Lo/ahM;->e:Lo/ahL;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 174
    :cond_0
    invoke-virtual {v0}, Lo/ahL;->a()Ljava/util/Set;

    move-result-object v0

    .line 175
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 179
    :cond_1
    iget-object v0, p0, Lo/ahM;->g:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    if-eq v0, p1, :cond_2

    .line 180
    invoke-virtual {p0}, Lo/ahM;->flush()V

    .line 181
    :cond_2
    iput-object p1, p0, Lo/ahM;->g:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    const/4 p1, 0x1

    return p1

    .line 168
    :cond_3
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string v0, "Cannot write payload data for an error message."

    invoke-direct {p1, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 1

    .line 238
    iget-boolean v0, p0, Lo/ahM;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lo/ahM;->h:Z

    .line 244
    invoke-virtual {p0}, Lo/ahM;->flush()V

    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lo/ahM;->f:Ljava/io/ByteArrayOutputStream;

    .line 249
    iget-boolean v0, p0, Lo/ahM;->o:Z

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lo/ahM;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    return-void
.end method

.method protected d(Lcom/netflix/msl/util/MslContext;JJZLcom/netflix/msl/MslConstants$CompressionAlgorithm;[BLo/agM;)Lo/ahN;
    .locals 11

    .line 320
    new-instance v10, Lo/ahN;

    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lo/ahN;-><init>(Lcom/netflix/msl/util/MslContext;JJZLcom/netflix/msl/MslConstants$CompressionAlgorithm;[BLo/agM;)V

    return-object v10
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Lo/ahM;->n:Z

    .line 218
    iget-object v0, p0, Lo/ahM;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected finalize()V
    .locals 0

    .line 146
    invoke-virtual {p0}, Lo/ahM;->close()V

    .line 147
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public flush()V
    .locals 13

    const-string v0, "]."

    .line 265
    iget-object v1, p0, Lo/ahM;->f:Ljava/io/ByteArrayOutputStream;

    if-nez v1, :cond_0

    return-void

    .line 269
    :cond_0
    iget-boolean v2, p0, Lo/ahM;->h:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 272
    :cond_1
    invoke-virtual {p0}, Lo/ahM;->a()Lo/ahP;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 273
    invoke-virtual {v1}, Lo/ahP;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 279
    :cond_2
    :try_start_0
    iget-object v2, p0, Lo/ahM;->f:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    .line 280
    iget-object v4, p0, Lo/ahM;->b:Lcom/netflix/msl/util/MslContext;

    iget-wide v5, p0, Lo/ahM;->i:J

    invoke-virtual {v1}, Lo/ahP;->g()J

    move-result-wide v7

    iget-boolean v9, p0, Lo/ahM;->h:Z

    iget-object v10, p0, Lo/ahM;->g:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    iget-object v12, p0, Lo/ahM;->j:Lo/agM;

    move-object v3, p0

    invoke-virtual/range {v3 .. v12}, Lo/ahM;->d(Lcom/netflix/msl/util/MslContext;JJZLcom/netflix/msl/MslConstants$CompressionAlgorithm;[BLo/agM;)Lo/ahN;

    move-result-object v1

    .line 281
    iget-boolean v2, p0, Lo/ahM;->n:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lo/ahM;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_3
    iget-object v2, p0, Lo/ahM;->b:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v2}, Lcom/netflix/msl/util/MslContext;->h()Lo/aho;

    move-result-object v2

    .line 283
    iget-object v3, p0, Lo/ahM;->c:Lo/ahn;

    invoke-virtual {v1, v2, v3}, Lo/ahN;->a(Lo/aho;Lo/ahn;)[B

    move-result-object v1

    .line 284
    iget-object v2, p0, Lo/ahM;->a:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 285
    iget-object v1, p0, Lo/ahM;->a:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 286
    iget-wide v1, p0, Lo/ahM;->i:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lo/ahM;->i:J

    .line 290
    iget-boolean v1, p0, Lo/ahM;->h:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 291
    iput-object v1, p0, Lo/ahM;->f:Ljava/io/ByteArrayOutputStream;

    goto :goto_0

    .line 293
    :cond_4
    iget-object v1, p0, Lo/ahM;->f:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    .line 299
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error compressing payload chunk [sequence number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lo/ahM;->i:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 297
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error encrypting payload chunk [sequence number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lo/ahM;->i:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v1

    .line 295
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error encoding payload chunk [sequence number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lo/ahM;->i:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_5
    :goto_1
    return-void
.end method

.method public write(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 358
    invoke-virtual {p0, v0}, Lo/ahM;->write([B)V

    return-void
.end method

.method public write([B)V
    .locals 2

    .line 348
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lo/ahM;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 329
    iget-boolean v0, p0, Lo/ahM;->h:Z

    if-nez v0, :cond_2

    .line 333
    invoke-virtual {p0}, Lo/ahM;->a()Lo/ahP;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 336
    invoke-virtual {v0}, Lo/ahP;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lo/ahM;->f:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void

    .line 337
    :cond_0
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string p2, "Cannot write payload data for a handshake message."

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 335
    :cond_1
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string p2, "Cannot write payload data for an error message."

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 330
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Message output stream already closed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
