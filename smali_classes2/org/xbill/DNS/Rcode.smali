.class public final Lorg/xbill/DNS/Rcode;
.super Ljava/lang/Object;
.source "Rcode.java"


# static fields
.field public static final BADKEY:I = 0x11

.field public static final BADMODE:I = 0x13

.field public static final BADSIG:I = 0x10

.field public static final BADTIME:I = 0x12

.field public static final BADVERS:I = 0x10

.field public static final FORMERR:I = 0x1

.field public static final NOERROR:I = 0x0

.field public static final NOTAUTH:I = 0x9

.field public static final NOTIMP:I = 0x4

.field public static final NOTIMPL:I = 0x4

.field public static final NOTZONE:I = 0xa

.field public static final NXDOMAIN:I = 0x3

.field public static final NXRRSET:I = 0x8

.field public static final REFUSED:I = 0x5

.field public static final SERVFAIL:I = 0x2

.field public static final YXDOMAIN:I = 0x6

.field public static final YXRRSET:I = 0x7

.field private static rcodes:Lorg/xbill/DNS/Mnemonic;

.field private static tsigrcodes:Lorg/xbill/DNS/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x10

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string/jumbo v1, "DNS Rcode"

    invoke-direct {v0, v1, v4}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string/jumbo v1, "TSIG rcode"

    invoke-direct {v0, v1, v4}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/Rcode;->tsigrcodes:Lorg/xbill/DNS/Mnemonic;

    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xfff

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const-string/jumbo v1, "RESERVED"

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setPrefix(Ljava/lang/String;)V

    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x0

    const-string/jumbo v2, "NOERROR"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const-string/jumbo v1, "FORMERR"

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const-string/jumbo v1, "SERVFAIL"

    invoke-virtual {v0, v4, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x3

    const-string/jumbo v2, "NXDOMAIN"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const-string/jumbo v1, "NOTIMP"

    invoke-virtual {v0, v5, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const-string/jumbo v1, "NOTIMPL"

    invoke-virtual {v0, v5, v1}, Lorg/xbill/DNS/Mnemonic;->addAlias(ILjava/lang/String;)V

    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x5

    const-string/jumbo v2, "REFUSED"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x6

    const-string/jumbo v2, "YXDOMAIN"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x7

    const-string/jumbo v2, "YXRRSET"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x8

    const-string/jumbo v2, "NXRRSET"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x9

    const-string/jumbo v2, "NOTAUTH"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xa

    const-string/jumbo v2, "NOTZONE"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const-string/jumbo v1, "BADVERS"

    invoke-virtual {v0, v6, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    sget-object v0, Lorg/xbill/DNS/Rcode;->tsigrcodes:Lorg/xbill/DNS/Mnemonic;

    const v1, 0xffff

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    sget-object v0, Lorg/xbill/DNS/Rcode;->tsigrcodes:Lorg/xbill/DNS/Mnemonic;

    const-string/jumbo v1, "RESERVED"

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setPrefix(Ljava/lang/String;)V

    sget-object v0, Lorg/xbill/DNS/Rcode;->tsigrcodes:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    sget-object v0, Lorg/xbill/DNS/Rcode;->tsigrcodes:Lorg/xbill/DNS/Mnemonic;

    sget-object v1, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->addAll(Lorg/xbill/DNS/Mnemonic;)V

    sget-object v0, Lorg/xbill/DNS/Rcode;->tsigrcodes:Lorg/xbill/DNS/Mnemonic;

    const-string/jumbo v1, "BADSIG"

    invoke-virtual {v0, v6, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    sget-object v0, Lorg/xbill/DNS/Rcode;->tsigrcodes:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x11

    const-string/jumbo v2, "BADKEY"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    sget-object v0, Lorg/xbill/DNS/Rcode;->tsigrcodes:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x12

    const-string/jumbo v2, "BADTIME"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    sget-object v0, Lorg/xbill/DNS/Rcode;->tsigrcodes:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x13

    const-string/jumbo v2, "BADMODE"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TSIGstring(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/xbill/DNS/Rcode;->tsigrcodes:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static value(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
