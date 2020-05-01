.class Lorg/xbill/DNS/DClass$DClassMnemonic;
.super Lorg/xbill/DNS/Mnemonic;
.source "DClass.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "DClass"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    const-string/jumbo v0, "CLASS"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DClass$DClassMnemonic;->setPrefix(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public check(I)V
    .locals 0

    invoke-static {p1}, Lorg/xbill/DNS/DClass;->check(I)V

    return-void
.end method
