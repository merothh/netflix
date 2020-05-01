.class public Lorg/xbill/DNS/GenericEDNSOption;
.super Lorg/xbill/DNS/EDNSOption;
.source "GenericEDNSOption.java"


# instance fields
.field private data:[B


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lorg/xbill/DNS/EDNSOption;-><init>(I)V

    .line 20
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/xbill/DNS/EDNSOption;-><init>(I)V

    .line 29
    const-string/jumbo v0, "option data"

    const v1, 0xffff

    invoke-static {v0, p2, v1}, Lorg/xbill/DNS/Record;->checkByteArrayLength(Ljava/lang/String;[BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/GenericEDNSOption;->data:[B

    .line 30
    return-void
.end method


# virtual methods
.method optionFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/GenericEDNSOption;->data:[B

    .line 35
    return-void
.end method

.method optionToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/GenericEDNSOption;->data:[B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method optionToWire(Lorg/xbill/DNS/DNSOutput;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/xbill/DNS/GenericEDNSOption;->data:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 40
    return-void
.end method
