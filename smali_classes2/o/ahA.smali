.class public abstract Lo/ahA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ahr;


# instance fields
.field private final c:Lo/ahx;

.field private final e:Lo/ahS;


# direct methods
.method protected constructor <init>(Lo/ahS;Lo/ahx;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lo/ahA;->e:Lo/ahS;

    .line 71
    iput-object p2, p0, Lo/ahA;->c:Lo/ahx;

    return-void
.end method

.method public static b(Lcom/netflix/msl/util/MslContext;Lo/ahp;)Lo/ahA;
    .locals 4

    .line 90
    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->h()Lo/aho;

    move-result-object v0

    .line 94
    :try_start_0
    new-instance v1, Lo/ahS;

    const-string v2, "mastertoken"

    invoke-virtual {p1, v2, v0}, Lo/ahp;->d(Ljava/lang/String;Lo/aho;)Lo/ahp;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lo/ahS;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahp;)V

    const-string v2, "scheme"

    .line 95
    invoke-virtual {p1, v2}, Lo/ahp;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-virtual {p0, v2}, Lcom/netflix/msl/util/MslContext;->a(Ljava/lang/String;)Lo/ahx;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v2, "keydata"

    .line 99
    invoke-virtual {p1, v2, v0}, Lo/ahp;->d(Ljava/lang/String;Lo/aho;)Lo/ahp;

    move-result-object v0

    .line 102
    invoke-virtual {p0, v3}, Lcom/netflix/msl/util/MslContext;->e(Lo/ahx;)Lo/ahB;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 105
    invoke-virtual {v2, p0, v1, v0}, Lo/ahB;->e(Lcom/netflix/msl/util/MslContext;Lo/ahS;Lo/ahp;)Lo/ahA;

    move-result-object p0

    return-object p0

    .line 104
    :cond_0
    new-instance p0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v0, Lo/agz;->cP:Lo/agz;

    invoke-virtual {v3}, Lo/ahx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_1
    new-instance p0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v0, Lo/agz;->cO:Lo/agz;

    invoke-direct {p0, v0, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 107
    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lo/agz;->e:Lo/agz;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyresponsedata "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a(Lo/aho;Lo/ahn;)[B
    .locals 3

    .line 144
    invoke-virtual {p1}, Lo/aho;->b()Lo/ahp;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lo/ahA;->e:Lo/ahS;

    const-string v2, "mastertoken"

    invoke-virtual {v0, v2, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 146
    iget-object v1, p0, Lo/ahA;->c:Lo/ahx;

    invoke-virtual {v1}, Lo/ahx;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scheme"

    invoke-virtual {v0, v2, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 147
    invoke-virtual {p0, p1, p2}, Lo/ahA;->d(Lo/aho;Lo/ahn;)Lo/ahp;

    move-result-object v1

    const-string v2, "keydata"

    invoke-virtual {v0, v2, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 148
    invoke-virtual {p1, v0, p2}, Lo/aho;->c(Lo/ahp;Lo/ahn;)[B

    move-result-object p1

    return-object p1
.end method

.method public d()Lo/ahS;
    .locals 1

    .line 115
    iget-object v0, p0, Lo/ahA;->e:Lo/ahS;

    return-object v0
.end method

.method protected abstract d(Lo/aho;Lo/ahn;)Lo/ahp;
.end method

.method public e()Lo/ahx;
    .locals 1

    .line 122
    iget-object v0, p0, Lo/ahA;->c:Lo/ahx;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 157
    :cond_0
    instance-of v1, p1, Lo/ahA;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 158
    :cond_1
    check-cast p1, Lo/ahA;

    .line 159
    iget-object v1, p0, Lo/ahA;->e:Lo/ahS;

    iget-object v3, p1, Lo/ahA;->e:Lo/ahS;

    invoke-virtual {v1, v3}, Lo/ahS;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/ahA;->c:Lo/ahx;

    iget-object p1, p1, Lo/ahA;->c:Lo/ahx;

    invoke-virtual {v1, p1}, Lo/ahx;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 167
    iget-object v0, p0, Lo/ahA;->e:Lo/ahS;

    invoke-virtual {v0}, Lo/ahS;->hashCode()I

    move-result v0

    iget-object v1, p0, Lo/ahA;->c:Lo/ahx;

    invoke-virtual {v1}, Lo/ahx;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
