.class public Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;
.super Ljava/lang/IllegalArgumentException;
.source "DNSSEC.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 320
    const-string/jumbo v0, "incompatible keys"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 321
    return-void
.end method
