.class public Lorg/xbill/DNS/NSEC3PARAMRecord;
.super Lorg/xbill/DNS/Record;
.source "NSEC3PARAMRecord.java"


# static fields
.field private static final serialVersionUID:J = -0x7895aa91afb86275L


# instance fields
.field private flags:I

.field private hashAlg:I

.field private iterations:I

.field private salt:[B


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIII[B)V
    .locals 7

    const/4 v6, 0x0

    const/16 v2, 0x33

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    const-string/jumbo v0, "hashAlg"

    invoke-static {v0, p5}, Lorg/xbill/DNS/NSEC3PARAMRecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->hashAlg:I

    const-string/jumbo v0, "flags"

    invoke-static {v0, p6}, Lorg/xbill/DNS/NSEC3PARAMRecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->flags:I

    const-string/jumbo v0, "iterations"

    invoke-static {v0, p7}, Lorg/xbill/DNS/NSEC3PARAMRecord;->checkU16(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->iterations:I

    if-eqz p8, :cond_1

    array-length v0, p8

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid salt length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p8

    if-lez v0, :cond_1

    array-length v0, p8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    iget-object v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    array-length v1, p8

    invoke-static {p8, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->flags:I

    return v0
.end method

.method public getHashAlgorithm()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->hashAlg:I

    return v0
.end method

.method public getIterations()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->iterations:I

    return v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    new-instance v0, Lorg/xbill/DNS/NSEC3PARAMRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/NSEC3PARAMRecord;-><init>()V

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    return-object v0
.end method

.method public hashName(Lorg/xbill/DNS/Name;)[B
    .locals 3

    iget v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->hashAlg:I

    iget v1, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->iterations:I

    iget-object v2, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    invoke-static {p1, v0, v1, v2}, Lorg/xbill/DNS/NSEC3Record;->hashName(Lorg/xbill/DNS/Name;II[B)[B

    move-result-object v0

    return-object v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 2

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->hashAlg:I

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->flags:I

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->iterations:I

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getHexString()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    iget-object v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    array-length v0, v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    const-string/jumbo v0, "salt value too long"

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 1

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->hashAlg:I

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->flags:I

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->iterations:I

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    goto :goto_0
.end method

.method rrToString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->hashAlg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->iterations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    if-nez v1, :cond_0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->hashAlg:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    iget v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->flags:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    iget v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->iterations:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    iget-object v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    iget-object v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    goto :goto_0
.end method
