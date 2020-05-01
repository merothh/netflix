.class public Lo/ahC;
.super Lo/ahA;
.source ""


# instance fields
.field private final b:[B

.field private final c:[B

.field private final d:[B


# direct methods
.method public constructor <init>(Lo/ahS;Lo/ahp;)V
    .locals 4

    .line 68
    sget-object v0, Lo/ahy;->i:Lo/ahx;

    invoke-direct {p0, p1, v0}, Lo/ahA;-><init>(Lo/ahS;Lo/ahx;)V

    :try_start_0
    const-string p1, "cdmkeyresponse"

    .line 71
    invoke-virtual {p2, p1}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lo/ahC;->c:[B

    const-string p1, "encryptionkeyid"

    .line 72
    invoke-virtual {p2, p1}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lo/ahC;->d:[B

    const-string p1, "hmackeyid"

    .line 73
    invoke-virtual {p2, p1}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lo/ahC;->b:[B
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 75
    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lo/agz;->e:Lo/agz;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keydata "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2, p1}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a()[B
    .locals 1

    .line 109
    iget-object v0, p0, Lo/ahC;->b:[B

    return-object v0
.end method

.method public b()[B
    .locals 1

    .line 102
    iget-object v0, p0, Lo/ahC;->d:[B

    return-object v0
.end method

.method public c()[B
    .locals 1

    .line 95
    iget-object v0, p0, Lo/ahC;->c:[B

    return-object v0
.end method

.method protected d(Lo/aho;Lo/ahn;)Lo/ahp;
    .locals 1

    .line 84
    invoke-virtual {p1}, Lo/aho;->b()Lo/ahp;

    move-result-object p1

    .line 85
    iget-object p2, p0, Lo/ahC;->d:[B

    const-string v0, "encryptionkeyid"

    invoke-virtual {p1, v0, p2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 86
    iget-object p2, p0, Lo/ahC;->b:[B

    const-string v0, "hmackeyid"

    invoke-virtual {p1, v0, p2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 87
    iget-object p2, p0, Lo/ahC;->c:[B

    const-string v0, "cdmkeyresponse"

    invoke-virtual {p1, v0, p2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 120
    :cond_0
    instance-of v1, p1, Lo/ahC;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 123
    :cond_1
    move-object v1, p1

    check-cast v1, Lo/ahC;

    .line 125
    invoke-super {p0, p1}, Lo/ahA;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/ahC;->c:[B

    iget-object v3, v1, Lo/ahC;->c:[B

    .line 126
    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/ahC;->d:[B

    iget-object v3, v1, Lo/ahC;->d:[B

    .line 127
    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/ahC;->b:[B

    iget-object v1, v1, Lo/ahC;->b:[B

    .line 128
    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

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

    .line 136
    invoke-super {p0}, Lo/ahA;->hashCode()I

    move-result v0

    iget-object v1, p0, Lo/ahC;->c:[B

    .line 137
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lo/ahC;->d:[B

    .line 138
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lo/ahC;->b:[B

    .line 139
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
