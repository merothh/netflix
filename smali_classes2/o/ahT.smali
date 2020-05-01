.class public Lo/ahT;
.super Lo/ahK;
.source ""


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lo/ahP;)V
    .locals 21

    move-object/from16 v0, p1

    .line 152
    invoke-direct/range {p0 .. p1}, Lo/ahK;-><init>(Lcom/netflix/msl/util/MslContext;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Lo/ahP;->e()Lo/ahS;

    move-result-object v13

    .line 154
    invoke-virtual/range {p2 .. p2}, Lo/ahP;->b()Lo/agQ;

    move-result-object v14

    .line 155
    invoke-virtual/range {p2 .. p2}, Lo/ahP;->o()Lo/ahX;

    move-result-object v1

    .line 156
    invoke-virtual/range {p2 .. p2}, Lo/ahP;->l()Lo/aie;

    move-result-object v15

    .line 159
    invoke-virtual/range {p2 .. p2}, Lo/ahP;->g()J

    move-result-wide v11

    .line 160
    invoke-static {v11, v12}, Lo/ahT;->a(J)J

    move-result-wide v3

    .line 164
    invoke-virtual/range {p2 .. p2}, Lo/ahP;->h()Lo/ahL;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->d()Lo/ahL;

    move-result-object v5

    invoke-static {v2, v5}, Lo/ahL;->d(Lo/ahL;Lo/ahL;)Lo/ahL;

    move-result-object v5

    .line 167
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->h()Lo/aho;

    move-result-object v2

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 168
    invoke-virtual {v5}, Lo/ahL;->b()Ljava/util/Set;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, v6

    .line 169
    :goto_0
    invoke-virtual {v2, v7}, Lo/aho;->e(Ljava/util/Set;)Lo/ahn;

    move-result-object v2

    .line 174
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lo/ahP;->k()Ljava/util/Set;

    move-result-object v7

    .line 175
    invoke-virtual/range {p2 .. p2}, Lo/ahP;->f()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz v13, :cond_2

    .line 180
    invoke-virtual {v13, v6}, Lo/ahS;->d(Ljava/util/Date;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v13, v6}, Lo/ahS;->b(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 181
    :cond_1
    invoke-static {v0, v2, v7, v13, v6}, Lo/ahT;->d(Lcom/netflix/msl/util/MslContext;Lo/ahn;Ljava/util/Set;Lo/ahS;Lo/agQ;)Lo/ahB$TaskDescription;

    move-result-object v2

    goto :goto_1

    .line 193
    :cond_2
    invoke-static {v0, v2, v7, v6, v14}, Lo/ahT;->d(Lcom/netflix/msl/util/MslContext;Lo/ahn;Ljava/util/Set;Lo/ahS;Lo/agQ;)Lo/ahB$TaskDescription;

    move-result-object v2

    :goto_1
    move-object v10, v2

    goto :goto_2

    :cond_3
    move-object v10, v6

    :goto_2
    if-eqz v10, :cond_4

    .line 207
    iget-object v2, v10, Lo/ahB$TaskDescription;->c:Lo/ahA;

    invoke-virtual {v2}, Lo/ahA;->d()Lo/ahS;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v13

    :goto_3
    if-eqz v1, :cond_7

    .line 214
    invoke-virtual {v1}, Lo/ahX;->a()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 218
    invoke-virtual {v1, v6}, Lo/ahX;->d(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual/range {p2 .. p2}, Lo/ahP;->f()Z

    move-result v7

    if-nez v7, :cond_6

    .line 219
    :cond_5
    invoke-virtual {v1, v6}, Lo/ahX;->e(Ljava/util/Date;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 220
    invoke-virtual {v1, v2}, Lo/ahX;->e(Lo/ahS;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 222
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->g()Lo/ahZ;

    move-result-object v6

    .line 223
    invoke-interface {v6, v0, v1, v2}, Lo/ahZ;->d(Lcom/netflix/msl/util/MslContext;Lo/ahX;Lo/ahS;)Lo/ahX;

    move-result-object v1

    goto :goto_5

    .line 230
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lo/ahP;->f()Z

    move-result v7

    if-eqz v7, :cond_a

    if-eqz v2, :cond_a

    if-eqz v15, :cond_a

    .line 235
    invoke-virtual/range {p2 .. p2}, Lo/ahP;->a()Lo/ahU;

    move-result-object v7

    if-nez v7, :cond_9

    .line 237
    invoke-virtual {v15}, Lo/aie;->b()Lo/aib;

    move-result-object v7

    .line 238
    invoke-virtual {v0, v7}, Lcom/netflix/msl/util/MslContext;->d(Lo/aib;)Lo/aif;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 245
    invoke-virtual {v2}, Lo/ahS;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v0, v7, v15, v6}, Lo/aif;->b(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Lo/aie;Lo/ahX;)Lo/ahU;

    move-result-object v7

    goto :goto_4

    .line 240
    :cond_8
    new-instance v0, Lcom/netflix/msl/MslUserAuthException;

    sget-object v2, Lo/agz;->bC:Lo/agz;

    invoke-virtual {v7}, Lo/aib;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/netflix/msl/MslUserAuthException;-><init>(Lo/agz;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0, v13}, Lcom/netflix/msl/MslUserAuthException;->b(Lo/ahS;)Lcom/netflix/msl/MslUserAuthException;

    move-result-object v0

    .line 242
    invoke-virtual {v0, v15}, Lcom/netflix/msl/MslUserAuthException;->d(Lo/aie;)Lcom/netflix/msl/MslUserAuthException;

    move-result-object v0

    .line 243
    invoke-virtual {v0, v11, v12}, Lcom/netflix/msl/MslUserAuthException;->a(J)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0

    .line 247
    :cond_9
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->g()Lo/ahZ;

    move-result-object v6

    .line 248
    invoke-interface {v6, v0, v7, v2}, Lo/ahZ;->e(Lcom/netflix/msl/util/MslContext;Lo/ahU;Lo/ahS;)Lo/ahX;

    move-result-object v1
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_a
    :goto_5
    move-object/from16 v16, v1

    .line 254
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lo/ahP;->n()Lo/ahA;

    move-result-object v1

    .line 255
    invoke-virtual/range {p2 .. p2}, Lo/ahP;->m()Ljava/util/Set;

    move-result-object v17

    .line 256
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v1, :cond_b

    .line 257
    invoke-virtual {v1}, Lo/ahA;->d()Lo/ahS;

    move-result-object v1

    goto :goto_6

    :cond_b
    invoke-virtual/range {p2 .. p2}, Lo/ahP;->q()Lo/ahS;

    move-result-object v1

    :goto_6
    move-object v6, v1

    .line 258
    invoke-virtual/range {p2 .. p2}, Lo/ahP;->r()Lo/ahX;

    move-result-object v7

    .line 259
    invoke-virtual/range {p2 .. p2}, Lo/ahP;->p()Ljava/util/Set;

    move-result-object v8
    :try_end_1
    .catch Lcom/netflix/msl/MslException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v9, v13

    move-object/from16 v18, v10

    move-object/from16 v10, v16

    move-wide/from16 v19, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    .line 260
    :try_start_2
    invoke-virtual/range {v1 .. v12}, Lo/ahT;->a(Lcom/netflix/msl/util/MslContext;JLo/ahL;Lo/ahS;Lo/ahX;Ljava/util/Set;Lo/ahS;Lo/ahX;Ljava/util/Set;Lo/ahB$TaskDescription;)V

    goto :goto_8

    :cond_c
    move-object/from16 v18, v10

    move-wide/from16 v19, v11

    if-eqz v1, :cond_d

    .line 262
    invoke-virtual {v1}, Lo/ahA;->d()Lo/ahS;

    move-result-object v1

    move-object v6, v1

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_9

    :cond_d
    move-object v6, v13

    :goto_7
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v12, v18

    .line 263
    invoke-virtual/range {v1 .. v12}, Lo/ahT;->a(Lcom/netflix/msl/util/MslContext;JLo/ahL;Lo/ahS;Lo/ahX;Ljava/util/Set;Lo/ahS;Lo/ahX;Ljava/util/Set;Lo/ahB$TaskDescription;)V
    :try_end_2
    .catch Lcom/netflix/msl/MslException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_8
    return-void

    :catch_1
    move-exception v0

    move-wide/from16 v19, v11

    :goto_9
    move-object/from16 v1, v16

    goto :goto_a

    :catch_2
    move-exception v0

    move-wide/from16 v19, v11

    .line 266
    :goto_a
    invoke-virtual {v0, v13}, Lcom/netflix/msl/MslException;->e(Lo/ahS;)Lcom/netflix/msl/MslException;

    .line 267
    invoke-virtual {v0, v14}, Lcom/netflix/msl/MslException;->c(Lo/agQ;)Lcom/netflix/msl/MslException;

    .line 268
    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslException;->b(Lo/ahX;)Lcom/netflix/msl/MslException;

    .line 269
    invoke-virtual {v0, v15}, Lcom/netflix/msl/MslException;->a(Lo/aie;)Lcom/netflix/msl/MslException;

    move-wide/from16 v1, v19

    .line 270
    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/MslException;->a(J)Lcom/netflix/msl/MslException;

    .line 271
    throw v0
.end method

.method private static d(Lcom/netflix/msl/util/MslContext;Lo/ahn;Ljava/util/Set;Lo/ahS;Lo/agQ;)Lo/ahB$TaskDescription;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Lo/ahn;",
            "Ljava/util/Set<",
            "Lo/ahz;",
            ">;",
            "Lo/ahS;",
            "Lo/agQ;",
            ")",
            "Lo/ahB$TaskDescription;"
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->e()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 81
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ahB;

    .line 83
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/ahz;

    .line 84
    invoke-virtual {v2}, Lo/ahB;->c()Lo/ahx;

    move-result-object v5

    invoke-virtual {v4}, Lo/ahz;->b()Lo/ahx;

    move-result-object v6

    invoke-virtual {v5, v6}, Lo/ahx;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 91
    :try_start_0
    invoke-virtual {v2, p0, p1, v4, p3}, Lo/ahB;->a(Lcom/netflix/msl/util/MslContext;Lo/ahn;Lo/ahz;Lo/ahS;)Lo/ahB$TaskDescription;

    move-result-object p0

    return-object p0

    .line 93
    :cond_2
    invoke-virtual {v2, p0, p1, v4, p4}, Lo/ahB;->b(Lcom/netflix/msl/util/MslContext;Lo/ahn;Lo/ahz;Lo/agQ;)Lo/ahB$TaskDescription;

    move-result-object p0
    :try_end_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/netflix/msl/MslKeyExchangeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/netflix/msl/MslMasterTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    throw v1

    :catch_1
    move-exception v1

    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    throw v1

    :catch_2
    move-exception v1

    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    throw v1

    :catch_3
    move-exception v1

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_0

    :cond_6
    throw v1

    :catch_4
    move-exception v1

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_0

    :cond_7
    throw v1

    :cond_8
    if-eqz v1, :cond_e

    .line 116
    instance-of p0, v1, Lcom/netflix/msl/MslCryptoException;

    if-nez p0, :cond_d

    .line 118
    instance-of p0, v1, Lcom/netflix/msl/MslKeyExchangeException;

    if-nez p0, :cond_c

    .line 120
    instance-of p0, v1, Lcom/netflix/msl/MslEncodingException;

    if-nez p0, :cond_b

    .line 122
    instance-of p0, v1, Lcom/netflix/msl/MslMasterTokenException;

    if-nez p0, :cond_a

    .line 124
    instance-of p0, v1, Lcom/netflix/msl/MslEntityAuthException;

    if-eqz p0, :cond_9

    .line 125
    check-cast v1, Lcom/netflix/msl/MslEntityAuthException;

    throw v1

    .line 126
    :cond_9
    new-instance p0, Lcom/netflix/msl/MslInternalException;

    const-string p1, "Unexpected exception caught during key exchange."

    invoke-direct {p0, p1, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    .line 123
    :cond_a
    check-cast v1, Lcom/netflix/msl/MslMasterTokenException;

    throw v1

    .line 121
    :cond_b
    check-cast v1, Lcom/netflix/msl/MslEncodingException;

    throw v1

    .line 119
    :cond_c
    check-cast v1, Lcom/netflix/msl/MslKeyExchangeException;

    throw v1

    .line 117
    :cond_d
    check-cast v1, Lcom/netflix/msl/MslCryptoException;

    throw v1

    .line 130
    :cond_e
    new-instance p0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object p1, Lo/agz;->cP:Lo/agz;

    invoke-interface {p2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p0
.end method
