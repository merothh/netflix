.class public Lorg/xbill/DNS/DHCIDRecord;
.super Lorg/xbill/DNS/Record;
.source "DHCIDRecord.java"


# static fields
.field private static final serialVersionUID:J = -0x7200e772daec634bL


# instance fields
.field private data:[B


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJ[B)V
    .locals 7

    const/16 v2, 0x31

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    iput-object p5, p0, Lorg/xbill/DNS/DHCIDRecord;->data:[B

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/DHCIDRecord;->data:[B

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    new-instance v0, Lorg/xbill/DNS/DHCIDRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/DHCIDRecord;-><init>()V

    return-object v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 1

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getBase64()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/DHCIDRecord;->data:[B

    return-void
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 1

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/DHCIDRecord;->data:[B

    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/DHCIDRecord;->data:[B

    invoke-static {v0}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/DHCIDRecord;->data:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    return-void
.end method
