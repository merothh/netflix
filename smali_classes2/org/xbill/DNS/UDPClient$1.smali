.class final Lorg/xbill/DNS/UDPClient$1;
.super Ljava/lang/Object;
.source "UDPClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lorg/xbill/DNS/UDPClient;->access$000()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    .line 39
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/xbill/DNS/UDPClient;->access$102(Z)Z

    .line 40
    return-void
.end method
