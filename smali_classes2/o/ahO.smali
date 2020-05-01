.class public Lo/ahO;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field private final a:Lcom/netflix/msl/util/MslContext;

.field private final b:Lo/aht;

.field private final c:Ljava/io/InputStream;

.field private final d:Lo/agM;

.field private final e:Lo/ahI;

.field private final f:Lo/agM;

.field private g:Z

.field private h:J

.field private i:Z

.field private j:Ljava/lang/Boolean;

.field private k:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Ljava/io/ByteArrayInputStream;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:Z

.field private n:I

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/ByteArrayInputStream;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/io/IOException;

.field private r:Ljava/io/ByteArrayInputStream;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Ljava/io/InputStream;Ljava/util/Set;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Ljava/io/InputStream;",
            "Ljava/util/Set<",
            "Lo/ahz;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/agM;",
            ">;)V"
        }
    .end annotation

    .line 207
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x1

    .line 853
    iput-wide v0, p0, Lo/ahO;->h:J

    const/4 v0, 0x0

    .line 855
    iput-boolean v0, p0, Lo/ahO;->i:Z

    const/4 v1, 0x0

    .line 857
    iput-object v1, p0, Lo/ahO;->j:Ljava/lang/Boolean;

    .line 860
    iput-boolean v0, p0, Lo/ahO;->g:Z

    .line 863
    iput-boolean v0, p0, Lo/ahO;->m:Z

    .line 870
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lo/ahO;->o:Ljava/util/List;

    .line 872
    iput-object v1, p0, Lo/ahO;->k:Ljava/util/ListIterator;

    .line 874
    iput v0, p0, Lo/ahO;->l:I

    .line 876
    iput v0, p0, Lo/ahO;->n:I

    .line 878
    iput-object v1, p0, Lo/ahO;->r:Ljava/io/ByteArrayInputStream;

    .line 881
    iput-object v1, p0, Lo/ahO;->p:Ljava/io/IOException;

    .line 209
    iput-object p1, p0, Lo/ahO;->a:Lcom/netflix/msl/util/MslContext;

    .line 210
    iput-object p2, p0, Lo/ahO;->c:Ljava/io/InputStream;

    .line 213
    :try_start_0
    iget-object v0, p0, Lo/ahO;->a:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->h()Lo/aho;

    move-result-object v0

    invoke-virtual {v0, p2}, Lo/aho;->b(Ljava/io/InputStream;)Lo/aht;

    move-result-object p2

    iput-object p2, p0, Lo/ahO;->b:Lo/aht;

    .line 214
    iget-object p2, p0, Lo/ahO;->b:Lo/aht;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Lo/aht;->d(I)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 216
    iget-object p2, p0, Lo/ahO;->b:Lo/aht;

    invoke-virtual {p2, v0}, Lo/aht;->c(I)Lo/ahp;

    move-result-object p2
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_1

    .line 220
    invoke-static {p1, p2, p4}, Lo/ahI;->b(Lcom/netflix/msl/util/MslContext;Lo/ahp;Ljava/util/Map;)Lo/ahI;

    move-result-object p2

    iput-object p2, p0, Lo/ahO;->e:Lo/ahI;

    .line 225
    :try_start_1
    iget-object p2, p0, Lo/ahO;->e:Lo/ahI;

    instance-of p2, p2, Lo/ahF;

    if-eqz p2, :cond_0

    .line 226
    iput-object v1, p0, Lo/ahO;->f:Lo/agM;

    .line 227
    iput-object v1, p0, Lo/ahO;->d:Lo/agM;

    return-void

    .line 232
    :cond_0
    iget-object p2, p0, Lo/ahO;->e:Lo/ahI;

    check-cast p2, Lo/ahP;

    .line 233
    invoke-static {p1, p2, p3}, Lo/ahO;->c(Lcom/netflix/msl/util/MslContext;Lo/ahP;Ljava/util/Set;)Lo/agM;

    move-result-object p3

    iput-object p3, p0, Lo/ahO;->f:Lo/agM;

    .line 238
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lo/ahO;->f:Lo/agM;

    if-nez p3, :cond_1

    goto :goto_0

    .line 244
    :cond_1
    iget-object p3, p0, Lo/ahO;->f:Lo/agM;

    iput-object p3, p0, Lo/ahO;->d:Lo/agM;

    goto :goto_1

    .line 239
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lo/ahP;->c()Lo/agM;

    move-result-object p3

    iput-object p3, p0, Lo/ahO;->d:Lo/agM;

    .line 248
    :goto_1
    invoke-virtual {p2}, Lo/ahP;->i()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 249
    invoke-virtual {p2}, Lo/ahP;->f()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lo/ahP;->k()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_2

    .line 251
    :cond_3
    new-instance p1, Lcom/netflix/msl/MslMessageException;

    sget-object p3, Lo/agz;->cD:Lo/agz;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lcom/netflix/msl/MslMessageException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1

    .line 257
    :cond_4
    :goto_2
    invoke-virtual {p2}, Lo/ahP;->e()Lo/ahS;

    move-result-object p3

    if-eqz p3, :cond_c

    .line 258
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result p4

    if-nez p4, :cond_5

    invoke-virtual {p3}, Lo/ahS;->a()Z

    move-result p4

    if-eqz p4, :cond_c

    .line 261
    :cond_5
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->g()Lo/ahZ;

    move-result-object p4

    .line 262
    invoke-interface {p4, p1, p3}, Lo/ahZ;->a(Lcom/netflix/msl/util/MslContext;Lo/ahS;)Lo/agz;

    move-result-object v0

    if-nez v0, :cond_b

    .line 269
    invoke-virtual {p2}, Lo/ahP;->o()Lo/ahX;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 271
    invoke-interface {p4, p1, p3, v0}, Lo/ahZ;->c(Lcom/netflix/msl/util/MslContext;Lo/ahS;Lo/ahX;)Lo/agz;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_3

    .line 273
    :cond_6
    new-instance p1, Lcom/netflix/msl/MslUserIdTokenException;

    invoke-direct {p1, v2, v0}, Lcom/netflix/msl/MslUserIdTokenException;-><init>(Lo/agz;Lo/ahX;)V

    throw p1

    .line 277
    :cond_7
    :goto_3
    invoke-virtual {p3, v1}, Lo/ahS;->b(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 280
    invoke-virtual {p2}, Lo/ahP;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 282
    invoke-virtual {p2}, Lo/ahP;->k()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 290
    invoke-interface {p4, p1, p3}, Lo/ahZ;->c(Lcom/netflix/msl/util/MslContext;Lo/ahS;)Lo/agz;

    move-result-object p4

    if-nez p4, :cond_8

    goto :goto_4

    .line 292
    :cond_8
    new-instance p1, Lcom/netflix/msl/MslMessageException;

    const-string p2, "Master token is expired and not renewable."

    invoke-direct {p1, p4, p2}, Lcom/netflix/msl/MslMessageException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1

    .line 283
    :cond_9
    new-instance p1, Lcom/netflix/msl/MslMessageException;

    sget-object p3, Lo/agz;->cI:Lo/agz;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lcom/netflix/msl/MslMessageException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1

    .line 281
    :cond_a
    new-instance p1, Lcom/netflix/msl/MslMessageException;

    sget-object p3, Lo/agz;->cM:Lo/agz;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lcom/netflix/msl/MslMessageException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1

    .line 264
    :cond_b
    new-instance p1, Lcom/netflix/msl/MslMasterTokenException;

    invoke-direct {p1, v0, p3}, Lcom/netflix/msl/MslMasterTokenException;-><init>(Lo/agz;Lo/ahS;)V

    throw p1

    .line 298
    :cond_c
    :goto_4
    invoke-virtual {p2}, Lo/ahP;->j()Ljava/lang/Long;

    move-result-object p4

    if-eqz p4, :cond_f

    if-eqz p3, :cond_e

    .line 307
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->g()Lo/ahZ;

    move-result-object v0

    .line 308
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, p3, v1, v2}, Lo/ahZ;->d(Lcom/netflix/msl/util/MslContext;Lo/ahS;J)Lo/agz;

    move-result-object p1

    if-nez p1, :cond_d

    goto :goto_5

    .line 310
    :cond_d
    new-instance p3, Lcom/netflix/msl/MslMessageException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Lcom/netflix/msl/MslMessageException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p3

    .line 303
    :cond_e
    new-instance p1, Lcom/netflix/msl/MslMessageException;

    sget-object p3, Lo/agz;->cq:Lo/agz;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lcom/netflix/msl/MslMessageException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lcom/netflix/msl/MslException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_f
    :goto_5
    return-void

    :catch_0
    move-exception p1

    .line 313
    iget-object p2, p0, Lo/ahO;->e:Lo/ahI;

    instance-of p3, p2, Lo/ahP;

    if-eqz p3, :cond_10

    .line 314
    check-cast p2, Lo/ahP;

    .line 315
    invoke-virtual {p2}, Lo/ahP;->e()Lo/ahS;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/netflix/msl/MslException;->e(Lo/ahS;)Lcom/netflix/msl/MslException;

    .line 316
    invoke-virtual {p2}, Lo/ahP;->b()Lo/agQ;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/netflix/msl/MslException;->c(Lo/agQ;)Lcom/netflix/msl/MslException;

    .line 317
    invoke-virtual {p2}, Lo/ahP;->o()Lo/ahX;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/netflix/msl/MslException;->b(Lo/ahX;)Lcom/netflix/msl/MslException;

    .line 318
    invoke-virtual {p2}, Lo/ahP;->l()Lo/aie;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/netflix/msl/MslException;->a(Lo/aie;)Lcom/netflix/msl/MslException;

    .line 319
    invoke-virtual {p2}, Lo/ahP;->g()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/netflix/msl/MslException;->a(J)Lcom/netflix/msl/MslException;

    goto :goto_6

    .line 321
    :cond_10
    check-cast p2, Lo/ahF;

    .line 322
    invoke-virtual {p2}, Lo/ahF;->d()Lo/agQ;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/netflix/msl/MslException;->c(Lo/agQ;)Lcom/netflix/msl/MslException;

    .line 323
    invoke-virtual {p2}, Lo/ahF;->b()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/netflix/msl/MslException;->a(J)Lcom/netflix/msl/MslException;

    .line 325
    :goto_6
    throw p1

    .line 215
    :cond_11
    :try_start_2
    new-instance p1, Lcom/netflix/msl/MslEncodingException;

    sget-object p2, Lo/agz;->cc:Lo/agz;

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;)V

    throw p1
    :try_end_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 218
    new-instance p2, Lcom/netflix/msl/MslEncodingException;

    sget-object p3, Lo/agz;->e:Lo/agz;

    const-string p4, "header"

    invoke-direct {p2, p3, p4, p1}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static c(Lcom/netflix/msl/util/MslContext;Lo/ahP;Ljava/util/Set;)Lo/agM;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Lo/ahP;",
            "Ljava/util/Set<",
            "Lo/ahz;",
            ">;)",
            "Lo/agM;"
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Lo/ahP;->e()Lo/ahS;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Lo/ahP;->n()Lo/ahA;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 104
    :cond_0
    invoke-virtual {p1}, Lo/ahA;->d()Lo/ahS;

    move-result-object v2

    .line 105
    invoke-virtual {v2}, Lo/ahS;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    new-instance p1, Lo/agP;

    invoke-direct {p1, p0, v2}, Lo/agP;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahS;)V

    return-object p1

    .line 109
    :cond_1
    invoke-virtual {p1}, Lo/ahA;->e()Lo/ahx;

    move-result-object v2

    .line 110
    invoke-virtual {p0, v2}, Lcom/netflix/msl/util/MslContext;->e(Lo/ahx;)Lo/ahB;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 117
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 118
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 119
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/ahz;

    .line 120
    invoke-virtual {v5}, Lo/ahz;->b()Lo/ahx;

    move-result-object v6

    .line 123
    invoke-virtual {v2, v6}, Lo/ahx;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 127
    :cond_2
    :try_start_0
    invoke-virtual {v3, p0, v5, p1, v0}, Lo/ahB;->b(Lcom/netflix/msl/util/MslContext;Lo/ahz;Lo/ahA;Lo/ahS;)Lo/agM;

    move-result-object p0
    :try_end_0
    .catch Lcom/netflix/msl/MslKeyExchangeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/netflix/msl/MslMasterTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    .line 138
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    throw v1

    :catch_1
    move-exception v1

    .line 135
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    throw v1

    :catch_2
    move-exception v1

    .line 132
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_0

    :cond_5
    throw v1

    :catch_3
    move-exception v1

    .line 129
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_0

    :cond_6
    throw v1

    :cond_7
    if-eqz v1, :cond_c

    .line 146
    instance-of p0, v1, Lcom/netflix/msl/MslKeyExchangeException;

    if-nez p0, :cond_b

    .line 148
    instance-of p0, v1, Lcom/netflix/msl/MslEncodingException;

    if-nez p0, :cond_a

    .line 150
    instance-of p0, v1, Lcom/netflix/msl/MslMasterTokenException;

    if-nez p0, :cond_9

    .line 152
    instance-of p0, v1, Lcom/netflix/msl/MslEntityAuthException;

    if-eqz p0, :cond_8

    .line 153
    check-cast v1, Lcom/netflix/msl/MslEntityAuthException;

    throw v1

    .line 154
    :cond_8
    new-instance p0, Lcom/netflix/msl/MslInternalException;

    const-string p1, "Unexpected exception caught during key exchange."

    invoke-direct {p0, p1, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    .line 151
    :cond_9
    check-cast v1, Lcom/netflix/msl/MslMasterTokenException;

    throw v1

    .line 149
    :cond_a
    check-cast v1, Lcom/netflix/msl/MslEncodingException;

    throw v1

    .line 147
    :cond_b
    check-cast v1, Lcom/netflix/msl/MslKeyExchangeException;

    throw v1

    .line 159
    :cond_c
    new-instance p0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object p1, Lo/agz;->cT:Lo/agz;

    invoke-interface {p2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p0

    .line 112
    :cond_d
    new-instance p0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object p1, Lo/agz;->cP:Lo/agz;

    invoke-virtual {v2}, Lo/ahx;->a()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Lo/ahP;
    .locals 2

    .line 505
    iget-object v0, p0, Lo/ahO;->e:Lo/ahI;

    instance-of v1, v0, Lo/ahP;

    if-eqz v1, :cond_0

    .line 506
    check-cast v0, Lo/ahP;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    .line 604
    iput-boolean p1, p0, Lo/ahO;->g:Z

    return-void
.end method

.method public available()I
    .locals 3

    .line 575
    iget-object v0, p0, Lo/ahO;->r:Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 576
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 580
    iget-object v1, p0, Lo/ahO;->o:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 581
    iget-object v2, p0, Lo/ahO;->r:Ljava/io/ByteArrayInputStream;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 582
    iget-object v2, p0, Lo/ahO;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 583
    iget-object v2, p0, Lo/ahO;->o:Ljava/util/List;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 584
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 585
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/ByteArrayInputStream;

    .line 586
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public b()Lo/ahF;
    .locals 2

    .line 514
    iget-object v0, p0, Lo/ahO;->e:Lo/ahI;

    instance-of v1, v0, Lo/ahF;

    if-eqz v1, :cond_0

    .line 515
    check-cast v0, Lo/ahF;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected b(Lcom/netflix/msl/util/MslContext;Lo/ahp;Lo/agM;)Lo/ahN;
    .locals 1

    .line 381
    new-instance v0, Lo/ahN;

    invoke-direct {v0, p1, p2, p3}, Lo/ahN;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahp;Lo/agM;)V

    return-object v0
.end method

.method public c()Z
    .locals 3

    .line 473
    invoke-virtual {p0}, Lo/ahO;->a()Lo/ahP;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 479
    :cond_0
    invoke-virtual {v0}, Lo/ahP;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 483
    :cond_1
    iget-object v0, p0, Lo/ahO;->j:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 487
    :try_start_0
    invoke-virtual {p0}, Lo/ahO;->d()Ljava/io/ByteArrayInputStream;

    move-result-object v0

    iput-object v0, p0, Lo/ahO;->r:Ljava/io/ByteArrayInputStream;

    .line 488
    iget-object v0, p0, Lo/ahO;->r:Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_2

    .line 489
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lo/ahO;->j:Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 492
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error reading the payload chunk."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lo/ahO;->p:Ljava/io/IOException;

    .line 493
    throw v0

    .line 498
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/ahO;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .line 614
    :try_start_0
    iget-object v0, p0, Lo/ahO;->b:Lo/aht;

    invoke-virtual {v0}, Lo/aht;->c()V
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 621
    :goto_0
    iget-boolean v0, p0, Lo/ahO;->g:Z

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lo/ahO;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 629
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lo/ahO;->c()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lo/ahO;->a()Lo/ahP;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 631
    :cond_1
    invoke-virtual {p0}, Lo/ahO;->d()Ljava/io/ByteArrayInputStream;

    move-result-object v0
    :try_end_1
    .catch Lcom/netflix/msl/MslException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v0, :cond_1

    :catch_1
    :cond_2
    :goto_1
    return-void
.end method

.method protected d()Ljava/io/ByteArrayInputStream;
    .locals 12

    .line 398
    invoke-virtual {p0}, Lo/ahO;->a()Lo/ahP;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 403
    iget-object v1, p0, Lo/ahO;->k:Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    iget-object v0, p0, Lo/ahO;->k:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayInputStream;

    return-object v0

    .line 407
    :cond_0
    invoke-virtual {p0}, Lo/ahO;->e()Lo/ahp;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    .line 409
    :cond_1
    iget-object v3, p0, Lo/ahO;->a:Lcom/netflix/msl/util/MslContext;

    iget-object v4, p0, Lo/ahO;->d:Lo/agM;

    invoke-virtual {p0, v3, v1, v4}, Lo/ahO;->b(Lcom/netflix/msl/util/MslContext;Lo/ahp;Lo/agM;)Lo/ahN;

    move-result-object v1

    .line 413
    invoke-virtual {v0}, Lo/ahP;->e()Lo/ahS;

    move-result-object v3

    .line 414
    invoke-virtual {v0}, Lo/ahP;->b()Lo/agQ;

    move-result-object v4

    .line 415
    invoke-virtual {v0}, Lo/ahP;->o()Lo/ahX;

    move-result-object v5

    .line 416
    invoke-virtual {v0}, Lo/ahP;->l()Lo/aie;

    move-result-object v6

    .line 417
    invoke-virtual {v1}, Lo/ahN;->d()J

    move-result-wide v7

    invoke-virtual {v0}, Lo/ahP;->g()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-nez v11, :cond_7

    .line 424
    invoke-virtual {v1}, Lo/ahN;->a()J

    move-result-wide v7

    iget-wide v9, p0, Lo/ahO;->h:J

    cmp-long v11, v7, v9

    if-nez v11, :cond_6

    const-wide/16 v3, 0x1

    add-long/2addr v9, v3

    .line 431
    iput-wide v9, p0, Lo/ahO;->h:J

    .line 436
    iget-object v3, p0, Lo/ahO;->j:Ljava/lang/Boolean;

    const/4 v4, 0x1

    if-nez v3, :cond_3

    .line 437
    invoke-virtual {v0}, Lo/ahP;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lo/ahP;->k()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 438
    invoke-virtual {v1}, Lo/ahN;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lo/ahN;->c()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 437
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lo/ahO;->j:Ljava/lang/Boolean;

    .line 442
    :cond_3
    invoke-virtual {v1}, Lo/ahN;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 443
    iput-boolean v4, p0, Lo/ahO;->i:Z

    .line 447
    :cond_4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Lo/ahN;->c()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 448
    iget-object v1, p0, Lo/ahO;->o:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 449
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    iput-object v2, p0, Lo/ahO;->k:Ljava/util/ListIterator;

    :cond_5
    return-object v0

    .line 425
    :cond_6
    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v2, Lo/agz;->bU:Lo/agz;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "payload seqno "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lo/ahN;->a()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " expected seqno "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lo/ahO;->h:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/MslMessageException;-><init>(Lo/agz;Ljava/lang/String;)V

    .line 426
    invoke-virtual {v0, v3}, Lcom/netflix/msl/MslMessageException;->a(Lo/ahS;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    .line 427
    invoke-virtual {v0, v4}, Lcom/netflix/msl/MslMessageException;->d(Lo/agQ;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    .line 428
    invoke-virtual {v0, v5}, Lcom/netflix/msl/MslMessageException;->d(Lo/ahX;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    .line 429
    invoke-virtual {v0, v6}, Lcom/netflix/msl/MslMessageException;->a(Lo/aie;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0

    .line 418
    :cond_7
    new-instance v2, Lcom/netflix/msl/MslMessageException;

    sget-object v7, Lo/agz;->bY:Lo/agz;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "payload mid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lo/ahN;->d()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " header mid "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lo/ahP;->g()J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v7, v0}, Lcom/netflix/msl/MslMessageException;-><init>(Lo/agz;Ljava/lang/String;)V

    .line 419
    invoke-virtual {v2, v3}, Lcom/netflix/msl/MslMessageException;->a(Lo/ahS;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    .line 420
    invoke-virtual {v0, v4}, Lcom/netflix/msl/MslMessageException;->d(Lo/agQ;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    .line 421
    invoke-virtual {v0, v5}, Lcom/netflix/msl/MslMessageException;->d(Lo/ahX;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    .line 422
    invoke-virtual {v0, v6}, Lcom/netflix/msl/MslMessageException;->a(Lo/aie;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0

    .line 400
    :cond_8
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string v1, "Read attempted with error message."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected e()Lo/ahp;
    .locals 4

    .line 346
    invoke-virtual {p0}, Lo/ahO;->a()Lo/ahP;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 352
    iget-boolean v0, p0, Lo/ahO;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 357
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/ahO;->b:Lo/aht;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lo/aht;->d(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 358
    iput-boolean v0, p0, Lo/ahO;->i:Z

    return-object v1

    .line 361
    :cond_1
    iget-object v0, p0, Lo/ahO;->b:Lo/aht;

    invoke-virtual {v0, v2}, Lo/aht;->c(I)Lo/ahp;

    move-result-object v0
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 363
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lo/agz;->e:Lo/agz;

    const-string v3, "payloadchunk"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 348
    :cond_2
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string v1, "Read attempted with error message."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 529
    invoke-virtual {p0}, Lo/ahO;->a()Lo/ahP;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 531
    invoke-virtual {v0}, Lo/ahP;->e()Lo/ahS;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 533
    invoke-virtual {v1}, Lo/ahS;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 534
    :cond_0
    invoke-virtual {v0}, Lo/ahP;->b()Lo/agQ;

    move-result-object v0

    invoke-virtual {v0}, Lo/agQ;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 536
    :cond_1
    invoke-virtual {p0}, Lo/ahO;->b()Lo/ahF;

    move-result-object v0

    .line 537
    invoke-virtual {v0}, Lo/ahF;->d()Lo/agQ;

    move-result-object v0

    invoke-virtual {v0}, Lo/agQ;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    .line 335
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public i()Lo/agM;
    .locals 1

    .line 566
    iget-object v0, p0, Lo/ahO;->f:Lo/agM;

    return-object v0
.end method

.method public mark(I)V
    .locals 3

    .line 647
    iput p1, p0, Lo/ahO;->l:I

    const/4 v0, 0x0

    .line 648
    iput v0, p0, Lo/ahO;->n:I

    const/4 v1, 0x1

    .line 651
    iput-boolean v1, p0, Lo/ahO;->m:Z

    .line 654
    iget-object v1, p0, Lo/ahO;->r:Ljava/io/ByteArrayInputStream;

    if-eqz v1, :cond_2

    .line 656
    :goto_0
    iget-object v1, p0, Lo/ahO;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lo/ahO;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lo/ahO;->r:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 657
    iget-object v1, p0, Lo/ahO;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 660
    :cond_0
    iget-object v0, p0, Lo/ahO;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 661
    iget-object v0, p0, Lo/ahO;->o:Ljava/util/List;

    iget-object v1, p0, Lo/ahO;->r:Ljava/io/ByteArrayInputStream;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    :cond_1
    iget-object v0, p0, Lo/ahO;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lo/ahO;->k:Ljava/util/ListIterator;

    .line 666
    iget-object v0, p0, Lo/ahO;->k:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayInputStream;

    iput-object v0, p0, Lo/ahO;->r:Ljava/io/ByteArrayInputStream;

    .line 669
    iget-object v0, p0, Lo/ahO;->r:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 675
    iput-object p1, p0, Lo/ahO;->k:Ljava/util/ListIterator;

    .line 676
    iget-object p1, p0, Lo/ahO;->o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 693
    invoke-virtual {p0, v0}, Lo/ahO;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 694
    aget-byte v0, v0, v1

    return v0
.end method

.method public read([B)I
    .locals 2

    .line 779
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lo/ahO;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 7

    const-string v0, "Error reading the payload chunk."

    .line 703
    iget-object v1, p0, Lo/ahO;->p:Ljava/io/IOException;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    .line 711
    :try_start_0
    invoke-virtual {p0}, Lo/ahO;->c()Z

    move-result v1
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-ge v3, p3, :cond_5

    .line 725
    iget-object v4, p0, Lo/ahO;->r:Ljava/io/ByteArrayInputStream;

    if-eqz v4, :cond_2

    add-int v5, p2, v3

    sub-int v6, p3, v3

    invoke-virtual {v4, p1, v5, v6}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v4

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    :goto_1
    if-eq v4, v2, :cond_3

    add-int/2addr v3, v4

    goto :goto_0

    .line 735
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lo/ahO;->d()Ljava/io/ByteArrayInputStream;

    move-result-object v4

    iput-object v4, p0, Lo/ahO;->r:Ljava/io/ByteArrayInputStream;

    .line 736
    iget-object v4, p0, Lo/ahO;->r:Ljava/io/ByteArrayInputStream;
    :try_end_1
    .catch Lcom/netflix/msl/MslException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v4, :cond_1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 741
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-lez v3, :cond_4

    .line 743
    iput-object p2, p0, Lo/ahO;->p:Ljava/io/IOException;

    return v3

    .line 748
    :cond_4
    throw p2

    :cond_5
    :goto_2
    if-nez v3, :cond_6

    if-lez p3, :cond_6

    return v2

    .line 758
    :cond_6
    iget-boolean p1, p0, Lo/ahO;->m:Z

    if-eqz p1, :cond_7

    .line 759
    iget p1, p0, Lo/ahO;->n:I

    add-int/2addr p1, v3

    iput p1, p0, Lo/ahO;->n:I

    .line 764
    iget p1, p0, Lo/ahO;->n:I

    iget p2, p0, Lo/ahO;->l:I

    if-le p1, p2, :cond_7

    .line 765
    iput-boolean v1, p0, Lo/ahO;->m:Z

    .line 766
    iput v1, p0, Lo/ahO;->l:I

    iput v1, p0, Lo/ahO;->n:I

    :cond_7
    return v3

    :catch_1
    move-exception p1

    .line 718
    iput-object v2, p0, Lo/ahO;->p:Ljava/io/IOException;

    .line 719
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 705
    :cond_8
    iput-object v2, p0, Lo/ahO;->p:Ljava/io/IOException;

    .line 706
    throw v1
.end method

.method public reset()V
    .locals 2

    .line 788
    iget-boolean v0, p0, Lo/ahO;->m:Z

    if-nez v0, :cond_0

    return-void

    .line 795
    :cond_0
    iget-object v0, p0, Lo/ahO;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ByteArrayInputStream;

    .line 796
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_0

    .line 797
    :cond_1
    iget-object v0, p0, Lo/ahO;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lo/ahO;->k:Ljava/util/ListIterator;

    .line 798
    iget-object v0, p0, Lo/ahO;->k:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 799
    iget-object v0, p0, Lo/ahO;->k:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayInputStream;

    iput-object v0, p0, Lo/ahO;->r:Ljava/io/ByteArrayInputStream;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 801
    iput-object v0, p0, Lo/ahO;->r:Ljava/io/ByteArrayInputStream;

    :goto_1
    const/4 v0, 0x0

    .line 805
    iput v0, p0, Lo/ahO;->n:I

    return-void
.end method

.method public skip(J)J
    .locals 8

    const/4 v0, 0x0

    :cond_0
    :goto_0
    int-to-long v1, v0

    cmp-long v3, v1, p1

    if-gez v3, :cond_3

    .line 816
    iget-object v3, p0, Lo/ahO;->r:Ljava/io/ByteArrayInputStream;

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_1

    sub-long v6, p1, v1

    invoke-virtual {v3, v6, v7}, Ljava/io/ByteArrayInputStream;->skip(J)J

    move-result-wide v6

    goto :goto_1

    :cond_1
    move-wide v6, v4

    :goto_1
    cmp-long v3, v6, v4

    if-eqz v3, :cond_2

    add-long/2addr v1, v6

    long-to-int v0, v1

    goto :goto_0

    .line 826
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lo/ahO;->d()Ljava/io/ByteArrayInputStream;

    move-result-object v3

    iput-object v3, p0, Lo/ahO;->r:Ljava/io/ByteArrayInputStream;

    .line 827
    iget-object v3, p0, Lo/ahO;->r:Ljava/io/ByteArrayInputStream;
    :try_end_0
    .catch Lcom/netflix/msl/MslInternalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 832
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Error skipping in the payload chunk."

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 830
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Cannot skip data off an error message."

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    :goto_2
    return-wide v1
.end method
