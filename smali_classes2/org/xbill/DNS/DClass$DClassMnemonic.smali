.class Lorg/xbill/DNS/DClass$DClassMnemonic;
.super Lorg/xbill/DNS/Mnemonic;
.source "DClass.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    const-string/jumbo v0, "DClass"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    .line 39
    const-string/jumbo v0, "CLASS"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DClass$DClassMnemonic;->setPrefix(Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public check(I)V
    .locals 0

    .prologue
    .line 44
    invoke-static {p1}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 45
    return-void
.end method
