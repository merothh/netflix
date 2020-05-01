.class public Lorg/xbill/DNS/spi/DNSJavaNameServiceDescriptor;
.super Ljava/lang/Object;
.source "DNSJavaNameServiceDescriptor.java"

# interfaces
.implements Lsun/net/spi/nameservice/NameServiceDescriptor;


# static fields
.field private static nameService:Lsun/net/spi/nameservice/NameService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 21
    const-class v0, Lsun/net/spi/nameservice/NameService;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 22
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lsun/net/spi/nameservice/NameService;

    aput-object v3, v1, v2

    new-instance v2, Lorg/xbill/DNS/spi/DNSJavaNameService;

    invoke-direct {v2}, Lorg/xbill/DNS/spi/DNSJavaNameService;-><init>()V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/net/spi/nameservice/NameService;

    sput-object v0, Lorg/xbill/DNS/spi/DNSJavaNameServiceDescriptor;->nameService:Lsun/net/spi/nameservice/NameService;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createNameService()Lsun/net/spi/nameservice/NameService;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lorg/xbill/DNS/spi/DNSJavaNameServiceDescriptor;->nameService:Lsun/net/spi/nameservice/NameService;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "dnsjava"

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "dns"

    return-object v0
.end method
