.class public Lorg/xbill/DNS/ClientSubnetOption;
.super Lorg/xbill/DNS/EDNSOption;
.source "ClientSubnetOption.java"


# static fields
.field private static final serialVersionUID:J = -0x35ae759da4a28cebL


# instance fields
.field private address:Ljava/net/InetAddress;

.field private family:I

.field private scopeNetmask:I

.field private sourceNetmask:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/xbill/DNS/EDNSOption;-><init>(I)V

    .line 43
    return-void
.end method

.method public constructor <init>(IILjava/net/InetAddress;)V
    .locals 2

    .prologue
    .line 68
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/xbill/DNS/EDNSOption;-><init>(I)V

    .line 70
    invoke-static {p3}, Lorg/xbill/DNS/Address;->familyOf(Ljava/net/InetAddress;)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/ClientSubnetOption;->family:I

    .line 71
    const-string/jumbo v0, "source netmask"

    iget v1, p0, Lorg/xbill/DNS/ClientSubnetOption;->family:I

    invoke-static {v0, v1, p1}, Lorg/xbill/DNS/ClientSubnetOption;->checkMaskLength(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/ClientSubnetOption;->sourceNetmask:I

    .line 73
    const-string/jumbo v0, "scope netmask"

    iget v1, p0, Lorg/xbill/DNS/ClientSubnetOption;->family:I

    invoke-static {v0, v1, p2}, Lorg/xbill/DNS/ClientSubnetOption;->checkMaskLength(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/ClientSubnetOption;->scopeNetmask:I

    .line 75
    invoke-static {p3, p1}, Lorg/xbill/DNS/Address;->truncate(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/ClientSubnetOption;->address:Ljava/net/InetAddress;

    .line 77
    iget-object v0, p0, Lorg/xbill/DNS/ClientSubnetOption;->address:Ljava/net/InetAddress;

    invoke-virtual {p3, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source netmask is not valid for address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    return-void
.end method

.method public constructor <init>(ILjava/net/InetAddress;)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/xbill/DNS/ClientSubnetOption;-><init>(IILjava/net/InetAddress;)V

    .line 92
    return-void
.end method

.method private static checkMaskLength(Ljava/lang/String;II)I
    .locals 4

    .prologue
    .line 47
    invoke-static {p1}, Lorg/xbill/DNS/Address;->addressLength(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    .line 48
    if-ltz p2, :cond_0

    if-le p2, v0, :cond_1

    .line 49
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must be in the range "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "[0.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_1
    return p2
.end method


# virtual methods
.method public getAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/xbill/DNS/ClientSubnetOption;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getFamily()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/xbill/DNS/ClientSubnetOption;->family:I

    return v0
.end method

.method public getScopeNetmask()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lorg/xbill/DNS/ClientSubnetOption;->scopeNetmask:I

    return v0
.end method

.method public getSourceNetmask()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lorg/xbill/DNS/ClientSubnetOption;->sourceNetmask:I

    return v0
.end method

.method optionFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 123
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/ClientSubnetOption;->family:I

    .line 124
    iget v0, p0, Lorg/xbill/DNS/ClientSubnetOption;->family:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/xbill/DNS/ClientSubnetOption;->family:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 125
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string/jumbo v1, "unknown address family"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/ClientSubnetOption;->sourceNetmask:I

    .line 127
    iget v0, p0, Lorg/xbill/DNS/ClientSubnetOption;->sourceNetmask:I

    iget v1, p0, Lorg/xbill/DNS/ClientSubnetOption;->family:I

    invoke-static {v1}, Lorg/xbill/DNS/Address;->addressLength(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    if-le v0, v1, :cond_1

    .line 128
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string/jumbo v1, "invalid source netmask"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/ClientSubnetOption;->scopeNetmask:I

    .line 130
    iget v0, p0, Lorg/xbill/DNS/ClientSubnetOption;->scopeNetmask:I

    iget v1, p0, Lorg/xbill/DNS/ClientSubnetOption;->family:I

    invoke-static {v1}, Lorg/xbill/DNS/Address;->addressLength(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    if-le v0, v1, :cond_2

    .line 131
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string/jumbo v1, "invalid scope netmask"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_2
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    .line 135
    array-length v1, v0

    iget v2, p0, Lorg/xbill/DNS/ClientSubnetOption;->sourceNetmask:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    if-eq v1, v2, :cond_3

    .line 136
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string/jumbo v1, "invalid address"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_3
    iget v1, p0, Lorg/xbill/DNS/ClientSubnetOption;->family:I

    invoke-static {v1}, Lorg/xbill/DNS/Address;->addressLength(I)I

    move-result v1

    new-array v1, v1, [B

    .line 140
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/ClientSubnetOption;->address:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    iget-object v0, p0, Lorg/xbill/DNS/ClientSubnetOption;->address:Ljava/net/InetAddress;

    iget v1, p0, Lorg/xbill/DNS/ClientSubnetOption;->sourceNetmask:I

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->truncate(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lorg/xbill/DNS/ClientSubnetOption;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 150
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string/jumbo v1, "invalid padding"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    new-instance v1, Lorg/xbill/DNS/WireParseException;

    const-string/jumbo v2, "invalid address"

    invoke-direct {v1, v2, v0}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 151
    :cond_4
    return-void
.end method

.method optionToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 164
    iget-object v1, p0, Lorg/xbill/DNS/ClientSubnetOption;->address:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    iget v1, p0, Lorg/xbill/DNS/ClientSubnetOption;->sourceNetmask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 167
    const-string/jumbo v1, ", scope netmask "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    iget v1, p0, Lorg/xbill/DNS/ClientSubnetOption;->scopeNetmask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method optionToWire(Lorg/xbill/DNS/DNSOutput;)V
    .locals 3

    .prologue
    .line 155
    iget v0, p0, Lorg/xbill/DNS/ClientSubnetOption;->family:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 156
    iget v0, p0, Lorg/xbill/DNS/ClientSubnetOption;->sourceNetmask:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 157
    iget v0, p0, Lorg/xbill/DNS/ClientSubnetOption;->scopeNetmask:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 158
    iget-object v0, p0, Lorg/xbill/DNS/ClientSubnetOption;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lorg/xbill/DNS/ClientSubnetOption;->sourceNetmask:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    .line 159
    return-void
.end method
