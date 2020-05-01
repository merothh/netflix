.class public Lorg/xbill/DNS/URIRecord;
.super Lorg/xbill/DNS/Record;
.source "URIRecord.java"


# static fields
.field private static final serialVersionUID:J = 0x6e6756892ef85048L


# instance fields
.field private priority:I

.field private target:[B

.field private weight:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/xbill/DNS/URIRecord;->target:[B

    .line 24
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIILjava/lang/String;)V
    .locals 7

    .prologue
    .line 43
    const/16 v2, 0x100

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 44
    const-string/jumbo v0, "priority"

    invoke-static {v0, p5}, Lorg/xbill/DNS/URIRecord;->checkU16(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/URIRecord;->priority:I

    .line 45
    const-string/jumbo v0, "weight"

    invoke-static {v0, p6}, Lorg/xbill/DNS/URIRecord;->checkU16(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/URIRecord;->weight:I

    .line 47
    :try_start_0
    invoke-static {p7}, Lorg/xbill/DNS/URIRecord;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/URIRecord;->target:[B
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lorg/xbill/DNS/URIRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/URIRecord;-><init>()V

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lorg/xbill/DNS/URIRecord;->priority:I

    return v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lorg/xbill/DNS/URIRecord;->target:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/xbill/DNS/URIRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lorg/xbill/DNS/URIRecord;->weight:I

    return v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/URIRecord;->priority:I

    .line 64
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/URIRecord;->weight:I

    .line 66
    :try_start_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/URIRecord;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/URIRecord;->target:[B
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/URIRecord;->priority:I

    .line 57
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/URIRecord;->weight:I

    .line 58
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readCountedString()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/URIRecord;->target:[B

    .line 59
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/xbill/DNS/URIRecord;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/xbill/DNS/URIRecord;->weight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    iget-object v1, p0, Lorg/xbill/DNS/URIRecord;->target:[B

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/xbill/DNS/URIRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lorg/xbill/DNS/URIRecord;->priority:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 104
    iget v0, p0, Lorg/xbill/DNS/URIRecord;->weight:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 105
    iget-object v0, p0, Lorg/xbill/DNS/URIRecord;->target:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeCountedString([B)V

    .line 106
    return-void
.end method
