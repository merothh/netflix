.class public Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;
.super Lorg/xbill/DNS/DNSSEC$DNSSECException;
.source "DNSSEC.java"


# instance fields
.field private now:Ljava/util/Date;

.field private when:Ljava/util/Date;


# direct methods
.method constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 1

    .prologue
    .line 283
    const-string/jumbo v0, "signature is not yet valid"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    .line 284
    iput-object p1, p0, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;->when:Ljava/util/Date;

    .line 285
    iput-object p2, p0, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;->now:Ljava/util/Date;

    .line 286
    return-void
.end method


# virtual methods
.method public getExpiration()Ljava/util/Date;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;->when:Ljava/util/Date;

    return-object v0
.end method

.method public getVerifyTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;->now:Ljava/util/Date;

    return-object v0
.end method
