.class public Lcom/netflix/msl/client/ClientMslContext;
.super Lcom/netflix/msl/util/MslContext;
.source "ClientMslContext.java"


# instance fields
.field private final clock:Lcom/netflix/msl/client/ClientMslContext$ClockProvider;

.field private final entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

.field private final entityAuthFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;",
            "Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final keyxFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/msl/keyx/KeyExchangeScheme;",
            "Lcom/netflix/msl/keyx/KeyExchangeFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final mslCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

.field private final mslStore:Lcom/netflix/msl/util/MslStore;

.field private final random:Ljava/util/Random;

.field private final tokenFactory:Lcom/netflix/msl/tokens/TokenFactory;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/client/ClientMslContext$ClockProvider;Ljava/util/Random;Lcom/netflix/msl/crypto/ICryptoContext;Lcom/netflix/msl/tokens/TokenFactory;Lcom/netflix/msl/entityauth/EntityAuthenticationData;Ljava/util/Map;Ljava/util/Map;Lcom/netflix/msl/util/MslStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/client/ClientMslContext$ClockProvider;",
            "Ljava/util/Random;",
            "Lcom/netflix/msl/crypto/ICryptoContext;",
            "Lcom/netflix/msl/tokens/TokenFactory;",
            "Lcom/netflix/msl/entityauth/EntityAuthenticationData;",
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;",
            "Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/msl/keyx/KeyExchangeScheme;",
            "Lcom/netflix/msl/keyx/KeyExchangeFactory;",
            ">;",
            "Lcom/netflix/msl/util/MslStore;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/netflix/msl/util/MslContext;-><init>()V

    .line 45
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/netflix/msl/client/ClientMslContext;->clock:Lcom/netflix/msl/client/ClientMslContext$ClockProvider;

    .line 46
    if-eqz p2, :cond_1

    :goto_1
    iput-object p2, p0, Lcom/netflix/msl/client/ClientMslContext;->random:Ljava/util/Random;

    .line 47
    if-eqz p3, :cond_2

    :goto_2
    iput-object p3, p0, Lcom/netflix/msl/client/ClientMslContext;->mslCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    .line 48
    if-eqz p4, :cond_3

    :goto_3
    iput-object p4, p0, Lcom/netflix/msl/client/ClientMslContext;->tokenFactory:Lcom/netflix/msl/tokens/TokenFactory;

    .line 49
    iput-object p5, p0, Lcom/netflix/msl/client/ClientMslContext;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    .line 50
    iput-object p6, p0, Lcom/netflix/msl/client/ClientMslContext;->entityAuthFactories:Ljava/util/Map;

    .line 51
    iput-object p7, p0, Lcom/netflix/msl/client/ClientMslContext;->keyxFactories:Ljava/util/Map;

    .line 52
    iput-object p8, p0, Lcom/netflix/msl/client/ClientMslContext;->mslStore:Lcom/netflix/msl/util/MslStore;

    .line 53
    return-void

    .line 45
    :cond_0
    new-instance p1, Lcom/netflix/msl/client/ClientMslContext$SystemClockProvider;

    invoke-direct {p1}, Lcom/netflix/msl/client/ClientMslContext$SystemClockProvider;-><init>()V

    goto :goto_0

    .line 46
    :cond_1
    new-instance p2, Ljava/security/SecureRandom;

    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_1

    .line 47
    :cond_2
    new-instance p3, Lcom/netflix/msl/crypto/ClientMslCryptoContext;

    invoke-direct {p3}, Lcom/netflix/msl/crypto/ClientMslCryptoContext;-><init>()V

    goto :goto_2

    .line 48
    :cond_3
    new-instance p4, Lcom/netflix/msl/tokens/ClientTokenFactory;

    invoke-direct {p4}, Lcom/netflix/msl/tokens/ClientTokenFactory;-><init>()V

    goto :goto_3
.end method

.method public static builder()Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;

    invoke-direct {v0}, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getEntityAuthData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    return-object v0
.end method

.method public getEntityAuthenticationData(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    return-object v0
.end method

.method public getEntityAuthenticationFactory(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext;->entityAuthFactories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;

    return-object v0
.end method

.method public getEntityAuthenticationScheme(Ljava/lang/String;)Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;
    .locals 1

    .prologue
    .line 94
    invoke-static {p1}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->getScheme(Ljava/lang/String;)Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v0

    return-object v0
.end method

.method public getKeyExchangeFactories()Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/netflix/msl/keyx/KeyExchangeFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext;->keyxFactories:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getKeyExchangeFactory(Lcom/netflix/msl/keyx/KeyExchangeScheme;)Lcom/netflix/msl/keyx/KeyExchangeFactory;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext;->keyxFactories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/keyx/KeyExchangeFactory;

    return-object v0
.end method

.method public getKeyExchangeScheme(Ljava/lang/String;)Lcom/netflix/msl/keyx/KeyExchangeScheme;
    .locals 1

    .prologue
    .line 114
    invoke-static {p1}, Lcom/netflix/msl/keyx/KeyExchangeScheme;->getScheme(Ljava/lang/String;)Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v0

    return-object v0
.end method

.method public getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 81
    sget-object v1, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->GZIP:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v1, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->LZW:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v1, Lcom/netflix/msl/msg/MessageCapabilities;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/netflix/msl/msg/MessageCapabilities;-><init>(Ljava/util/Set;Ljava/util/List;)V

    return-object v1
.end method

.method public getMslCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext;->mslCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    return-object v0
.end method

.method public getMslStore()Lcom/netflix/msl/util/MslStore;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext;->mslStore:Lcom/netflix/msl/util/MslStore;

    return-object v0
.end method

.method public getRandom()Ljava/util/Random;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext;->random:Ljava/util/Random;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext;->clock:Lcom/netflix/msl/client/ClientMslContext$ClockProvider;

    invoke-interface {v0}, Lcom/netflix/msl/client/ClientMslContext$ClockProvider;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext;->tokenFactory:Lcom/netflix/msl/tokens/TokenFactory;

    return-object v0
.end method

.method public getUserAuthenticationFactory(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)Lcom/netflix/msl/userauth/UserAuthenticationFactory;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserAuthenticationScheme(Ljava/lang/String;)Lcom/netflix/msl/userauth/UserAuthenticationScheme;
    .locals 1

    .prologue
    .line 104
    invoke-static {p1}, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->getScheme(Ljava/lang/String;)Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    move-result-object v0

    return-object v0
.end method

.method public isPeerToPeer()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method
