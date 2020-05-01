.class abstract Lorg/xbill/DNS/KEYBase;
.super Lorg/xbill/DNS/Record;
.source "KEYBase.java"


# static fields
.field private static final serialVersionUID:J = 0x302581b9bcadf64eL


# instance fields
.field protected alg:I

.field protected flags:I

.field protected footprint:I

.field protected key:[B

.field protected proto:I

.field protected publicKey:Ljava/security/PublicKey;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->footprint:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/KEYBase;->publicKey:Ljava/security/PublicKey;

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IIJIII[B)V
    .locals 2

    .prologue
    .line 32
    invoke-direct/range {p0 .. p5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->footprint:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/KEYBase;->publicKey:Ljava/security/PublicKey;

    .line 33
    const-string/jumbo v0, "flags"

    invoke-static {v0, p6}, Lorg/xbill/DNS/KEYBase;->checkU16(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->flags:I

    .line 34
    const-string/jumbo v0, "proto"

    invoke-static {v0, p7}, Lorg/xbill/DNS/KEYBase;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->proto:I

    .line 35
    const-string/jumbo v0, "alg"

    invoke-static {v0, p8}, Lorg/xbill/DNS/KEYBase;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    .line 36
    iput-object p9, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    .line 37
    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->flags:I

    return v0
.end method

.method public getFootprint()I
    .locals 6

    .prologue
    const v5, 0xffff

    const/4 v0, 0x0

    .line 108
    iget v1, p0, Lorg/xbill/DNS/KEYBase;->footprint:I

    if-ltz v1, :cond_0

    .line 109
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->footprint:I

    .line 136
    :goto_0
    return v0

    .line 113
    :cond_0
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 114
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/xbill/DNS/KEYBase;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 115
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v2

    .line 117
    iget v1, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 118
    array-length v0, v2

    add-int/lit8 v0, v0, -0x3

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    .line 119
    array-length v1, v2

    add-int/lit8 v1, v1, -0x2

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    .line 120
    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    .line 135
    :goto_1
    and-int/2addr v0, v5

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->footprint:I

    .line 136
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->footprint:I

    goto :goto_0

    :cond_1
    move v1, v0

    .line 124
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    .line 125
    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    .line 126
    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    .line 127
    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 124
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 129
    :cond_2
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 130
    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    .line 131
    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v1, v0

    .line 133
    :cond_3
    shr-int/lit8 v0, v1, 0x10

    and-int/2addr v0, v5

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public getKey()[B
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    return-object v0
.end method

.method public getProtocol()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->proto:I

    return v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/xbill/DNS/KEYBase;->publicKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lorg/xbill/DNS/KEYBase;->publicKey:Ljava/security/PublicKey;

    .line 149
    :goto_0
    return-object v0

    .line 148
    :cond_0
    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->toPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/KEYBase;->publicKey:Ljava/security/PublicKey;

    .line 149
    iget-object v0, p0, Lorg/xbill/DNS/KEYBase;->publicKey:Ljava/security/PublicKey;

    goto :goto_0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->flags:I

    .line 42
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->proto:I

    .line 43
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    .line 44
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 45
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    .line 46
    :cond_0
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 52
    iget v1, p0, Lorg/xbill/DNS/KEYBase;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 53
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    iget v1, p0, Lorg/xbill/DNS/KEYBase;->proto:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 55
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    iget v1, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 57
    iget-object v1, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    if-eqz v1, :cond_0

    .line 58
    const-string/jumbo v1, "multiline"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    const-string/jumbo v1, " (\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    iget-object v1, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    const/16 v2, 0x40

    const-string/jumbo v3, "\t"

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string/jumbo v1, " ; key_tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getFootprint()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 68
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 64
    :cond_1
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    iget-object v1, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->flags:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 155
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->proto:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 156
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 157
    iget-object v0, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 159
    :cond_0
    return-void
.end method
