.class public Lorg/xbill/DNS/IPSECKEYRecord;
.super Lorg/xbill/DNS/Record;
.source "IPSECKEYRecord.java"


# static fields
.field private static final serialVersionUID:J = 0x2a555fd7ba8ed6b7L


# instance fields
.field private algorithmType:I

.field private gateway:Ljava/lang/Object;

.field private gatewayType:I

.field private key:[B

.field private precedence:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIIILjava/lang/Object;[B)V
    .locals 9

    const/16 v4, 0x2d

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    const-string/jumbo v2, "precedence"

    invoke-static {v2, p5}, Lorg/xbill/DNS/IPSECKEYRecord;->checkU8(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/IPSECKEYRecord;->precedence:I

    const-string/jumbo v2, "gatewayType"

    invoke-static {v2, p6}, Lorg/xbill/DNS/IPSECKEYRecord;->checkU8(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gatewayType:I

    const-string/jumbo v2, "algorithmType"

    move/from16 v0, p7

    invoke-static {v2, v0}, Lorg/xbill/DNS/IPSECKEYRecord;->checkU8(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/IPSECKEYRecord;->algorithmType:I

    packed-switch p6, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "\"gatewayType\" must be between 0 and 3"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    :goto_0
    move-object/from16 v0, p9

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->key:[B

    return-void

    :pswitch_1
    move-object/from16 v0, p8

    instance-of v2, v0, Ljava/net/InetAddress;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "\"gateway\" must be an IPv4 address"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p8

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p8

    instance-of v2, v0, Ljava/net/Inet6Address;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "\"gateway\" must be an IPv6 address"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p8

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p8

    instance-of v2, v0, Lorg/xbill/DNS/Name;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "\"gateway\" must be a DNS name"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string/jumbo v2, "gateway"

    check-cast p8, Lorg/xbill/DNS/Name;

    move-object/from16 v0, p8

    invoke-static {v2, v0}, Lorg/xbill/DNS/IPSECKEYRecord;->checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getAlgorithmType()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->algorithmType:I

    return v0
.end method

.method public getGateway()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    return-object v0
.end method

.method public getGatewayType()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gatewayType:I

    return v0
.end method

.method public getKey()[B
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->key:[B

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    new-instance v0, Lorg/xbill/DNS/IPSECKEYRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/IPSECKEYRecord;-><init>()V

    return-object v0
.end method

.method public getPrecedence()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->precedence:I

    return v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 2

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->precedence:I

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gatewayType:I

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->algorithmType:I

    iget v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gatewayType:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string/jumbo v1, "invalid gateway type"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/xbill/DNS/TextParseException;

    const-string/jumbo v1, "invalid gateway format"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->getBase64(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->key:[B

    return-void

    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->getAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->getAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 2

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->precedence:I

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gatewayType:I

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->algorithmType:I

    iget v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gatewayType:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string/jumbo v1, "invalid gateway type"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->key:[B

    :cond_0
    return-void

    :pswitch_1
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    goto :goto_0

    :pswitch_3
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method rrToString()Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->precedence:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gatewayType:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->algorithmType:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gatewayType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->key:[B

    if-eqz v0, :cond_0

    const-string/jumbo v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->key:[B

    invoke-static {v0}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 2

    iget v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->precedence:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    iget v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gatewayType:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    iget v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->algorithmType:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    iget v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gatewayType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->key:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->key:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    check-cast v0, Lorg/xbill/DNS/Name;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
