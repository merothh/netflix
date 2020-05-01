.class public Lo/ahN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ahr;


# instance fields
.field private final a:J

.field protected final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/ahn;",
            "[B>;"
        }
    .end annotation
.end field

.field private final c:Lo/ahp;

.field protected final d:Lo/agM;

.field private final e:J

.field private final g:Z

.field private final i:[B

.field private final j:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;JJZLcom/netflix/msl/MslConstants$CompressionAlgorithm;[BLo/agM;)V
    .locals 6

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ahN;->b:Ljava/util/Map;

    const-string v0, " is outside the valid range."

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_5

    const-wide/high16 v3, 0x20000000000000L

    cmp-long v5, p2, v3

    if-gtz v5, :cond_5

    cmp-long v5, p4, v1

    if-ltz v5, :cond_4

    cmp-long v1, p4, v3

    if-gtz v1, :cond_4

    const/4 v0, 0x0

    if-eqz p7, :cond_1

    .line 129
    invoke-static {p7, p8}, Lo/aig;->a(Lcom/netflix/msl/MslConstants$CompressionAlgorithm;[B)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 133
    array-length v2, v1

    array-length v3, p8

    if-ge v2, v3, :cond_0

    .line 134
    iput-object p7, p0, Lo/ahN;->j:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    goto :goto_1

    .line 137
    :cond_0
    iput-object v0, p0, Lo/ahN;->j:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    goto :goto_0

    .line 141
    :cond_1
    iput-object v0, p0, Lo/ahN;->j:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    :goto_0
    move-object v1, p8

    .line 146
    :goto_1
    iput-wide p2, p0, Lo/ahN;->a:J

    .line 147
    iput-wide p4, p0, Lo/ahN;->e:J

    .line 148
    iput-boolean p6, p0, Lo/ahN;->g:Z

    .line 149
    iput-object p8, p0, Lo/ahN;->i:[B

    .line 152
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->h()Lo/aho;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Lo/aho;->b()Lo/ahp;

    move-result-object p1

    iput-object p1, p0, Lo/ahN;->c:Lo/ahp;

    .line 154
    iget-object p1, p0, Lo/ahN;->c:Lo/ahp;

    iget-wide p2, p0, Lo/ahN;->a:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "sequencenumber"

    invoke-virtual {p1, p3, p2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 155
    iget-object p1, p0, Lo/ahN;->c:Lo/ahp;

    iget-wide p2, p0, Lo/ahN;->e:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "messageid"

    invoke-virtual {p1, p3, p2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 156
    iget-boolean p1, p0, Lo/ahN;->g:Z

    if-eqz p1, :cond_2

    iget-object p2, p0, Lo/ahN;->c:Lo/ahp;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p3, "endofmsg"

    invoke-virtual {p2, p3, p1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 157
    :cond_2
    iget-object p1, p0, Lo/ahN;->j:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lo/ahN;->c:Lo/ahp;

    invoke-virtual {p1}, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->name()Ljava/lang/String;

    move-result-object p1

    const-string p3, "compressionalgo"

    invoke-virtual {p2, p3, p1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 158
    :cond_3
    iget-object p1, p0, Lo/ahN;->c:Lo/ahp;

    const-string p2, "data"

    invoke-virtual {p1, p2, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 161
    iput-object p9, p0, Lo/ahN;->d:Lo/agM;

    return-void

    .line 124
    :cond_4
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Message ID "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_5
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Sequence number "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lo/ahp;Lo/agM;)V
    .locals 9

    const-string v0, "compressionalgo"

    const-string v1, "endofmsg"

    const-string v2, "payload chunk payload "

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lo/ahN;->b:Ljava/util/Map;

    .line 181
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->h()Lo/aho;

    move-result-object p1

    .line 184
    iput-object p3, p0, Lo/ahN;->d:Lo/agM;

    :try_start_0
    const-string v3, "payload"

    .line 189
    invoke-virtual {p2, v3}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "signature"

    .line 190
    invoke-virtual {p2, v4}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object v4

    .line 191
    invoke-virtual {p3, v3, v4, p1}, Lo/agM;->e([B[BLo/aho;)Z

    move-result v4
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v4, :cond_7

    .line 198
    invoke-virtual {p3, v3, p1}, Lo/agM;->d([BLo/aho;)[B

    move-result-object p2

    .line 200
    :try_start_1
    invoke-virtual {p1, p2}, Lo/aho;->c([B)Lo/ahp;

    move-result-object p1

    iput-object p1, p0, Lo/ahN;->c:Lo/ahp;

    .line 201
    iget-object p1, p0, Lo/ahN;->c:Lo/ahp;

    const-string p3, "sequencenumber"

    invoke-virtual {p1, p3}, Lo/ahp;->h(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lo/ahN;->a:J

    .line 202
    iget-wide v3, p0, Lo/ahN;->a:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-ltz p1, :cond_6

    iget-wide v3, p0, Lo/ahN;->a:J

    const-wide/high16 v7, 0x20000000000000L

    cmp-long p1, v3, v7

    if-gtz p1, :cond_6

    .line 204
    iget-object p1, p0, Lo/ahN;->c:Lo/ahp;

    const-string p3, "messageid"

    invoke-virtual {p1, p3}, Lo/ahp;->h(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lo/ahN;->e:J

    .line 205
    iget-wide v3, p0, Lo/ahN;->e:J

    cmp-long p1, v3, v5

    if-ltz p1, :cond_5

    iget-wide v3, p0, Lo/ahN;->e:J

    cmp-long p1, v3, v7

    if-gtz p1, :cond_5

    .line 207
    iget-object p1, p0, Lo/ahN;->c:Lo/ahp;

    invoke-virtual {p1, v1}, Lo/ahp;->i(Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/ahN;->c:Lo/ahp;

    invoke-virtual {p1, v1}, Lo/ahp;->b(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lo/ahN;->g:Z

    .line 208
    iget-object p1, p0, Lo/ahN;->c:Lo/ahp;

    invoke-virtual {p1, v0}, Lo/ahp;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 209
    iget-object p1, p0, Lo/ahN;->c:Lo/ahp;

    invoke-virtual {p1, v0}, Lo/ahp;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    :try_start_2
    invoke-static {p1}, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->valueOf(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lo/ahN;->j:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    move-exception p3

    .line 213
    :try_start_3
    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v1, Lo/agz;->ce:Lo/agz;

    invoke-direct {v0, v1, p1, p3}, Lcom/netflix/msl/MslMessageException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    const/4 p1, 0x0

    .line 216
    iput-object p1, p0, Lo/ahN;->j:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    .line 218
    :goto_1
    iget-object p1, p0, Lo/ahN;->c:Lo/ahp;

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object p1

    .line 219
    array-length v0, p1

    if-nez v0, :cond_3

    .line 220
    iget-boolean p1, p0, Lo/ahN;->g:Z

    if-eqz p1, :cond_2

    new-array p1, p3, [B

    .line 222
    iput-object p1, p0, Lo/ahN;->i:[B

    goto :goto_2

    .line 221
    :cond_2
    new-instance p1, Lcom/netflix/msl/MslMessageException;

    sget-object p3, Lo/agz;->cg:Lo/agz;

    invoke-direct {p1, p3}, Lcom/netflix/msl/MslMessageException;-><init>(Lo/agz;)V

    throw p1

    .line 223
    :cond_3
    iget-object p3, p0, Lo/ahN;->j:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    if-nez p3, :cond_4

    .line 224
    iput-object p1, p0, Lo/ahN;->i:[B

    goto :goto_2

    .line 226
    :cond_4
    iget-object p3, p0, Lo/ahN;->j:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    invoke-static {p3, p1}, Lo/aig;->b(Lcom/netflix/msl/MslConstants$CompressionAlgorithm;[B)[B

    move-result-object p1

    iput-object p1, p0, Lo/ahN;->i:[B

    :goto_2
    return-void

    .line 206
    :cond_5
    new-instance p1, Lcom/netflix/msl/MslException;

    sget-object p3, Lo/agz;->cm:Lo/agz;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ahN;->c:Lo/ahp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p3, v0}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1

    .line 203
    :cond_6
    new-instance p1, Lcom/netflix/msl/MslException;

    sget-object p3, Lo/agz;->cj:Lo/agz;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ahN;->c:Lo/ahp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p3, v0}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    .line 229
    new-instance p3, Lcom/netflix/msl/MslEncodingException;

    sget-object v0, Lo/agz;->e:Lo/agz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lo/aik;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v0, p2, p1}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 192
    :cond_7
    :try_start_4
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object p3, Lo/agz;->bZ:Lo/agz;

    invoke-direct {p1, p3}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;)V

    throw p1
    :try_end_4
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p1

    .line 194
    new-instance p3, Lcom/netflix/msl/MslEncodingException;

    sget-object v0, Lo/agz;->e:Lo/agz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "payload chunk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v0, p2, p1}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 237
    iget-wide v0, p0, Lo/ahN;->a:J

    return-wide v0
.end method

.method public a(Lo/aho;Lo/ahn;)[B
    .locals 4

    .line 277
    iget-object v0, p0, Lo/ahN;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object p1, p0, Lo/ahN;->b:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    .line 281
    :cond_0
    iget-object v0, p0, Lo/ahN;->c:Lo/ahp;

    invoke-virtual {p1, v0, p2}, Lo/aho;->c(Lo/ahp;Lo/ahn;)[B

    move-result-object v0

    .line 284
    :try_start_0
    iget-object v1, p0, Lo/ahN;->d:Lo/agM;

    invoke-virtual {v1, v0, p1, p2}, Lo/agM;->e([BLo/aho;Lo/ahn;)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 292
    :try_start_1
    iget-object v1, p0, Lo/ahN;->d:Lo/agM;

    invoke-virtual {v1, v0, p1, p2}, Lo/agM;->c([BLo/aho;Lo/ahn;)[B

    move-result-object v1
    :try_end_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    invoke-virtual {p1}, Lo/aho;->b()Lo/ahp;

    move-result-object v2

    const-string v3, "payload"

    .line 299
    invoke-virtual {v2, v3, v0}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    const-string v0, "signature"

    .line 300
    invoke-virtual {v2, v0, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 301
    invoke-virtual {p1, v2, p2}, Lo/aho;->c(Lo/ahp;Lo/ahn;)[B

    move-result-object p1

    .line 304
    iget-object v0, p0, Lo/ahN;->b:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :catch_0
    move-exception p1

    .line 294
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Error signing the payload."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 286
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Error encrypting the payload."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public b()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lo/ahN;->g:Z

    return v0
.end method

.method public c()[B
    .locals 1

    .line 268
    iget-object v0, p0, Lo/ahN;->i:[B

    return-object v0
.end method

.method public d()J
    .locals 2

    .line 244
    iget-wide v0, p0, Lo/ahN;->e:J

    return-wide v0
.end method

.method public e()Lcom/netflix/msl/MslConstants$CompressionAlgorithm;
    .locals 1

    .line 259
    iget-object v0, p0, Lo/ahN;->j:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 314
    :cond_0
    instance-of v1, p1, Lo/ahN;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 315
    :cond_1
    check-cast p1, Lo/ahN;

    .line 316
    iget-wide v3, p0, Lo/ahN;->a:J

    iget-wide v5, p1, Lo/ahN;->a:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lo/ahN;->e:J

    iget-wide v5, p1, Lo/ahN;->e:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lo/ahN;->g:Z

    iget-boolean v3, p1, Lo/ahN;->g:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lo/ahN;->j:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    iget-object v3, p1, Lo/ahN;->j:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lo/ahN;->i:[B

    iget-object p1, p1, Lo/ahN;->i:[B

    .line 320
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 328
    iget-wide v0, p0, Lo/ahN;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    iget-wide v1, p0, Lo/ahN;->e:J

    .line 329
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-boolean v1, p0, Lo/ahN;->g:Z

    .line 330
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lo/ahN;->j:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {v1}, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v0, v1

    iget-object v1, p0, Lo/ahN;->i:[B

    .line 332
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
