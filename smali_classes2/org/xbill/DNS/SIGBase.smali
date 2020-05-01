.class abstract Lorg/xbill/DNS/SIGBase;
.super Lorg/xbill/DNS/Record;
.source "SIGBase.java"


# static fields
.field private static final serialVersionUID:J = -0x33e19f5df1ec9a91L


# instance fields
.field protected alg:I

.field protected covered:I

.field protected expire:Ljava/util/Date;

.field protected footprint:I

.field protected labels:I

.field protected origttl:J

.field protected signature:[B

.field protected signer:Lorg/xbill/DNS/Name;

.field protected timeSigned:Ljava/util/Date;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IIJIIJLjava/util/Date;Ljava/util/Date;ILorg/xbill/DNS/Name;[B)V
    .locals 4

    invoke-direct/range {p0 .. p5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    invoke-static {p6}, Lorg/xbill/DNS/Type;->check(I)V

    invoke-static {p8, p9}, Lorg/xbill/DNS/TTL;->check(J)V

    iput p6, p0, Lorg/xbill/DNS/SIGBase;->covered:I

    const-string/jumbo v1, "alg"

    invoke-static {v1, p7}, Lorg/xbill/DNS/SIGBase;->checkU8(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/SIGBase;->alg:I

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/xbill/DNS/SIGBase;->labels:I

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/xbill/DNS/SIGBase;->labels:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/xbill/DNS/SIGBase;->labels:I

    :cond_0
    iput-wide p8, p0, Lorg/xbill/DNS/SIGBase;->origttl:J

    iput-object p10, p0, Lorg/xbill/DNS/SIGBase;->expire:Ljava/util/Date;

    iput-object p11, p0, Lorg/xbill/DNS/SIGBase;->timeSigned:Ljava/util/Date;

    const-string/jumbo v1, "footprint"

    move/from16 v0, p12

    invoke-static {v1, v0}, Lorg/xbill/DNS/SIGBase;->checkU16(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/SIGBase;->footprint:I

    const-string/jumbo v1, "signer"

    move-object/from16 v0, p13

    invoke-static {v1, v0}, Lorg/xbill/DNS/SIGBase;->checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/SIGBase;->signer:Lorg/xbill/DNS/Name;

    move-object/from16 v0, p14

    iput-object v0, p0, Lorg/xbill/DNS/SIGBase;->signature:[B

    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/SIGBase;->alg:I

    return v0
.end method

.method public getExpire()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/SIGBase;->expire:Ljava/util/Date;

    return-object v0
.end method

.method public getFootprint()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/SIGBase;->footprint:I

    return v0
.end method

.method public getLabels()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/SIGBase;->labels:I

    return v0
.end method

.method public getOrigTTL()J
    .locals 2

    iget-wide v0, p0, Lorg/xbill/DNS/SIGBase;->origttl:J

    return-wide v0
.end method

.method public getSignature()[B
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/SIGBase;->signature:[B

    return-object v0
.end method

.method public getSigner()Lorg/xbill/DNS/Name;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/SIGBase;->signer:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public getTimeSigned()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/SIGBase;->timeSigned:Ljava/util/Date;

    return-object v0
.end method

.method public getTypeCovered()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/SIGBase;->covered:I

    return v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 3

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/SIGBase;->covered:I

    iget v1, p0, Lorg/xbill/DNS/SIGBase;->covered:I

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/DNSSEC$Algorithm;->value(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/SIGBase;->alg:I

    iget v1, p0, Lorg/xbill/DNS/SIGBase;->alg:I

    if-gez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SIGBase;->labels:I

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getTTL()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SIGBase;->origttl:J

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/FormattedTime;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SIGBase;->expire:Ljava/util/Date;

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/FormattedTime;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SIGBase;->timeSigned:Ljava/util/Date;

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SIGBase;->footprint:I

    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SIGBase;->signer:Lorg/xbill/DNS/Name;

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getBase64()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SIGBase;->signature:[B

    return-void
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 6

    const-wide/16 v4, 0x3e8

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SIGBase;->covered:I

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SIGBase;->alg:I

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SIGBase;->labels:I

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SIGBase;->origttl:J

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/xbill/DNS/SIGBase;->expire:Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/xbill/DNS/SIGBase;->timeSigned:Ljava/util/Date;

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SIGBase;->footprint:I

    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v0, p0, Lorg/xbill/DNS/SIGBase;->signer:Lorg/xbill/DNS/Name;

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SIGBase;->signature:[B

    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lorg/xbill/DNS/SIGBase;->covered:I

    invoke-static {v1}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/xbill/DNS/SIGBase;->alg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/xbill/DNS/SIGBase;->labels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lorg/xbill/DNS/SIGBase;->origttl:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "multiline"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "(\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/SIGBase;->expire:Ljava/util/Date;

    invoke-static {v1}, Lorg/xbill/DNS/FormattedTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/xbill/DNS/SIGBase;->timeSigned:Ljava/util/Date;

    invoke-static {v1}, Lorg/xbill/DNS/FormattedTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/xbill/DNS/SIGBase;->footprint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/xbill/DNS/SIGBase;->signer:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "multiline"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/xbill/DNS/SIGBase;->signature:[B

    const/16 v2, 0x40

    const-string/jumbo v3, "\t"

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/xbill/DNS/SIGBase;->signature:[B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 4

    const-wide/16 v2, 0x3e8

    iget v0, p0, Lorg/xbill/DNS/SIGBase;->covered:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    iget v0, p0, Lorg/xbill/DNS/SIGBase;->alg:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    iget v0, p0, Lorg/xbill/DNS/SIGBase;->labels:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    iget-wide v0, p0, Lorg/xbill/DNS/SIGBase;->origttl:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    iget-object v0, p0, Lorg/xbill/DNS/SIGBase;->expire:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    iget-object v0, p0, Lorg/xbill/DNS/SIGBase;->timeSigned:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    iget v0, p0, Lorg/xbill/DNS/SIGBase;->footprint:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    iget-object v0, p0, Lorg/xbill/DNS/SIGBase;->signer:Lorg/xbill/DNS/Name;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    iget-object v0, p0, Lorg/xbill/DNS/SIGBase;->signature:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    return-void
.end method

.method setSignature([B)V
    .locals 0

    iput-object p1, p0, Lorg/xbill/DNS/SIGBase;->signature:[B

    return-void
.end method
