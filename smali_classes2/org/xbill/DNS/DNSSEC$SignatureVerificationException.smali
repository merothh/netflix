.class public Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;
.super Lorg/xbill/DNS/DNSSEC$DNSSECException;
.source "DNSSEC.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 311
    const-string/jumbo v0, "signature verification failed"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    .line 312
    return-void
.end method
