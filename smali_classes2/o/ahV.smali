.class public Lo/ahV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ahr;


# instance fields
.field private final a:Lcom/netflix/msl/util/MslContext;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:J

.field private final e:Lo/agM;

.field private final f:Z

.field private final g:[B

.field private final h:[B

.field private final i:[B

.field private final j:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/ahn;",
            "[B>;"
        }
    .end annotation
.end field

.field private final m:Z

.field private final n:[B


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lo/ahp;Lo/ahS;Lo/ahX;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Lo/ahp;",
            "Lo/ahS;",
            "Lo/ahX;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/agM;",
            ">;)V"
        }
    .end annotation

    .line 242
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->h()Lo/aho;

    move-result-object v0

    invoke-static {v0, p2, p5}, Lo/ahV;->e(Lo/aho;Lo/ahp;Ljava/util/Map;)Lo/agM;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lo/ahV;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahp;Lo/ahS;Lo/ahX;Lo/agM;)V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lo/ahp;Lo/ahS;Lo/ahX;Lo/agM;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v0, p5

    const-string v5, "compressionalgo"

    const-string v6, "uitserialnumber"

    const-string v7, "mtserialnumber"

    const-string v8, "servicetoken "

    const-string v9, "servicetokendata "

    .line 274
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 504
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v1, Lo/ahV;->k:Ljava/util/Map;

    move-object/from16 v10, p1

    .line 275
    iput-object v10, v1, Lo/ahV;->a:Lcom/netflix/msl/util/MslContext;

    .line 276
    iput-object v0, v1, Lo/ahV;->e:Lo/agM;

    .line 277
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->h()Lo/aho;

    move-result-object v10

    :try_start_0
    const-string v11, "tokendata"

    .line 281
    invoke-virtual {v2, v11}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object v11

    iput-object v11, v1, Lo/ahV;->i:[B

    .line 282
    iget-object v11, v1, Lo/ahV;->i:[B

    array-length v11, v11

    if-eqz v11, :cond_e

    const-string v11, "signature"

    .line 284
    invoke-virtual {v2, v11}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object v11

    iput-object v11, v1, Lo/ahV;->n:[B

    if-eqz v0, :cond_0

    .line 285
    iget-object v12, v1, Lo/ahV;->i:[B

    iget-object v13, v1, Lo/ahV;->n:[B

    invoke-virtual {v0, v12, v13, v10}, Lo/agM;->e([B[BLo/aho;)Z

    move-result v12

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    iput-boolean v12, v1, Lo/ahV;->m:Z
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_3

    .line 295
    :try_start_1
    iget-object v2, v1, Lo/ahV;->i:[B

    invoke-virtual {v10, v2}, Lo/aho;->c([B)Lo/ahp;

    move-result-object v2

    const-string v8, "name"

    .line 296
    invoke-virtual {v2, v8}, Lo/ahp;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lo/ahV;->b:Ljava/lang/String;

    .line 297
    invoke-virtual {v2, v7}, Lo/ahp;->i(Ljava/lang/String;)Z

    move-result v8

    const-wide/16 v14, 0x0

    const-wide/16 v11, -0x1

    if-eqz v8, :cond_2

    .line 298
    invoke-virtual {v2, v7}, Lo/ahp;->h(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v1, Lo/ahV;->d:J

    .line 299
    iget-wide v7, v1, Lo/ahV;->d:J

    cmp-long v13, v7, v14

    if-ltz v13, :cond_1

    iget-wide v7, v1, Lo/ahV;->d:J

    const-wide/high16 v16, 0x20000000000000L

    cmp-long v13, v7, v16

    if-gtz v13, :cond_1

    goto :goto_1

    .line 300
    :cond_1
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v5, Lo/agz;->aY:Lo/agz;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, v2}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/netflix/msl/MslException;->e(Lo/ahS;)Lcom/netflix/msl/MslException;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netflix/msl/MslException;->b(Lo/ahX;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0

    .line 302
    :cond_2
    iput-wide v11, v1, Lo/ahV;->d:J

    .line 304
    :goto_1
    invoke-virtual {v2, v6}, Lo/ahp;->i(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 305
    invoke-virtual {v2, v6}, Lo/ahp;->h(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Lo/ahV;->c:J

    .line 306
    iget-wide v6, v1, Lo/ahV;->c:J

    cmp-long v8, v6, v14

    if-ltz v8, :cond_3

    iget-wide v6, v1, Lo/ahV;->c:J

    const-wide/high16 v13, 0x20000000000000L

    cmp-long v8, v6, v13

    if-gtz v8, :cond_3

    goto :goto_2

    .line 307
    :cond_3
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v5, Lo/agz;->aZ:Lo/agz;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, v2}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/netflix/msl/MslException;->e(Lo/ahS;)Lcom/netflix/msl/MslException;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netflix/msl/MslException;->b(Lo/ahX;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0

    .line 309
    :cond_4
    iput-wide v11, v1, Lo/ahV;->c:J

    :goto_2
    const-string v6, "encrypted"

    .line 314
    invoke-virtual {v2, v6}, Lo/ahp;->b(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v1, Lo/ahV;->f:Z

    .line 315
    invoke-virtual {v2, v5}, Lo/ahp;->i(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    .line 316
    invoke-virtual {v2, v5}, Lo/ahp;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 318
    :try_start_2
    invoke-static {v5}, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->valueOf(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    move-result-object v6

    iput-object v6, v1, Lo/ahV;->j:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_0
    move-exception v0

    .line 320
    :try_start_3
    new-instance v2, Lcom/netflix/msl/MslException;

    sget-object v6, Lo/agz;->ce:Lo/agz;

    invoke-direct {v2, v6, v5, v0}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 323
    :cond_5
    iput-object v7, v1, Lo/ahV;->j:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    :goto_3
    const-string v5, "servicedata"

    .line 329
    invoke-virtual {v2, v5}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object v2

    .line 330
    iget-boolean v5, v1, Lo/ahV;->m:Z

    if-eqz v5, :cond_8

    .line 332
    iget-boolean v5, v1, Lo/ahV;->f:Z

    if-eqz v5, :cond_6

    array-length v5, v2

    if-lez v5, :cond_6

    .line 333
    invoke-virtual {v0, v2, v10}, Lo/agM;->d([BLo/aho;)[B

    move-result-object v2

    :cond_6
    iput-object v2, v1, Lo/ahV;->g:[B

    .line 335
    iget-object v0, v1, Lo/ahV;->j:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    if-eqz v0, :cond_7

    iget-object v0, v1, Lo/ahV;->j:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    iget-object v2, v1, Lo/ahV;->g:[B

    .line 336
    invoke-static {v0, v2}, Lo/aig;->b(Lcom/netflix/msl/MslConstants$CompressionAlgorithm;[B)[B

    move-result-object v0

    goto :goto_4

    :cond_7
    iget-object v0, v1, Lo/ahV;->g:[B

    :goto_4
    iput-object v0, v1, Lo/ahV;->h:[B

    goto :goto_5

    .line 339
    :cond_8
    iput-object v2, v1, Lo/ahV;->g:[B

    .line 340
    array-length v0, v2

    if-nez v0, :cond_9

    const/4 v0, 0x0

    new-array v7, v0, [B

    :cond_9
    iput-object v7, v1, Lo/ahV;->h:[B
    :try_end_3
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_3 .. :try_end_3} :catch_1

    .line 351
    :goto_5
    iget-wide v5, v1, Lo/ahV;->d:J

    cmp-long v0, v5, v11

    if-eqz v0, :cond_b

    if-eqz v3, :cond_a

    invoke-virtual/range {p3 .. p3}, Lo/ahS;->b()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-nez v0, :cond_a

    goto :goto_6

    .line 352
    :cond_a
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v2, Lo/agz;->aU:Lo/agz;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "st mtserialnumber "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lo/ahV;->d:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "; mt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v5}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/netflix/msl/MslException;->e(Lo/ahS;)Lcom/netflix/msl/MslException;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netflix/msl/MslException;->b(Lo/ahX;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0

    .line 353
    :cond_b
    :goto_6
    iget-wide v5, v1, Lo/ahV;->c:J

    cmp-long v0, v5, v11

    if-eqz v0, :cond_d

    if-eqz v4, :cond_c

    invoke-virtual/range {p4 .. p4}, Lo/ahX;->b()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-nez v0, :cond_c

    goto :goto_7

    .line 354
    :cond_c
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v2, Lo/agz;->aV:Lo/agz;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "st uitserialnumber "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lo/ahV;->c:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "; uit "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v5}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/netflix/msl/MslException;->e(Lo/ahS;)Lcom/netflix/msl/MslException;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netflix/msl/MslException;->b(Lo/ahX;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0

    :cond_d
    :goto_7
    return-void

    :catch_1
    move-exception v0

    .line 345
    invoke-virtual {v0, v3}, Lcom/netflix/msl/MslCryptoException;->b(Lo/ahS;)Lcom/netflix/msl/MslCryptoException;

    .line 346
    invoke-virtual {v0, v4}, Lcom/netflix/msl/MslCryptoException;->b(Lo/ahX;)Lcom/netflix/msl/MslException;

    .line 347
    throw v0

    :catch_2
    move-exception v0

    .line 343
    new-instance v2, Lcom/netflix/msl/MslEncodingException;

    sget-object v5, Lo/agz;->e:Lo/agz;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lo/ahV;->i:[B

    invoke-static {v7}, Lo/aik;->a([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/netflix/msl/MslEncodingException;->d(Lo/ahS;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netflix/msl/MslEncodingException;->d(Lo/ahX;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0

    .line 283
    :cond_e
    :try_start_4
    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v5, Lo/agz;->bc:Lo/agz;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/netflix/msl/MslEncodingException;->d(Lo/ahS;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netflix/msl/MslEncodingException;->d(Lo/ahX;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0
    :try_end_4
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception v0

    .line 289
    invoke-virtual {v0, v3}, Lcom/netflix/msl/MslCryptoException;->b(Lo/ahS;)Lcom/netflix/msl/MslCryptoException;

    .line 290
    throw v0

    :catch_4
    move-exception v0

    .line 287
    new-instance v5, Lcom/netflix/msl/MslEncodingException;

    sget-object v6, Lo/agz;->e:Lo/agz;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v6, v2, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v5, v3}, Lcom/netflix/msl/MslEncodingException;->d(Lo/ahS;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netflix/msl/MslEncodingException;->d(Lo/ahX;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0
.end method

.method private static e(Lo/aho;Lo/ahp;Ljava/util/Map;)Lo/agM;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/aho;",
            "Lo/ahp;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/agM;",
            ">;)",
            "Lo/agM;"
        }
    .end annotation

    const-string v0, "servicetoken "

    :try_start_0
    const-string v1, "tokendata"

    .line 130
    invoke-virtual {p1, v1}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object v1

    .line 131
    array-length v2, v1

    if-eqz v2, :cond_1

    .line 133
    invoke-virtual {p0, v1}, Lo/aho;->c([B)Lo/ahp;

    move-result-object p0

    const-string v1, "name"

    .line 134
    invoke-virtual {p0, v1}, Lo/ahp;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 135
    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/agM;

    return-object p0

    :cond_0
    const-string p0, ""

    .line 137
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/agM;

    return-object p0

    .line 132
    :cond_1
    new-instance p0, Lcom/netflix/msl/MslEncodingException;

    sget-object p2, Lo/agz;->bc:Lo/agz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 139
    new-instance p2, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lo/agz;->e:Lo/agz;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1, p0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public a()Z
    .locals 5

    .line 428
    iget-wide v0, p0, Lo/ahV;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Lo/aho;Lo/ahn;)[B
    .locals 7

    .line 512
    iget-object v0, p0, Lo/ahV;->k:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object p1, p0, Lo/ahV;->k:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    .line 520
    :cond_0
    iget-object v0, p0, Lo/ahV;->i:[B

    if-nez v0, :cond_6

    iget-object v0, p0, Lo/ahV;->n:[B

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 531
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lo/ahV;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/ahV;->g:[B

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lo/ahV;->e:Lo/agM;

    iget-object v1, p0, Lo/ahV;->g:[B

    .line 532
    invoke-virtual {v0, v1, p1, p2}, Lo/agM;->e([BLo/aho;Lo/ahn;)[B

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lo/ahV;->g:[B
    :try_end_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 539
    :goto_0
    invoke-virtual {p1}, Lo/aho;->b()Lo/ahp;

    move-result-object v1

    .line 540
    iget-object v2, p0, Lo/ahV;->b:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 541
    iget-wide v2, p0, Lo/ahV;->d:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "mtserialnumber"

    invoke-virtual {v1, v3, v2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 542
    :cond_3
    iget-wide v2, p0, Lo/ahV;->c:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "uitserialnumber"

    invoke-virtual {v1, v3, v2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 543
    :cond_4
    iget-boolean v2, p0, Lo/ahV;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "encrypted"

    invoke-virtual {v1, v3, v2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 544
    iget-object v2, p0, Lo/ahV;->j:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "compressionalgo"

    invoke-virtual {v1, v3, v2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    :cond_5
    const-string v2, "servicedata"

    .line 545
    invoke-virtual {v1, v2, v0}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 548
    invoke-virtual {p1, v1, p2}, Lo/aho;->c(Lo/ahp;Lo/ahn;)[B

    move-result-object v0

    .line 550
    :try_start_1
    iget-object v1, p0, Lo/ahV;->e:Lo/agM;

    invoke-virtual {v1, v0, p1, p2}, Lo/agM;->c([BLo/aho;Lo/ahn;)[B

    move-result-object v1
    :try_end_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 552
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Error signing the token data."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 535
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Error encrypting the service data."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 521
    :cond_6
    :goto_1
    iget-object v0, p0, Lo/ahV;->i:[B

    .line 522
    iget-object v1, p0, Lo/ahV;->n:[B

    .line 557
    :goto_2
    invoke-virtual {p1}, Lo/aho;->b()Lo/ahp;

    move-result-object v2

    const-string v3, "tokendata"

    .line 558
    invoke-virtual {v2, v3, v0}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    const-string v0, "signature"

    .line 559
    invoke-virtual {v2, v0, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 560
    invoke-virtual {p1, v2, p2}, Lo/aho;->c(Lo/ahp;Lo/ahn;)[B

    move-result-object p1

    .line 563
    iget-object v0, p0, Lo/ahV;->k:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public b()J
    .locals 2

    .line 421
    iget-wide v0, p0, Lo/ahV;->d:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 382
    iget-object v0, p0, Lo/ahV;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Lo/ahS;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 436
    invoke-virtual {p1}, Lo/ahS;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lo/ahV;->d:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()J
    .locals 2

    .line 446
    iget-wide v0, p0, Lo/ahV;->c:J

    return-wide v0
.end method

.method public e(Lo/ahX;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 464
    invoke-virtual {p1}, Lo/ahX;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lo/ahV;->c:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()[B
    .locals 1

    .line 411
    iget-object v0, p0, Lo/ahV;->h:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 601
    :cond_0
    instance-of v1, p1, Lo/ahV;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 602
    check-cast p1, Lo/ahV;

    .line 603
    iget-object v1, p0, Lo/ahV;->b:Ljava/lang/String;

    iget-object v3, p1, Lo/ahV;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lo/ahV;->d:J

    iget-wide v5, p1, Lo/ahV;->d:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lo/ahV;->c:J

    iget-wide v5, p1, Lo/ahV;->c:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public f()Z
    .locals 5

    .line 456
    iget-wide v0, p0, Lo/ahV;->c:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 5

    .line 472
    iget-wide v0, p0, Lo/ahV;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lo/ahV;->c:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/ahV;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lo/ahV;->d:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/ahV;->c:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 572
    iget-object v0, p0, Lo/ahV;->a:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->h()Lo/aho;

    move-result-object v0

    .line 574
    invoke-virtual {v0}, Lo/aho;->b()Lo/ahp;

    move-result-object v1

    .line 575
    iget-object v2, p0, Lo/ahV;->b:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 576
    iget-wide v2, p0, Lo/ahV;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "mtserialnumber"

    invoke-virtual {v1, v3, v2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 577
    iget-wide v2, p0, Lo/ahV;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "uitserialnumber"

    invoke-virtual {v1, v3, v2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    const-string v2, "servicedata"

    const-string v3, "(redacted)"

    .line 578
    invoke-virtual {v1, v2, v3}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 580
    invoke-virtual {v0}, Lo/aho;->b()Lo/ahp;

    move-result-object v0

    const-string v2, "tokendata"

    .line 581
    invoke-virtual {v0, v2, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 582
    iget-object v1, p0, Lo/ahV;->n:[B

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "(null)"

    :goto_0
    const-string v2, "signature"

    invoke-virtual {v0, v2, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 583
    invoke-virtual {v0}, Lo/ahp;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
