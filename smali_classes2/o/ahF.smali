.class public Lo/ahF;
.super Lo/ahI;
.source ""


# instance fields
.field protected final a:Lo/ahp;

.field protected final b:Lo/agQ;

.field protected final c:Lcom/netflix/msl/util/MslContext;

.field protected final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/ahn;",
            "[B>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Long;

.field private final f:I

.field private final g:J

.field private final h:Ljava/lang/String;

.field private final i:Lcom/netflix/msl/MslConstants$ResponseCode;

.field private final j:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/netflix/msl/util/MslContext;[BLo/agQ;[B)V
    .locals 7

    const-string v0, "internalcode"

    const-string v1, "timestamp"

    const-string v2, "errordata "

    .line 140
    invoke-direct {p0}, Lo/ahI;-><init>()V

    .line 365
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lo/ahF;->d:Ljava/util/Map;

    .line 141
    iput-object p1, p0, Lo/ahF;->c:Lcom/netflix/msl/util/MslContext;

    .line 143
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->h()Lo/aho;

    move-result-object v3

    .line 148
    :try_start_0
    iput-object p3, p0, Lo/ahF;->b:Lo/agQ;

    if-eqz p3, :cond_6

    .line 153
    invoke-virtual {p3}, Lo/agQ;->b()Lo/agT;

    move-result-object v4

    .line 154
    invoke-virtual {p1, v4}, Lcom/netflix/msl/util/MslContext;->c(Lo/agT;)Lo/agO;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 157
    invoke-virtual {v5, p1, p3}, Lo/agO;->b(Lcom/netflix/msl/util/MslContext;Lo/agQ;)Lo/agM;

    move-result-object p1

    .line 160
    invoke-virtual {p1, p2, p4, v3}, Lo/agM;->e([B[BLo/aho;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 162
    invoke-virtual {p1, p2, v3}, Lo/agM;->d([BLo/aho;)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_0 .. :try_end_0} :catch_3

    .line 172
    :try_start_1
    invoke-virtual {v3, p1}, Lo/aho;->c([B)Lo/ahp;

    move-result-object p2

    iput-object p2, p0, Lo/ahF;->a:Lo/ahp;

    .line 173
    iget-object p2, p0, Lo/ahF;->a:Lo/ahp;

    const-string p4, "messageid"

    invoke-virtual {p2, p4}, Lo/ahp;->h(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lo/ahF;->g:J

    .line 174
    iget-wide v3, p0, Lo/ahF;->g:J

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-ltz p2, :cond_3

    iget-wide v3, p0, Lo/ahF;->g:J
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_2

    const-wide/high16 v5, 0x20000000000000L

    cmp-long p2, v3, v5

    if-gtz p2, :cond_3

    .line 181
    :try_start_2
    iget-object p1, p0, Lo/ahF;->a:Lo/ahp;

    invoke-virtual {p1, v1}, Lo/ahp;->i(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/ahF;->a:Lo/ahp;

    invoke-virtual {p1, v1}, Lo/ahp;->h(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lo/ahF;->e:Ljava/lang/Long;

    .line 184
    sget-object p1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;
    :try_end_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_2 .. :try_end_2} :catch_1

    .line 186
    :try_start_3
    iget-object p1, p0, Lo/ahF;->a:Lo/ahp;

    const-string p4, "errorcode"

    invoke-virtual {p1, p4}, Lo/ahp;->c(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/netflix/msl/MslConstants$ResponseCode;->c(I)Lcom/netflix/msl/MslConstants$ResponseCode;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 188
    :catch_0
    :try_start_4
    sget-object p1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 190
    :goto_1
    iput-object p1, p0, Lo/ahF;->i:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 192
    iget-object p1, p0, Lo/ahF;->a:Lo/ahp;

    invoke-virtual {p1, v0}, Lo/ahp;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 193
    iget-object p1, p0, Lo/ahF;->a:Lo/ahp;

    invoke-virtual {p1, v0}, Lo/ahp;->c(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lo/ahF;->f:I

    .line 194
    iget p1, p0, Lo/ahF;->f:I

    if-ltz p1, :cond_1

    goto :goto_2

    .line 195
    :cond_1
    new-instance p1, Lcom/netflix/msl/MslMessageException;

    sget-object p2, Lo/agz;->ck:Lo/agz;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/ahF;->a:Lo/ahp;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p2, p4}, Lcom/netflix/msl/MslMessageException;-><init>(Lo/agz;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/netflix/msl/MslMessageException;->d(Lo/agQ;)Lcom/netflix/msl/MslMessageException;

    move-result-object p1

    iget-wide v0, p0, Lo/ahF;->g:J

    invoke-virtual {p1, v0, v1}, Lcom/netflix/msl/MslMessageException;->d(J)Lcom/netflix/msl/MslMessageException;

    move-result-object p1

    throw p1

    :cond_2
    const/4 p1, -0x1

    .line 197
    iput p1, p0, Lo/ahF;->f:I

    .line 199
    :goto_2
    iget-object p1, p0, Lo/ahF;->a:Lo/ahp;

    const-string p4, "errormsg"

    invoke-virtual {p1, p4, p2}, Lo/ahp;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ahF;->j:Ljava/lang/String;

    .line 200
    iget-object p1, p0, Lo/ahF;->a:Lo/ahp;

    const-string p4, "usermsg"

    invoke-virtual {p1, p4, p2}, Lo/ahp;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ahF;->h:Ljava/lang/String;
    :try_end_4
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 202
    new-instance p2, Lcom/netflix/msl/MslEncodingException;

    sget-object p4, Lo/agz;->e:Lo/agz;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ahF;->a:Lo/ahp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p4, v0, p1}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Lcom/netflix/msl/MslEncodingException;->d(Lo/agQ;)Lcom/netflix/msl/MslEncodingException;

    move-result-object p1

    iget-wide p2, p0, Lo/ahF;->g:J

    invoke-virtual {p1, p2, p3}, Lcom/netflix/msl/MslEncodingException;->d(J)Lcom/netflix/msl/MslEncodingException;

    move-result-object p1

    throw p1

    .line 175
    :cond_3
    :try_start_5
    new-instance p2, Lcom/netflix/msl/MslMessageException;

    sget-object p4, Lo/agz;->ci:Lo/agz;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ahF;->a:Lo/ahp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p4, v0}, Lcom/netflix/msl/MslMessageException;-><init>(Lo/agz;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/netflix/msl/MslMessageException;->d(Lo/agQ;)Lcom/netflix/msl/MslMessageException;

    move-result-object p2

    throw p2
    :try_end_5
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p2

    .line 177
    new-instance p4, Lcom/netflix/msl/MslEncodingException;

    sget-object v0, Lo/agz;->e:Lo/agz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lo/aik;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, v0, p1, p2}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p4, p3}, Lcom/netflix/msl/MslEncodingException;->d(Lo/agQ;)Lcom/netflix/msl/MslEncodingException;

    move-result-object p1

    throw p1

    .line 161
    :cond_4
    :try_start_6
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object p2, Lo/agz;->cd:Lo/agz;

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;)V

    invoke-virtual {p1, p3}, Lcom/netflix/msl/MslCryptoException;->d(Lo/agQ;)Lcom/netflix/msl/MslCryptoException;

    move-result-object p1

    throw p1

    .line 156
    :cond_5
    new-instance p1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object p2, Lo/agz;->bb:Lo/agz;

    invoke-virtual {v4}, Lo/agT;->e()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p2, p4}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_6
    new-instance p1, Lcom/netflix/msl/MslMessageException;

    sget-object p2, Lo/agz;->bW:Lo/agz;

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslMessageException;-><init>(Lo/agz;)V

    throw p1
    :try_end_6
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    move-exception p1

    .line 167
    invoke-virtual {p1, p3}, Lcom/netflix/msl/MslEntityAuthException;->e(Lo/agQ;)Lcom/netflix/msl/MslEntityAuthException;

    .line 168
    throw p1

    :catch_4
    move-exception p1

    .line 164
    invoke-virtual {p1, p3}, Lcom/netflix/msl/MslCryptoException;->d(Lo/agQ;)Lcom/netflix/msl/MslCryptoException;

    .line 165
    throw p1
.end method


# virtual methods
.method public a()Ljava/util/Date;
    .locals 6

    .line 219
    iget-object v0, p0, Lo/ahF;->e:Ljava/lang/Long;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public a(Lo/aho;Lo/ahn;)[B
    .locals 5

    const-string v0, "Error creating the entity crypto context."

    .line 266
    iget-object v1, p0, Lo/ahF;->d:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    iget-object p1, p0, Lo/ahF;->d:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    .line 270
    :cond_0
    iget-object v1, p0, Lo/ahF;->b:Lo/agQ;

    invoke-virtual {v1}, Lo/agQ;->b()Lo/agT;

    move-result-object v1

    .line 271
    iget-object v2, p0, Lo/ahF;->c:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v2, v1}, Lcom/netflix/msl/util/MslContext;->c(Lo/agT;)Lo/agO;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 276
    :try_start_0
    iget-object v2, p0, Lo/ahF;->c:Lcom/netflix/msl/util/MslContext;

    iget-object v3, p0, Lo/ahF;->b:Lo/agQ;

    invoke-virtual {v1, v2, v3}, Lo/agO;->b(Lcom/netflix/msl/util/MslContext;Lo/agQ;)Lo/agM;

    move-result-object v0
    :try_end_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_2

    .line 284
    iget-object v1, p0, Lo/ahF;->a:Lo/ahp;

    invoke-virtual {p1, v1, p2}, Lo/aho;->c(Lo/ahp;Lo/ahn;)[B

    move-result-object v1

    .line 287
    :try_start_1
    invoke-virtual {v0, v1, p1, p2}, Lo/agM;->e([BLo/aho;Lo/ahn;)[B

    move-result-object v1
    :try_end_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 293
    :try_start_2
    invoke-virtual {v0, v1, p1, p2, p0}, Lo/agM;->c([BLo/aho;Lo/ahn;Lo/ahF;)[B

    move-result-object v0
    :try_end_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_2 .. :try_end_2} :catch_0

    .line 299
    invoke-virtual {p1}, Lo/aho;->b()Lo/ahp;

    move-result-object v2

    .line 300
    iget-object v3, p0, Lo/ahF;->b:Lo/agQ;

    const-string v4, "entityauthdata"

    invoke-virtual {v2, v4, v3}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    const-string v3, "errordata"

    .line 301
    invoke-virtual {v2, v3, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    const-string v1, "signature"

    .line 302
    invoke-virtual {v2, v1, v0}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 303
    invoke-virtual {p1, v2, p2}, Lo/aho;->c(Lo/ahp;Lo/ahn;)[B

    move-result-object p1

    .line 306
    iget-object v0, p0, Lo/ahF;->d:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :catch_0
    move-exception p1

    .line 295
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Error signing the error data."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 289
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Error encrypting the error data."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 280
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 278
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 273
    :cond_1
    new-instance p1, Lcom/netflix/msl/io/MslEncoderException;

    const-string p2, "No entity authentication factory found for entity."

    invoke-direct {p1, p2}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()J
    .locals 2

    .line 226
    iget-wide v0, p0, Lo/ahF;->g:J

    return-wide v0
.end method

.method public c()Lcom/netflix/msl/MslConstants$ResponseCode;
    .locals 1

    .line 236
    iget-object v0, p0, Lo/ahF;->i:Lcom/netflix/msl/MslConstants$ResponseCode;

    return-object v0
.end method

.method public d()Lo/agQ;
    .locals 1

    .line 212
    iget-object v0, p0, Lo/ahF;->b:Lo/agQ;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 243
    iget v0, p0, Lo/ahF;->f:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 317
    :cond_0
    instance-of v1, p1, Lo/ahF;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 318
    :cond_1
    check-cast p1, Lo/ahF;

    .line 319
    iget-object v1, p0, Lo/ahF;->b:Lo/agQ;

    iget-object v3, p1, Lo/ahF;->b:Lo/agQ;

    invoke-virtual {v1, v3}, Lo/agQ;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lo/ahF;->e:Ljava/lang/Long;

    if-eqz v1, :cond_2

    iget-object v3, p1, Lo/ahF;->e:Ljava/lang/Long;

    .line 320
    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lo/ahF;->e:Ljava/lang/Long;

    if-nez v1, :cond_5

    iget-object v1, p1, Lo/ahF;->e:Ljava/lang/Long;

    if-nez v1, :cond_5

    :cond_3
    iget-wide v3, p0, Lo/ahF;->g:J

    iget-wide v5, p1, Lo/ahF;->g:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-object v1, p0, Lo/ahF;->i:Lcom/netflix/msl/MslConstants$ResponseCode;

    iget-object v3, p1, Lo/ahF;->i:Lcom/netflix/msl/MslConstants$ResponseCode;

    if-ne v1, v3, :cond_5

    iget v1, p0, Lo/ahF;->f:I

    iget v3, p1, Lo/ahF;->f:I

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lo/ahF;->j:Ljava/lang/String;

    iget-object v3, p1, Lo/ahF;->j:Ljava/lang/String;

    if-eq v1, v3, :cond_4

    if-eqz v1, :cond_5

    .line 325
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lo/ahF;->h:Ljava/lang/String;

    iget-object p1, p1, Lo/ahF;->h:Ljava/lang/String;

    if-eq v1, p1, :cond_6

    if-eqz v1, :cond_5

    .line 326
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_0
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lo/ahF;->j:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 334
    iget-object v0, p0, Lo/ahF;->b:Lo/agQ;

    invoke-virtual {v0}, Lo/agQ;->hashCode()I

    move-result v0

    iget-object v1, p0, Lo/ahF;->e:Ljava/lang/Long;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 335
    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v0, v1

    iget-wide v3, p0, Lo/ahF;->g:J

    .line 336
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lo/ahF;->i:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 337
    invoke-virtual {v1}, Lcom/netflix/msl/MslConstants$ResponseCode;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Lo/ahF;->f:I

    .line 338
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lo/ahF;->j:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 339
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    xor-int/2addr v0, v1

    iget-object v1, p0, Lo/ahF;->h:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 340
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_2
    xor-int/2addr v0, v2

    return v0
.end method
