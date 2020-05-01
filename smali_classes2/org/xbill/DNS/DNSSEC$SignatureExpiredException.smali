.class public Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;
.super Lorg/xbill/DNS/DNSSEC$DNSSECException;
.source "DNSSEC.java"


# instance fields
.field private now:Ljava/util/Date;

.field private when:Ljava/util/Date;


# direct methods
.method constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 1

    .prologue
    .line 254
    const-string/jumbo v0, "signature expired"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    .line 255
    iput-object p1, p0, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;->when:Ljava/util/Date;

    .line 256
    iput-object p2, p0, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;->now:Ljava/util/Date;

    .line 257
    return-void
.end method


# virtual methods
.method public getExpiration()Ljava/util/Date;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;->when:Ljava/util/Date;

    return-object v0
.end method

.method public getVerifyTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;->now:Ljava/util/Date;

    return-object v0
.end method
