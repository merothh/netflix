.class public Lo/ahD;
.super Lo/ahz;
.source ""


# instance fields
.field private final d:[B


# direct methods
.method public constructor <init>(Lo/ahp;)V
    .locals 5

    .line 50
    sget-object v0, Lo/ahy;->i:Lo/ahx;

    invoke-direct {p0, v0}, Lo/ahz;-><init>(Lo/ahx;)V

    :try_start_0
    const-string v0, "keyrequest"

    .line 53
    invoke-virtual {p1, v0}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lo/ahD;->d:[B
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 55
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lo/agz;->e:Lo/agz;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keydata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 35
    sget-object v0, Lo/ahy;->i:Lo/ahx;

    invoke-direct {p0, v0}, Lo/ahz;-><init>(Lo/ahx;)V

    if-eqz p1, :cond_0

    .line 36
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 39
    iput-object p1, p0, Lo/ahD;->d:[B

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Key request data must be defined and non-empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()[B
    .locals 1

    .line 63
    iget-object v0, p0, Lo/ahD;->d:[B

    return-object v0
.end method

.method protected e(Lo/aho;Lo/ahn;)Lo/ahp;
    .locals 1

    .line 71
    invoke-virtual {p1}, Lo/aho;->b()Lo/ahp;

    move-result-object p1

    .line 72
    iget-object p2, p0, Lo/ahD;->d:[B

    const-string v0, "keyrequest"

    invoke-virtual {p1, v0, p2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 84
    :cond_0
    instance-of v1, p1, Lo/ahD;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 88
    :cond_1
    move-object v1, p1

    check-cast v1, Lo/ahD;

    .line 89
    invoke-super {p0, p1}, Lo/ahz;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/ahD;->d:[B

    iget-object v1, v1, Lo/ahD;->d:[B

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

    .line 97
    invoke-super {p0}, Lo/ahz;->hashCode()I

    move-result v0

    iget-object v1, p0, Lo/ahD;->d:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
