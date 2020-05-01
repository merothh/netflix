.class public Lorg/xbill/DNS/DNSSEC$NoSignatureException;
.super Lorg/xbill/DNS/DNSSEC$DNSSECException;
.source "DNSSEC.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 329
    const-string/jumbo v0, "no signature found"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    .line 330
    return-void
.end method
