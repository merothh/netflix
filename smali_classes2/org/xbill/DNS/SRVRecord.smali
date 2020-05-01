.class public Lorg/xbill/DNS/SRVRecord;
.super Lorg/xbill/DNS/Record;
.source "SRVRecord.java"


# static fields
.field private static final serialVersionUID:J = -0x35ef7ae628ad0604L


# instance fields
.field private port:I

.field private priority:I

.field private target:Lorg/xbill/DNS/Name;

.field private weight:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIIILorg/xbill/DNS/Name;)V
    .locals 7

    const/16 v2, 0x21

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    const-string/jumbo v0, "priority"

    invoke-static {v0, p5}, Lorg/xbill/DNS/SRVRecord;->checkU16(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SRVRecord;->priority:I

    const-string/jumbo v0, "weight"

    invoke-static {v0, p6}, Lorg/xbill/DNS/SRVRecord;->checkU16(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SRVRecord;->weight:I

    const-string/jumbo v0, "port"

    invoke-static {v0, p7}, Lorg/xbill/DNS/SRVRecord;->checkU16(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SRVRecord;->port:I

    const-string/jumbo v0, "target"

    invoke-static {v0, p8}, Lorg/xbill/DNS/SRVRecord;->checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SRVRecord;->target:Lorg/xbill/DNS/Name;

    return-void
.end method


# virtual methods
.method public getAdditionalName()Lorg/xbill/DNS/Name;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/SRVRecord;->target:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    new-instance v0, Lorg/xbill/DNS/SRVRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/SRVRecord;-><init>()V

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/SRVRecord;->port:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/SRVRecord;->priority:I

    return v0
.end method

.method public getTarget()Lorg/xbill/DNS/Name;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/SRVRecord;->target:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/SRVRecord;->weight:I

    return v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 1

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SRVRecord;->priority:I

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SRVRecord;->weight:I

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SRVRecord;->port:I

    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SRVRecord;->target:Lorg/xbill/DNS/Name;

    return-void
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 1

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SRVRecord;->priority:I

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SRVRecord;->weight:I

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SRVRecord;->port:I

    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v0, p0, Lorg/xbill/DNS/SRVRecord;->target:Lorg/xbill/DNS/Name;

    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/xbill/DNS/SRVRecord;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/xbill/DNS/SRVRecord;->weight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/xbill/DNS/SRVRecord;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/xbill/DNS/SRVRecord;->target:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 2

    iget v0, p0, Lorg/xbill/DNS/SRVRecord;->priority:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    iget v0, p0, Lorg/xbill/DNS/SRVRecord;->weight:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    iget v0, p0, Lorg/xbill/DNS/SRVRecord;->port:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    iget-object v0, p0, Lorg/xbill/DNS/SRVRecord;->target:Lorg/xbill/DNS/Name;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    return-void
.end method
