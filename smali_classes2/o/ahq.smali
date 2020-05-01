.class public Lo/ahq;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 34
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lo/ahq;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lo/ahp;Lo/ahp;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_f

    if-nez p1, :cond_1

    goto/16 :goto_4

    .line 167
    :cond_1
    invoke-virtual {p0}, Lo/ahp;->a()Ljava/util/Set;

    move-result-object v2

    .line 168
    invoke-virtual {p1}, Lo/ahp;->a()Ljava/util/Set;

    move-result-object v3

    if-eq v2, v3, :cond_4

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 172
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    if-eq v4, v5, :cond_2

    goto :goto_0

    .line 175
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    :goto_0
    return v1

    .line 180
    :cond_4
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 181
    invoke-virtual {p0, v3}, Lo/ahp;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 182
    invoke-virtual {p1, v3}, Lo/ahp;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_6

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_d

    if-nez v5, :cond_7

    goto :goto_3

    .line 190
    :cond_7
    instance-of v6, v4, [B

    if-nez v6, :cond_c

    instance-of v6, v5, [B

    if-eqz v6, :cond_8

    goto :goto_2

    .line 195
    :cond_8
    instance-of v3, v4, Lo/ahp;

    if-eqz v3, :cond_9

    instance-of v3, v5, Lo/ahp;

    if-eqz v3, :cond_9

    .line 196
    check-cast v4, Lo/ahp;

    check-cast v5, Lo/ahp;

    invoke-static {v4, v5}, Lo/ahq;->c(Lo/ahp;Lo/ahp;)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    .line 198
    :cond_9
    instance-of v3, v4, Lo/ahm;

    if-eqz v3, :cond_a

    instance-of v3, v5, Lo/ahm;

    if-eqz v3, :cond_a

    .line 199
    check-cast v4, Lo/ahm;

    check-cast v5, Lo/ahm;

    invoke-static {v4, v5}, Lo/ahq;->e(Lo/ahm;Lo/ahm;)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    .line 202
    :cond_a
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v3, v6, :cond_b

    return v1

    .line 204
    :cond_b
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    .line 191
    :cond_c
    :goto_2
    invoke-virtual {p0, v3}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object v4

    .line 192
    invoke-virtual {p1, v3}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object v3

    .line 193
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_d
    :goto_3
    return v1

    :cond_e
    return v0

    :cond_f
    :goto_4
    return v1
.end method

.method public static d(Lo/ahp;)I
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0}, Lo/ahp;->a()Ljava/util/Set;

    move-result-object v1

    .line 224
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 228
    invoke-virtual {p0, v2, v3}, Lo/ahp;->b(Ljava/lang/String;[B)[B

    move-result-object v3

    if-eqz v3, :cond_1

    .line 230
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    goto :goto_1

    .line 235
    :cond_1
    invoke-virtual {p0, v2}, Lo/ahp;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 236
    instance-of v4, v3, Lo/ahp;

    if-eqz v4, :cond_2

    .line 237
    check-cast v3, Lo/ahp;

    invoke-static {v3}, Lo/ahq;->d(Lo/ahp;)I

    move-result v3

    goto :goto_1

    .line 238
    :cond_2
    instance-of v4, v3, Lo/ahm;

    if-eqz v4, :cond_3

    .line 239
    check-cast v3, Lo/ahm;

    invoke-static {v3}, Lo/ahq;->e(Lo/ahm;)I

    move-result v3

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 241
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    .line 248
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v2, v3

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_5
    return v0
.end method

.method public static d(Lo/aho;Lo/ahn;Ljava/util/Collection;)Lo/ahm;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/aho;",
            "Lo/ahn;",
            "Ljava/util/Collection<",
            "*>;)",
            "Lo/ahm;"
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lo/aho;->c()Lo/ahm;

    move-result-object v0

    .line 121
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 122
    instance-of v2, v1, [B

    const/4 v3, -0x1

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/Boolean;

    if-nez v2, :cond_2

    instance-of v2, v1, Lo/ahm;

    if-nez v2, :cond_2

    instance-of v2, v1, Lo/ahp;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/Number;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/util/Map;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/util/Collection;

    if-nez v2, :cond_2

    instance-of v2, v1, [Ljava/lang/Object;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/Enum;

    if-nez v2, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    .line 135
    :cond_0
    instance-of v2, v1, Lo/ahr;

    if-eqz v2, :cond_1

    .line 136
    check-cast v1, Lo/ahr;

    .line 137
    invoke-interface {v1, p0, p1}, Lo/ahr;->a(Lo/aho;Lo/ahn;)[B

    move-result-object v1

    .line 138
    invoke-virtual {p0, v1}, Lo/aho;->c([B)Lo/ahp;

    move-result-object v1

    .line 139
    invoke-virtual {v0, v3, v1}, Lo/ahm;->a(ILjava/lang/Object;)Lo/ahm;

    goto :goto_0

    .line 141
    :cond_1
    new-instance p0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Class "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not MSL encoding-compatible."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 134
    :cond_2
    :goto_1
    invoke-virtual {v0, v3, v1}, Lo/ahm;->a(ILjava/lang/Object;)Lo/ahm;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static e(Lo/ahm;)I
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 318
    :goto_0
    invoke-virtual {p0}, Lo/ahm;->c()I

    move-result v2

    if-ge v0, v2, :cond_5

    const/4 v2, 0x0

    .line 321
    invoke-virtual {p0, v0, v2}, Lo/ahm;->d(I[B)[B

    move-result-object v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x25

    .line 323
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    goto :goto_2

    .line 328
    :cond_1
    invoke-virtual {p0, v0}, Lo/ahm;->c(I)Ljava/lang/Object;

    move-result-object v2

    .line 329
    instance-of v3, v2, Lo/ahp;

    if-eqz v3, :cond_2

    mul-int/lit8 v1, v1, 0x25

    .line 330
    check-cast v2, Lo/ahp;

    invoke-static {v2}, Lo/ahq;->d(Lo/ahp;)I

    move-result v2

    goto :goto_1

    .line 331
    :cond_2
    instance-of v3, v2, Lo/ahm;

    if-eqz v3, :cond_3

    mul-int/lit8 v1, v1, 0x25

    .line 332
    check-cast v2, Lo/ahm;

    invoke-static {v2}, Lo/ahq;->e(Lo/ahm;)I

    move-result v2

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    mul-int/lit8 v1, v1, 0x25

    .line 334
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_4
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method public static e(Lo/ahm;Lo/ahm;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    .line 271
    invoke-virtual {p0}, Lo/ahm;->c()I

    move-result v2

    invoke-virtual {p1}, Lo/ahm;->c()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v2, 0x0

    .line 275
    :goto_0
    invoke-virtual {p0}, Lo/ahm;->c()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 276
    invoke-virtual {p0, v2}, Lo/ahm;->c(I)Ljava/lang/Object;

    move-result-object v3

    .line 277
    invoke-virtual {p1, v2}, Lo/ahm;->c(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_a

    if-nez v4, :cond_3

    goto :goto_3

    .line 285
    :cond_3
    instance-of v5, v3, [B

    if-nez v5, :cond_8

    instance-of v5, v4, [B

    if-eqz v5, :cond_4

    goto :goto_1

    .line 290
    :cond_4
    instance-of v5, v3, Lo/ahp;

    if-eqz v5, :cond_5

    instance-of v5, v4, Lo/ahp;

    if-eqz v5, :cond_5

    .line 291
    check-cast v3, Lo/ahp;

    check-cast v4, Lo/ahp;

    invoke-static {v3, v4}, Lo/ahq;->c(Lo/ahp;Lo/ahp;)Z

    move-result v3

    if-nez v3, :cond_9

    return v1

    .line 293
    :cond_5
    instance-of v5, v3, Lo/ahm;

    if-eqz v5, :cond_6

    instance-of v5, v4, Lo/ahm;

    if-eqz v5, :cond_6

    .line 294
    check-cast v3, Lo/ahm;

    check-cast v4, Lo/ahm;

    invoke-static {v3, v4}, Lo/ahq;->e(Lo/ahm;Lo/ahm;)Z

    move-result v3

    if-nez v3, :cond_9

    return v1

    .line 297
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v5, v6, :cond_7

    return v1

    .line 299
    :cond_7
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v1

    .line 286
    :cond_8
    :goto_1
    invoke-virtual {p0, v2}, Lo/ahm;->b(I)[B

    move-result-object v3

    .line 287
    invoke-virtual {p1, v2}, Lo/ahm;->b(I)[B

    move-result-object v4

    .line 288
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_9

    return v1

    :cond_9
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_a
    :goto_3
    return v1

    :cond_b
    return v0

    :cond_c
    :goto_4
    return v1
.end method
