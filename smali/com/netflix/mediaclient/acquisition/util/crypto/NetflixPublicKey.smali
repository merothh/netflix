.class public final Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final aid:I

.field private final exponent:Ljava/lang/String;

.field private final kid:J

.field private final modulus:Ljava/lang/String;


# direct methods
.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "modulus"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exponent"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->kid:J

    iput p3, p0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->aid:I

    iput-object p4, p0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->modulus:Ljava/lang/String;

    iput-object p5, p0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->exponent:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;JILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-wide p1, p0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->kid:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget p3, p0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->aid:I

    :cond_1
    move v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget-object p4, p0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->modulus:Ljava/lang/String;

    :cond_2
    move-object v4, p4

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    iget-object p5, p0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->exponent:Ljava/lang/String;

    :cond_3
    move-object v5, p5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->copy(JILjava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->kid:J

    return-wide v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->aid:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->modulus:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->exponent:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JILjava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;
    .locals 7

    const-string v0, "modulus"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exponent"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;

    move-object v1, v0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;-><init>(JILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;

    iget-wide v0, p0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->kid:J

    iget-wide v2, p1, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->kid:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->aid:I

    iget v1, p1, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->aid:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->modulus:Ljava/lang/String;

    iget-object v1, p1, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->modulus:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->exponent:Ljava/lang/String;

    iget-object p1, p1, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->exponent:Ljava/lang/String;

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAid()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->aid:I

    return v0
.end method

.method public final getExponent()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->exponent:Ljava/lang/String;

    return-object v0
.end method

.method public final getKid()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->kid:J

    return-wide v0
.end method

.method public final getModulus()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->modulus:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->kid:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->aid:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->modulus:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->exponent:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetflixPublicKey(kid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->kid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", aid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->aid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", modulus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->modulus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", exponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;->exponent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
