.class public Lorg/xbill/DNS/WKSRecord;
.super Lorg/xbill/DNS/Record;
.source "WKSRecord.java"


# static fields
.field private static final serialVersionUID:J = -0x7e58d404d2af4f3dL


# instance fields
.field private address:[B

.field private protocol:I

.field private services:[I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJLjava/net/InetAddress;I[I)V
    .locals 7

    const/4 v6, 0x0

    const/16 v2, 0xb

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    invoke-static {p5}, Lorg/xbill/DNS/Address;->familyOf(Ljava/net/InetAddress;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid IPv4 address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    const-string/jumbo v0, "protocol"

    invoke-static {v0, p6}, Lorg/xbill/DNS/WKSRecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    move v0, v6

    :goto_0
    array-length v1, p7

    if-ge v0, v1, :cond_1

    const-string/jumbo v1, "service"

    aget v2, p7, v0

    invoke-static {v1, v2}, Lorg/xbill/DNS/WKSRecord;->checkU16(Ljava/lang/String;I)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p7

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    iget-object v0, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    array-length v1, p7

    invoke-static {p7, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/net/InetAddress;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    new-instance v0, Lorg/xbill/DNS/WKSRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/WKSRecord;-><init>()V

    return-object v0
.end method

.method public getProtocol()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    return v0
.end method

.method public getServices()[I
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    return-object v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 4

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    iget-object v0, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    if-nez v0, :cond_0

    const-string/jumbo v0, "invalid address"

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/WKSRecord$Protocol;->value(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    iget v1, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    if-gez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid IP protocol: "

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
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v3, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v1}, Lorg/xbill/DNS/WKSRecord$Service;->value(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid TCP/UDP service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_2

    move v2, v1

    :goto_1
    const/16 v5, 0x8

    if-ge v2, v5, :cond_1

    aget-byte v5, v3, v0

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x1

    rsub-int/lit8 v7, v2, 0x7

    shl-int/2addr v6, v7

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/Integer;

    mul-int/lit8 v6, v0, 0x8

    add-int/2addr v6, v2

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    invoke-static {v0}, Lorg/xbill/DNS/Address;->toDottedQuad([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 6

    iget-object v0, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    iget v0, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    iget-object v0, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    iget-object v1, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    aget v2, v2, v0

    div-int/lit8 v3, v2, 0x8

    aget-byte v4, v1, v3

    const/4 v5, 0x1

    rem-int/lit8 v2, v2, 0x8

    rsub-int/lit8 v2, v2, 0x7

    shl-int v2, v5, v2

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    return-void
.end method
