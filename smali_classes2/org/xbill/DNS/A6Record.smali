.class public Lorg/xbill/DNS/A6Record;
.super Lorg/xbill/DNS/Record;
.source "A6Record.java"


# static fields
.field private static final serialVersionUID:J = -0x7a554440014286e5L


# instance fields
.field private prefix:Lorg/xbill/DNS/Name;

.field private prefixBits:I

.field private suffix:Ljava/net/InetAddress;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJILjava/net/InetAddress;Lorg/xbill/DNS/Name;)V
    .locals 7

    const/16 v2, 0x26

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    const-string/jumbo v0, "prefixBits"

    invoke-static {v0, p5}, Lorg/xbill/DNS/A6Record;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    if-eqz p6, :cond_0

    invoke-static {p6}, Lorg/xbill/DNS/Address;->familyOf(Ljava/net/InetAddress;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid IPv6 address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p6, p0, Lorg/xbill/DNS/A6Record;->suffix:Ljava/net/InetAddress;

    if-eqz p7, :cond_1

    const-string/jumbo v0, "prefix"

    invoke-static {v0, p7}, Lorg/xbill/DNS/A6Record;->checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/A6Record;->prefix:Lorg/xbill/DNS/Name;

    :cond_1
    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    new-instance v0, Lorg/xbill/DNS/A6Record;

    invoke-direct {v0}, Lorg/xbill/DNS/A6Record;-><init>()V

    return-object v0
.end method

.method public getPrefix()Lorg/xbill/DNS/Name;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/A6Record;->prefix:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public getPrefixBits()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    return v0
.end method

.method public getSuffix()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/A6Record;->suffix:Ljava/net/InetAddress;

    return-object v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 3

    const/16 v1, 0x80

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    iget v0, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    if-le v0, v1, :cond_0

    const-string/jumbo v0, "prefix bits must be [0..128]"

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    :try_start_0
    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->getByAddress(Ljava/lang/String;I)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/A6Record;->suffix:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget v0, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    if-lez v0, :cond_2

    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/A6Record;->prefix:Lorg/xbill/DNS/Name;

    :cond_2
    return-void

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid IPv6 address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 3

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    iget v0, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    rsub-int v0, v0, 0x80

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    const/16 v2, 0x80

    if-ge v1, v2, :cond_0

    const/16 v1, 0x10

    new-array v1, v1, [B

    rsub-int/lit8 v2, v0, 0x10

    invoke-virtual {p1, v1, v2, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray([BII)V

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/A6Record;->suffix:Ljava/net/InetAddress;

    :cond_0
    iget v0, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    if-lez v0, :cond_1

    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v0, p0, Lorg/xbill/DNS/A6Record;->prefix:Lorg/xbill/DNS/Name;

    :cond_1
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/xbill/DNS/A6Record;->suffix:Ljava/net/InetAddress;

    if-eqz v1, :cond_0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/xbill/DNS/A6Record;->suffix:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/A6Record;->prefix:Lorg/xbill/DNS/Name;

    if-eqz v1, :cond_1

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/xbill/DNS/A6Record;->prefix:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 3

    iget v0, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    iget-object v0, p0, Lorg/xbill/DNS/A6Record;->suffix:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    rsub-int v0, v0, 0x80

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/xbill/DNS/A6Record;->suffix:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    rsub-int/lit8 v2, v0, 0x10

    invoke-virtual {p1, v1, v2, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/A6Record;->prefix:Lorg/xbill/DNS/Name;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/xbill/DNS/A6Record;->prefix:Lorg/xbill/DNS/Name;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    :cond_1
    return-void
.end method
