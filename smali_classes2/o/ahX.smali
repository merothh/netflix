.class public Lo/ahX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ahr;


# instance fields
.field private final a:Lcom/netflix/msl/util/MslContext;

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:Lo/ahU;

.field private final g:Lo/ahp;

.field private final h:[B

.field private final i:Lo/ahp;

.field private final j:[B

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/ahn;",
            "[B>;"
        }
    .end annotation
.end field

.field private final n:Z


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lo/ahp;Lo/ahS;)V
    .locals 12

    const-string v0, "issuerdata"

    const-string v1, "userdata "

    const-string v2, "useridtoken "

    const-string v3, "usertokendata "

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lo/ahX;->l:Ljava/util/Map;

    .line 185
    iput-object p1, p0, Lo/ahX;->a:Lcom/netflix/msl/util/MslContext;

    .line 188
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->i()Lo/agM;

    move-result-object v4

    .line 189
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->h()Lo/aho;

    move-result-object v5

    :try_start_0
    const-string v6, "tokendata"

    .line 193
    invoke-virtual {p2, v6}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object v6

    iput-object v6, p0, Lo/ahX;->h:[B

    .line 194
    iget-object v6, p0, Lo/ahX;->h:[B

    array-length v6, v6

    if-eqz v6, :cond_a

    const-string v6, "signature"

    .line 196
    invoke-virtual {p2, v6}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object v6

    iput-object v6, p0, Lo/ahX;->j:[B

    .line 197
    iget-object v6, p0, Lo/ahX;->h:[B

    iget-object v7, p0, Lo/ahX;->j:[B

    invoke-virtual {v4, v6, v7, v5}, Lo/agM;->e([B[BLo/aho;)Z

    move-result v6

    iput-boolean v6, p0, Lo/ahX;->n:Z
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_3

    .line 205
    :try_start_1
    iget-object p2, p0, Lo/ahX;->h:[B

    invoke-virtual {v5, p2}, Lo/aho;->c([B)Lo/ahp;

    move-result-object p2

    const-string v2, "renewalwindow"

    .line 206
    invoke-virtual {p2, v2}, Lo/ahp;->h(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lo/ahX;->d:J

    const-string v2, "expiration"

    .line 207
    invoke-virtual {p2, v2}, Lo/ahp;->h(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lo/ahX;->e:J

    .line 208
    iget-wide v6, p0, Lo/ahX;->e:J

    iget-wide v8, p0, Lo/ahX;->d:J

    cmp-long v2, v6, v8

    if-ltz v2, :cond_9

    const-string v2, "mtserialnumber"

    .line 210
    invoke-virtual {p2, v2}, Lo/ahp;->h(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lo/ahX;->b:J

    .line 211
    iget-wide v6, p0, Lo/ahX;->b:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-ltz v2, :cond_8

    iget-wide v6, p0, Lo/ahX;->b:J

    const-wide/high16 v10, 0x20000000000000L

    cmp-long v2, v6, v10

    if-gtz v2, :cond_8

    const-string v2, "serialnumber"

    .line 213
    invoke-virtual {p2, v2}, Lo/ahp;->h(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lo/ahX;->c:J

    .line 214
    iget-wide v6, p0, Lo/ahX;->c:J

    cmp-long v2, v6, v8

    if-ltz v2, :cond_7

    iget-wide v6, p0, Lo/ahX;->c:J

    cmp-long v2, v6, v10

    if-gtz v2, :cond_7

    const-string v2, "userdata"

    .line 216
    invoke-virtual {p2, v2}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object p2

    .line 217
    array-length v2, p2

    if-eqz v2, :cond_6

    .line 219
    iget-boolean v2, p0, Lo/ahX;->n:Z

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v4, p2, v5}, Lo/agM;->d([BLo/aho;)[B

    move-result-object p2
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_0
    move-object p2, v6

    :goto_0
    if-eqz p2, :cond_4

    .line 230
    :try_start_2
    invoke-virtual {v5, p2}, Lo/aho;->c([B)Lo/ahp;

    move-result-object v2

    iput-object v2, p0, Lo/ahX;->g:Lo/ahp;

    .line 231
    iget-object v2, p0, Lo/ahX;->g:Lo/ahp;

    invoke-virtual {v2, v0}, Lo/ahp;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lo/ahX;->g:Lo/ahp;

    invoke-virtual {v2, v0, v5}, Lo/ahp;->d(Ljava/lang/String;Lo/aho;)Lo/ahp;

    move-result-object v6

    :cond_1
    iput-object v6, p0, Lo/ahX;->i:Lo/ahp;

    .line 232
    iget-object v0, p0, Lo/ahX;->g:Lo/ahp;

    const-string v2, "identity"

    invoke-virtual {v0, v2}, Lo/ahp;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 233
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 235
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->g()Lo/ahZ;

    move-result-object v2

    .line 236
    invoke-interface {v2, p1, v0}, Lo/ahZ;->e(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;)Lo/ahU;

    move-result-object p1

    iput-object p1, p0, Lo/ahX;->f:Lo/ahU;

    .line 237
    iget-object p1, p0, Lo/ahX;->f:Lo/ahU;

    if-eqz p1, :cond_2

    goto :goto_1

    .line 238
    :cond_2
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string v0, "TokenFactory.createUser() returned null in violation of the interface contract."

    invoke-direct {p1, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 234
    :cond_3
    new-instance p1, Lcom/netflix/msl/MslException;

    sget-object v0, Lo/agz;->aK:Lo/agz;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lo/ahX;->g:Lo/ahp;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/netflix/msl/MslException;->e(Lo/ahS;)Lcom/netflix/msl/MslException;

    move-result-object p1

    throw p1
    :try_end_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 240
    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lo/agz;->aQ:Lo/agz;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lo/aik;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v2, p2, p1}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslEncodingException;->d(Lo/ahS;)Lcom/netflix/msl/MslEncodingException;

    move-result-object p1

    throw p1

    .line 243
    :cond_4
    iput-object v6, p0, Lo/ahX;->g:Lo/ahp;

    .line 244
    iput-object v6, p0, Lo/ahX;->i:Lo/ahp;

    .line 245
    iput-object v6, p0, Lo/ahX;->f:Lo/ahU;

    :goto_1
    if-eqz p3, :cond_5

    .line 249
    iget-wide p1, p0, Lo/ahX;->b:J

    invoke-virtual {p3}, Lo/ahS;->b()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-nez v2, :cond_5

    return-void

    .line 250
    :cond_5
    new-instance p1, Lcom/netflix/msl/MslException;

    sget-object p2, Lo/agz;->aB:Lo/agz;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uit mtserialnumber "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/ahX;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; mt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/netflix/msl/MslException;->e(Lo/ahS;)Lcom/netflix/msl/MslException;

    move-result-object p1

    throw p1

    .line 218
    :cond_6
    :try_start_3
    new-instance p1, Lcom/netflix/msl/MslException;

    sget-object p2, Lo/agz;->aG:Lo/agz;

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;)V

    invoke-virtual {p1, p3}, Lcom/netflix/msl/MslException;->e(Lo/ahS;)Lcom/netflix/msl/MslException;

    move-result-object p1

    throw p1

    .line 215
    :cond_7
    new-instance p1, Lcom/netflix/msl/MslException;

    sget-object v0, Lo/agz;->aL:Lo/agz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/netflix/msl/MslException;->e(Lo/ahS;)Lcom/netflix/msl/MslException;

    move-result-object p1

    throw p1

    .line 212
    :cond_8
    new-instance p1, Lcom/netflix/msl/MslException;

    sget-object v0, Lo/agz;->aC:Lo/agz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/netflix/msl/MslException;->e(Lo/ahS;)Lcom/netflix/msl/MslException;

    move-result-object p1

    throw p1

    .line 209
    :cond_9
    new-instance p1, Lcom/netflix/msl/MslException;

    sget-object v0, Lo/agz;->aD:Lo/agz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/netflix/msl/MslException;->e(Lo/ahS;)Lcom/netflix/msl/MslException;

    move-result-object p1

    throw p1
    :try_end_3
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    .line 223
    invoke-virtual {p1, p3}, Lcom/netflix/msl/MslCryptoException;->b(Lo/ahS;)Lcom/netflix/msl/MslCryptoException;

    .line 224
    throw p1

    :catch_2
    move-exception p1

    .line 221
    new-instance p2, Lcom/netflix/msl/MslEncodingException;

    sget-object v0, Lo/agz;->aM:Lo/agz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/ahX;->h:[B

    invoke-static {v2}, Lo/aik;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Lcom/netflix/msl/MslEncodingException;->d(Lo/ahS;)Lcom/netflix/msl/MslEncodingException;

    move-result-object p1

    throw p1

    .line 195
    :cond_a
    :try_start_4
    new-instance p1, Lcom/netflix/msl/MslEncodingException;

    sget-object v0, Lo/agz;->aP:Lo/agz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/netflix/msl/MslEncodingException;->d(Lo/ahS;)Lcom/netflix/msl/MslEncodingException;

    move-result-object p1

    throw p1
    :try_end_4
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception p1

    .line 199
    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lo/agz;->e:Lo/agz;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2, p1}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslEncodingException;->d(Lo/ahS;)Lcom/netflix/msl/MslEncodingException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 264
    iget-boolean v0, p0, Lo/ahX;->n:Z

    return v0
.end method

.method public a(Lo/aho;Lo/ahn;)[B
    .locals 5

    .line 408
    iget-object v0, p0, Lo/ahX;->l:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object p1, p0, Lo/ahX;->l:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    .line 416
    :cond_0
    iget-object v0, p0, Lo/ahX;->h:[B

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/ahX;->j:[B

    if-eqz v0, :cond_1

    goto :goto_0

    .line 426
    :cond_1
    :try_start_0
    iget-object v0, p0, Lo/ahX;->a:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->i()Lo/agM;

    move-result-object v0
    :try_end_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_2

    .line 432
    iget-object v1, p0, Lo/ahX;->g:Lo/ahp;

    invoke-virtual {p1, v1, p2}, Lo/aho;->c(Lo/ahp;Lo/ahn;)[B

    move-result-object v1

    .line 435
    :try_start_1
    invoke-virtual {v0, v1, p1, p2}, Lo/agM;->e([BLo/aho;Lo/ahn;)[B

    move-result-object v1
    :try_end_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 441
    invoke-virtual {p1}, Lo/aho;->b()Lo/ahp;

    move-result-object v2

    .line 442
    iget-wide v3, p0, Lo/ahX;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "renewalwindow"

    invoke-virtual {v2, v4, v3}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 443
    iget-wide v3, p0, Lo/ahX;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "expiration"

    invoke-virtual {v2, v4, v3}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 444
    iget-wide v3, p0, Lo/ahX;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "mtserialnumber"

    invoke-virtual {v2, v4, v3}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 445
    iget-wide v3, p0, Lo/ahX;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "serialnumber"

    invoke-virtual {v2, v4, v3}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    const-string v3, "userdata"

    .line 446
    invoke-virtual {v2, v3, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 449
    invoke-virtual {p1, v2, p2}, Lo/aho;->c(Lo/ahp;Lo/ahn;)[B

    move-result-object v1

    .line 451
    :try_start_2
    invoke-virtual {v0, v1, p1, p2}, Lo/agM;->c([BLo/aho;Lo/ahn;)[B

    move-result-object v0
    :try_end_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 453
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Error signing the token data."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 437
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Error encrypting the user data."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 428
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Error creating the MSL crypto context."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 417
    :cond_2
    :goto_0
    iget-object v1, p0, Lo/ahX;->h:[B

    .line 418
    iget-object v0, p0, Lo/ahX;->j:[B

    .line 458
    :goto_1
    invoke-virtual {p1}, Lo/aho;->b()Lo/ahp;

    move-result-object v2

    const-string v3, "tokendata"

    .line 459
    invoke-virtual {v2, v3, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    const-string v1, "signature"

    .line 460
    invoke-virtual {v2, v1, v0}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 461
    invoke-virtual {p1, v2, p2}, Lo/aho;->c(Lo/ahp;Lo/ahn;)[B

    move-result-object p1

    .line 464
    iget-object v0, p0, Lo/ahX;->l:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public b()J
    .locals 2

    .line 351
    iget-wide v0, p0, Lo/ahX;->c:J

    return-wide v0
.end method

.method public d()Lo/ahU;
    .locals 1

    .line 344
    iget-object v0, p0, Lo/ahX;->f:Lo/ahU;

    return-object v0
.end method

.method public d(Ljava/util/Date;)Z
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    .line 293
    iget-wide v4, p0, Lo/ahX;->d:J

    mul-long v4, v4, v1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    cmp-long p1, v4, v1

    if-gtz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 294
    :cond_1
    invoke-virtual {p0}, Lo/ahX;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 295
    iget-wide v4, p0, Lo/ahX;->d:J

    mul-long v4, v4, v1

    iget-object p1, p0, Lo/ahX;->a:Lcom/netflix/msl/util/MslContext;

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

.method public e()J
    .locals 2

    .line 361
    iget-wide v0, p0, Lo/ahX;->b:J

    return-wide v0
.end method

.method public e(Ljava/util/Date;)Z
    .locals 6

    const/4 v0, 0x1

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 325
    iget-wide v4, p0, Lo/ahX;->e:J

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

    .line 326
    :cond_1
    invoke-virtual {p0}, Lo/ahX;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 327
    iget-wide v4, p0, Lo/ahX;->e:J

    mul-long v4, v4, v1

    iget-object p1, p0, Lo/ahX;->a:Lcom/netflix/msl/util/MslContext;

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

.method public e(Lo/ahS;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 369
    invoke-virtual {p1}, Lo/ahS;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lo/ahX;->b:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 503
    :cond_0
    instance-of v1, p1, Lo/ahX;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 504
    check-cast p1, Lo/ahX;

    .line 505
    iget-wide v3, p0, Lo/ahX;->c:J

    iget-wide v5, p1, Lo/ahX;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lo/ahX;->b:J

    iget-wide v5, p1, Lo/ahX;->b:J

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

.method public hashCode()I
    .locals 3

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lo/ahX;->c:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/ahX;->b:J

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

    .line 473
    iget-object v0, p0, Lo/ahX;->a:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->h()Lo/aho;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Lo/aho;->b()Lo/ahp;

    move-result-object v1

    .line 476
    iget-wide v2, p0, Lo/ahX;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "renewalwindow"

    invoke-virtual {v1, v3, v2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 477
    iget-wide v2, p0, Lo/ahX;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "expiration"

    invoke-virtual {v1, v3, v2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 478
    iget-wide v2, p0, Lo/ahX;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "mtserialnumber"

    invoke-virtual {v1, v3, v2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 479
    iget-wide v2, p0, Lo/ahX;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "serialnumber"

    invoke-virtual {v1, v3, v2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    const-string v2, "userdata"

    const-string v3, "(redacted)"

    .line 480
    invoke-virtual {v1, v2, v3}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 482
    invoke-virtual {v0}, Lo/aho;->b()Lo/ahp;

    move-result-object v0

    const-string v2, "tokendata"

    .line 483
    invoke-virtual {v0, v2, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 484
    iget-object v1, p0, Lo/ahX;->j:[B

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "(null)"

    :goto_0
    const-string v2, "signature"

    invoke-virtual {v0, v2, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 485
    invoke-virtual {v0}, Lo/ahp;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
