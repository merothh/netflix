.class final Lcom/ibm/icu/impl/UCharacterNameReader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ibm/icu/impl/ICUBinary$Authenticate;


# instance fields
.field private m_algnamesindex_:I

.field private m_byteBuffer_:Ljava/nio/ByteBuffer;

.field private m_groupindex_:I

.field private m_groupstringindex_:I

.field private m_tokenstringindex_:I


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x756e616d

    .line 48
    invoke-static {p1, v0, p0}, Lcom/ibm/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILcom/ibm/icu/impl/ICUBinary$Authenticate;)I

    .line 49
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private readAlg()Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;
    .locals 6

    .line 161
    new-instance v0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;

    invoke-direct {v0}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;-><init>()V

    .line 163
    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 164
    iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 165
    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 166
    iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 167
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->setInfo(IIBB)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v1

    const/4 v2, 0x1

    if-ne v3, v2, :cond_1

    .line 174
    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/ibm/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v3

    .line 176
    invoke-virtual {v0, v3}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->setFactor([C)Z

    shl-int/lit8 v3, v4, 0x1

    sub-int/2addr v1, v3

    .line 180
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    :goto_0
    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    if-eqz v4, :cond_2

    .line 184
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->setPrefix(Ljava/lang/String;)Z

    .line 190
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    add-int/2addr v3, v2

    sub-int/2addr v1, v3

    if-lez v1, :cond_3

    .line 194
    new-array v1, v1, [B

    .line 195
    iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 196
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->setFactorString([B)Z

    :cond_3
    return-object v0
.end method


# virtual methods
.method public isDataVersionAcceptable([B)Z
    .locals 2

    const/4 v0, 0x0

    .line 36
    aget-byte p1, p1, v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected read(Lcom/ibm/icu/impl/UCharacterName;)V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_tokenstringindex_:I

    .line 65
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_groupindex_:I

    .line 66
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_groupstringindex_:I

    .line 67
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_algnamesindex_:I

    .line 70
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/ibm/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v0

    .line 72
    iget v1, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_groupindex_:I

    iget v3, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_tokenstringindex_:I

    sub-int/2addr v1, v3

    .line 73
    new-array v1, v1, [B

    .line 74
    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 75
    invoke-virtual {p1, v0, v1}, Lcom/ibm/icu/impl/UCharacterName;->setToken([C[B)Z

    .line 78
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v0

    const/4 v1, 0x3

    .line 79
    invoke-virtual {p1, v0, v1}, Lcom/ibm/icu/impl/UCharacterName;->setGroupCountSize(II)Z

    mul-int/lit8 v0, v0, 0x3

    .line 81
    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0, v2}, Lcom/ibm/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v0

    .line 83
    iget v1, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_algnamesindex_:I

    iget v3, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_groupstringindex_:I

    sub-int/2addr v1, v3

    .line 84
    new-array v1, v1, [B

    .line 85
    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 87
    invoke-virtual {p1, v0, v1}, Lcom/ibm/icu/impl/UCharacterName;->setGroup([C[B)Z

    .line 89
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 90
    new-array v1, v0, [Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;

    :goto_0
    if-ge v2, v0, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/ibm/icu/impl/UCharacterNameReader;->readAlg()Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 99
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "unames.icu read error: Algorithmic names creation error"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_1
    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/UCharacterName;->setAlgorithm([Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;)Z

    return-void
.end method
