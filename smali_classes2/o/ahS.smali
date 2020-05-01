.class public Lo/ahS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ahr;


# instance fields
.field private final a:J

.field private final b:Lcom/netflix/msl/util/MslContext;

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:Ljavax/crypto/SecretKey;

.field private final g:Lo/ahp;

.field private final h:Ljavax/crypto/SecretKey;

.field private final i:Ljava/lang/String;

.field private final j:Lo/ahp;

.field private final l:[B

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/ahn;",
            "[B>;"
        }
    .end annotation
.end field

.field private final n:Z

.field private final o:[B


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Ljava/util/Date;Ljava/util/Date;JJLo/ahp;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V
    .locals 13

    move-object v1, p0

    move-wide/from16 v2, p4

    move-wide/from16 v4, p6

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lo/ahS;->m:Ljava/util/Map;

    move-object v0, p2

    move-object/from16 v6, p3

    .line 189
    invoke-virtual {v6, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, " is outside the valid range."

    const-wide/16 v8, 0x0

    cmp-long v10, v2, v8

    if-ltz v10, :cond_2

    const-wide/high16 v10, 0x20000000000000L

    cmp-long v12, v2, v10

    if-gtz v12, :cond_2

    cmp-long v12, v4, v8

    if-ltz v12, :cond_1

    cmp-long v8, v4, v10

    if-gtz v8, :cond_1

    move-object v8, p1

    .line 197
    iput-object v8, v1, Lo/ahS;->b:Lcom/netflix/msl/util/MslContext;

    .line 198
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    iput-wide v9, v1, Lo/ahS;->c:J

    .line 199
    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    div-long/2addr v6, v11

    iput-wide v6, v1, Lo/ahS;->e:J

    .line 200
    iput-wide v2, v1, Lo/ahS;->d:J

    .line 201
    iput-wide v4, v1, Lo/ahS;->a:J

    move-object/from16 v0, p8

    .line 202
    iput-object v0, v1, Lo/ahS;->j:Lo/ahp;

    move-object/from16 v0, p9

    .line 203
    iput-object v0, v1, Lo/ahS;->i:Ljava/lang/String;

    move-object/from16 v0, p10

    .line 204
    iput-object v0, v1, Lo/ahS;->h:Ljavax/crypto/SecretKey;

    move-object/from16 v0, p11

    .line 205
    iput-object v0, v1, Lo/ahS;->f:Ljavax/crypto/SecretKey;

    .line 208
    iget-object v0, v1, Lo/ahS;->h:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 209
    iget-object v2, v1, Lo/ahS;->f:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    .line 213
    :try_start_0
    iget-object v3, v1, Lo/ahS;->h:Ljavax/crypto/SecretKey;

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/msl/MslConstants$EncryptionAlgo;->b(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$EncryptionAlgo;

    move-result-object v3

    .line 214
    iget-object v4, v1, Lo/ahS;->f:Ljavax/crypto/SecretKey;

    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/msl/MslConstants$SignatureAlgo;->a(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$SignatureAlgo;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->h()Lo/aho;

    move-result-object v5

    .line 221
    invoke-virtual {v5}, Lo/aho;->b()Lo/ahp;

    move-result-object v5

    iput-object v5, v1, Lo/ahS;->g:Lo/ahp;

    .line 222
    iget-object v5, v1, Lo/ahS;->j:Lo/ahp;

    if-eqz v5, :cond_0

    .line 223
    iget-object v6, v1, Lo/ahS;->g:Lo/ahp;

    const-string v7, "issuerdata"

    invoke-virtual {v6, v7, v5}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 224
    :cond_0
    iget-object v5, v1, Lo/ahS;->g:Lo/ahp;

    iget-object v6, v1, Lo/ahS;->i:Ljava/lang/String;

    const-string v7, "identity"

    invoke-virtual {v5, v7, v6}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 225
    iget-object v5, v1, Lo/ahS;->g:Lo/ahp;

    const-string v6, "encryptionkey"

    invoke-virtual {v5, v6, v0}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 226
    iget-object v0, v1, Lo/ahS;->g:Lo/ahp;

    const-string v5, "encryptionalgorithm"

    invoke-virtual {v0, v5, v3}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 227
    iget-object v0, v1, Lo/ahS;->g:Lo/ahp;

    const-string v3, "hmackey"

    invoke-virtual {v0, v3, v2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 228
    iget-object v0, v1, Lo/ahS;->g:Lo/ahp;

    const-string v3, "signaturekey"

    invoke-virtual {v0, v3, v2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 229
    iget-object v0, v1, Lo/ahS;->g:Lo/ahp;

    const-string v2, "signaturealgorithm"

    invoke-virtual {v0, v2, v4}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    const/4 v0, 0x0

    .line 231
    iput-object v0, v1, Lo/ahS;->l:[B

    .line 232
    iput-object v0, v1, Lo/ahS;->o:[B

    const/4 v0, 0x1

    .line 233
    iput-boolean v0, v1, Lo/ahS;->n:Z

    return-void

    :catch_0
    move-exception v0

    .line 216
    new-instance v2, Lcom/netflix/msl/MslCryptoException;

    sget-object v3, Lo/agz;->ab:Lo/agz;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encryption algorithm: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lo/ahS;->h:Ljavax/crypto/SecretKey;

    invoke-interface {v5}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; signature algorithm: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lo/ahS;->f:Ljavax/crypto/SecretKey;

    invoke-interface {v5}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 195
    :cond_1
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Serial number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_2
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sequence number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_3
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string v2, "Cannot construct a master token that expires before its renewal window opens."

    invoke-direct {v0, v2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lo/ahp;)V
    .locals 11

    const-string v0, "signaturekey"

    const-string v1, "issuerdata"

    const-string v2, "mastertoken "

    const-string v3, "mastertokendata "

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lo/ahS;->m:Ljava/util/Map;

    .line 251
    iput-object p1, p0, Lo/ahS;->b:Lcom/netflix/msl/util/MslContext;

    .line 254
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->i()Lo/agM;

    move-result-object v4

    .line 257
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->h()Lo/aho;

    move-result-object p1

    :try_start_0
    const-string v5, "tokendata"

    .line 259
    invoke-virtual {p2, v5}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, p0, Lo/ahS;->l:[B

    .line 260
    iget-object v5, p0, Lo/ahS;->l:[B

    array-length v5, v5

    if-eqz v5, :cond_8

    const-string v5, "signature"

    .line 262
    invoke-virtual {p2, v5}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, p0, Lo/ahS;->o:[B

    .line 263
    iget-object v5, p0, Lo/ahS;->l:[B

    iget-object v6, p0, Lo/ahS;->o:[B

    invoke-virtual {v4, v5, v6, p1}, Lo/agM;->e([B[BLo/aho;)Z

    move-result v5

    iput-boolean v5, p0, Lo/ahS;->n:Z
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_4

    .line 271
    :try_start_1
    iget-object p2, p0, Lo/ahS;->l:[B

    invoke-virtual {p1, p2}, Lo/aho;->c([B)Lo/ahp;

    move-result-object p2

    const-string v2, "renewalwindow"

    .line 272
    invoke-virtual {p2, v2}, Lo/ahp;->h(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lo/ahS;->c:J

    const-string v2, "expiration"

    .line 273
    invoke-virtual {p2, v2}, Lo/ahp;->h(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lo/ahS;->e:J

    .line 274
    iget-wide v5, p0, Lo/ahS;->e:J

    iget-wide v7, p0, Lo/ahS;->c:J

    cmp-long v2, v5, v7

    if-ltz v2, :cond_7

    const-string v2, "sequencenumber"

    .line 276
    invoke-virtual {p2, v2}, Lo/ahp;->h(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lo/ahS;->d:J

    .line 277
    iget-wide v5, p0, Lo/ahS;->d:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-ltz v2, :cond_6

    iget-wide v5, p0, Lo/ahS;->d:J

    const-wide/high16 v9, 0x20000000000000L

    cmp-long v2, v5, v9

    if-gtz v2, :cond_6

    const-string v2, "serialnumber"

    .line 279
    invoke-virtual {p2, v2}, Lo/ahp;->h(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lo/ahS;->a:J

    .line 280
    iget-wide v5, p0, Lo/ahS;->a:J

    cmp-long v2, v5, v7

    if-ltz v2, :cond_5

    iget-wide v5, p0, Lo/ahS;->a:J

    cmp-long v2, v5, v9

    if-gtz v2, :cond_5

    const-string v2, "sessiondata"

    .line 282
    invoke-virtual {p2, v2}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object v2

    .line 283
    array-length v5, v2

    if-eqz v5, :cond_4

    .line 285
    iget-boolean p2, p0, Lo/ahS;->n:Z

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {v4, v2, p1}, Lo/agM;->d([BLo/aho;)[B

    move-result-object p2
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :cond_0
    move-object p2, v5

    :goto_0
    if-eqz p2, :cond_3

    .line 295
    :try_start_2
    invoke-virtual {p1, p2}, Lo/aho;->c([B)Lo/ahp;

    move-result-object v2

    iput-object v2, p0, Lo/ahS;->g:Lo/ahp;

    .line 296
    iget-object v2, p0, Lo/ahS;->g:Lo/ahp;

    invoke-virtual {v2, v1}, Lo/ahp;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lo/ahS;->g:Lo/ahp;

    invoke-virtual {v2, v1, p1}, Lo/ahp;->d(Ljava/lang/String;Lo/aho;)Lo/ahp;

    move-result-object v5

    :cond_1
    iput-object v5, p0, Lo/ahS;->j:Lo/ahp;

    .line 297
    iget-object p1, p0, Lo/ahS;->g:Lo/ahp;

    const-string v1, "identity"

    invoke-virtual {p1, v1}, Lo/ahp;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ahS;->i:Ljava/lang/String;

    .line 298
    iget-object p1, p0, Lo/ahS;->g:Lo/ahp;

    const-string v1, "encryptionkey"

    invoke-virtual {p1, v1}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object p1

    .line 299
    iget-object v1, p0, Lo/ahS;->g:Lo/ahp;

    const-string v2, "encryptionalgorithm"

    const-string v3, "AES"

    invoke-virtual {v1, v2, v3}, Lo/ahp;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    iget-object v2, p0, Lo/ahS;->g:Lo/ahp;

    invoke-virtual {v2, v0}, Lo/ahp;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/ahS;->g:Lo/ahp;

    .line 301
    invoke-virtual {v2, v0}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lo/ahS;->g:Lo/ahp;

    const-string v2, "hmackey"

    .line 302
    invoke-virtual {v0, v2}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object v0

    .line 303
    :goto_1
    iget-object v2, p0, Lo/ahS;->g:Lo/ahp;

    const-string v3, "signaturealgorithm"

    const-string v4, "HmacSHA256"

    invoke-virtual {v2, v3, v4}, Lo/ahp;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_2 .. :try_end_2} :catch_2

    .line 311
    :try_start_3
    invoke-static {v1}, Lcom/netflix/msl/MslConstants$EncryptionAlgo;->b(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$EncryptionAlgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/msl/MslConstants$EncryptionAlgo;->toString()Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-static {p2}, Lcom/netflix/msl/MslConstants$SignatureAlgo;->a(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$SignatureAlgo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/msl/MslConstants$SignatureAlgo;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 319
    :try_start_4
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lo/ahS;->h:Ljavax/crypto/SecretKey;

    .line 320
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p1, v0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object p1, p0, Lo/ahS;->f:Ljavax/crypto/SecretKey;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 322
    new-instance p2, Lcom/netflix/msl/MslCryptoException;

    sget-object v0, Lo/agz;->am:Lo/agz;

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 314
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lo/agz;->ab:Lo/agz;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encryption algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; signature algorithm"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v2, p2, p1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 305
    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lo/agz;->au:Lo/agz;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sessiondata "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lo/aik;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2, p1}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 325
    :cond_3
    iput-object v5, p0, Lo/ahS;->g:Lo/ahp;

    .line 326
    iput-object v5, p0, Lo/ahS;->j:Lo/ahp;

    .line 327
    iput-object v5, p0, Lo/ahS;->i:Ljava/lang/String;

    .line 328
    iput-object v5, p0, Lo/ahS;->h:Ljavax/crypto/SecretKey;

    .line 329
    iput-object v5, p0, Lo/ahS;->f:Ljavax/crypto/SecretKey;

    :goto_2
    return-void

    .line 284
    :cond_4
    :try_start_5
    new-instance p1, Lcom/netflix/msl/MslEncodingException;

    sget-object v0, Lo/agz;->aq:Lo/agz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1

    .line 281
    :cond_5
    new-instance p1, Lcom/netflix/msl/MslException;

    sget-object v0, Lo/agz;->ap:Lo/agz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1

    .line 278
    :cond_6
    new-instance p1, Lcom/netflix/msl/MslException;

    sget-object v0, Lo/agz;->an:Lo/agz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1

    .line 275
    :cond_7
    new-instance p1, Lcom/netflix/msl/MslException;

    sget-object v0, Lo/agz;->al:Lo/agz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    move-exception p1

    .line 287
    new-instance p2, Lcom/netflix/msl/MslEncodingException;

    sget-object v0, Lo/agz;->av:Lo/agz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/ahS;->l:[B

    invoke-static {v2}, Lo/aik;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 261
    :cond_8
    :try_start_6
    new-instance p1, Lcom/netflix/msl/MslEncodingException;

    sget-object v0, Lo/agz;->at:Lo/agz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    move-exception p1

    .line 265
    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lo/agz;->e:Lo/agz;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2, p1}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 344
    iget-boolean v0, p0, Lo/ahS;->n:Z

    return v0
.end method

.method public a(Lo/ahS;)Z
    .locals 10

    .line 441
    iget-wide v0, p0, Lo/ahS;->d:J

    iget-wide v2, p1, Lo/ahS;->d:J

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-nez v6, :cond_1

    .line 442
    iget-wide v0, p0, Lo/ahS;->e:J

    iget-wide v2, p1, Lo/ahS;->e:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    const-wide/16 v6, 0x7f

    const-wide/high16 v8, 0x20000000000000L

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    sub-long/2addr v0, v8

    add-long/2addr v0, v6

    cmp-long p1, v2, v0

    if-ltz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_3
    sub-long/2addr v2, v8

    add-long/2addr v2, v6

    cmp-long p1, v0, v2

    if-gez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    return v4
.end method

.method public a(Lo/aho;Lo/ahn;)[B
    .locals 5

    .line 533
    iget-object v0, p0, Lo/ahS;->m:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object p1, p0, Lo/ahS;->m:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    .line 541
    :cond_0
    iget-object v0, p0, Lo/ahS;->l:[B

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/ahS;->o:[B

    if-eqz v0, :cond_1

    goto :goto_0

    .line 551
    :cond_1
    :try_start_0
    iget-object v0, p0, Lo/ahS;->b:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->i()Lo/agM;

    move-result-object v0
    :try_end_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_2

    .line 557
    iget-object v1, p0, Lo/ahS;->g:Lo/ahp;

    invoke-virtual {p1, v1, p2}, Lo/aho;->c(Lo/ahp;Lo/ahn;)[B

    move-result-object v1

    .line 560
    :try_start_1
    invoke-virtual {v0, v1, p1, p2}, Lo/agM;->e([BLo/aho;Lo/ahn;)[B

    move-result-object v1
    :try_end_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 566
    invoke-virtual {p1}, Lo/aho;->b()Lo/ahp;

    move-result-object v2

    .line 567
    iget-wide v3, p0, Lo/ahS;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "renewalwindow"

    invoke-virtual {v2, v4, v3}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 568
    iget-wide v3, p0, Lo/ahS;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "expiration"

    invoke-virtual {v2, v4, v3}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 569
    iget-wide v3, p0, Lo/ahS;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "sequencenumber"

    invoke-virtual {v2, v4, v3}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 570
    iget-wide v3, p0, Lo/ahS;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "serialnumber"

    invoke-virtual {v2, v4, v3}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    const-string v3, "sessiondata"

    .line 571
    invoke-virtual {v2, v3, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 574
    invoke-virtual {p1, v2, p2}, Lo/aho;->c(Lo/ahp;Lo/ahn;)[B

    move-result-object v1

    .line 576
    :try_start_2
    invoke-virtual {v0, v1, p1, p2}, Lo/agM;->c([BLo/aho;Lo/ahn;)[B

    move-result-object v0
    :try_end_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 578
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Error signing the token data."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 562
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Error encrypting the session data."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 553
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Error creating the MSL crypto context."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 542
    :cond_2
    :goto_0
    iget-object v1, p0, Lo/ahS;->l:[B

    .line 543
    iget-object v0, p0, Lo/ahS;->o:[B

    .line 583
    :goto_1
    invoke-virtual {p1}, Lo/aho;->b()Lo/ahp;

    move-result-object v2

    const-string v3, "tokendata"

    .line 584
    invoke-virtual {v2, v3, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    const-string v1, "signature"

    .line 585
    invoke-virtual {v2, v1, v0}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 586
    invoke-virtual {p1, v2, p2}, Lo/aho;->c(Lo/ahp;Lo/ahn;)[B

    move-result-object p1

    .line 589
    iget-object v0, p0, Lo/ahS;->m:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public b()J
    .locals 2

    .line 422
    iget-wide v0, p0, Lo/ahS;->a:J

    return-wide v0
.end method

.method public b(Ljava/util/Date;)Z
    .locals 6

    const/4 v0, 0x1

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 405
    iget-wide v4, p0, Lo/ahS;->e:J

    mul-long v4, v4, v1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    cmp-long p1, v4, v1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 406
    :cond_1
    invoke-virtual {p0}, Lo/ahS;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 407
    iget-wide v4, p0, Lo/ahS;->e:J

    mul-long v4, v4, v1

    iget-object p1, p0, Lo/ahS;->b:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->c()J

    move-result-wide v1

    cmp-long p1, v4, v1

    if-gtz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    return v3
.end method

.method public c()J
    .locals 2

    .line 415
    iget-wide v0, p0, Lo/ahS;->d:J

    return-wide v0
.end method

.method public d()Z
    .locals 1

    .line 337
    iget-object v0, p0, Lo/ahS;->g:Lo/ahp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Ljava/util/Date;)Z
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    .line 373
    iget-wide v4, p0, Lo/ahS;->c:J

    mul-long v4, v4, v1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    cmp-long p1, v4, v1

    if-gtz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 374
    :cond_1
    invoke-virtual {p0}, Lo/ahS;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 375
    iget-wide v4, p0, Lo/ahS;->c:J

    mul-long v4, v4, v1

    iget-object p1, p0, Lo/ahS;->b:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->c()J

    move-result-wide v1

    cmp-long p1, v4, v1

    if-gtz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    return v3
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 474
    iget-object v0, p0, Lo/ahS;->i:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 627
    :cond_0
    instance-of v1, p1, Lo/ahS;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 628
    check-cast p1, Lo/ahS;

    .line 629
    iget-wide v3, p0, Lo/ahS;->a:J

    iget-wide v5, p1, Lo/ahS;->a:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lo/ahS;->d:J

    iget-wide v5, p1, Lo/ahS;->d:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lo/ahS;->e:J

    iget-wide v5, p1, Lo/ahS;->e:J

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

.method public f()Ljavax/crypto/SecretKey;
    .locals 1

    .line 482
    iget-object v0, p0, Lo/ahS;->h:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public g()Ljavax/crypto/SecretKey;
    .locals 1

    .line 490
    iget-object v0, p0, Lo/ahS;->f:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lo/ahS;->a:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lo/ahS;->d:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/ahS;->e:J

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

    .line 598
    iget-object v0, p0, Lo/ahS;->b:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->h()Lo/aho;

    move-result-object v0

    .line 600
    invoke-virtual {v0}, Lo/aho;->b()Lo/ahp;

    move-result-object v1

    .line 601
    iget-wide v2, p0, Lo/ahS;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "renewalwindow"

    invoke-virtual {v1, v3, v2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 602
    iget-wide v2, p0, Lo/ahS;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "expiration"

    invoke-virtual {v1, v3, v2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 603
    iget-wide v2, p0, Lo/ahS;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "sequencenumber"

    invoke-virtual {v1, v3, v2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 604
    iget-wide v2, p0, Lo/ahS;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "serialnumber"

    invoke-virtual {v1, v3, v2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    const-string v2, "sessiondata"

    const-string v3, "(redacted)"

    .line 605
    invoke-virtual {v1, v2, v3}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 607
    invoke-virtual {v0}, Lo/aho;->b()Lo/ahp;

    move-result-object v0

    const-string v2, "tokendata"

    .line 608
    invoke-virtual {v0, v2, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 609
    iget-object v1, p0, Lo/ahS;->o:[B

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "(null)"

    :goto_0
    const-string v2, "signature"

    invoke-virtual {v0, v2, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 610
    invoke-virtual {v0}, Lo/ahp;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
