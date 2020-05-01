.class public Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;
.super Ljava/lang/Object;
.source "ClientMslContext.java"


# instance fields
.field private clock:Lcom/netflix/msl/client/ClientMslContext$ClockProvider;

.field private entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

.field private entityAuthFactories:Ljava/util/Map;
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

.field private keyxFactories:Ljava/util/Map;
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

.field private mslCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

.field private mslStore:Lcom/netflix/msl/util/MslStore;

.field private random:Ljava/util/Random;

.field private tokenFactory:Lcom/netflix/msl/tokens/TokenFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/netflix/msl/client/ClientMslContext;
    .locals 9

    .prologue
    .line 43
    new-instance v0, Lcom/netflix/msl/client/ClientMslContext;

    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->clock:Lcom/netflix/msl/client/ClientMslContext$ClockProvider;

    iget-object v2, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->random:Ljava/util/Random;

    iget-object v3, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->mslCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    iget-object v4, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->tokenFactory:Lcom/netflix/msl/tokens/TokenFactory;

    iget-object v5, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    iget-object v6, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories:Ljava/util/Map;

    iget-object v7, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories:Ljava/util/Map;

    iget-object v8, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->mslStore:Lcom/netflix/msl/util/MslStore;

    invoke-direct/range {v0 .. v8}, Lcom/netflix/msl/client/ClientMslContext;-><init>(Lcom/netflix/msl/client/ClientMslContext$ClockProvider;Ljava/util/Random;Lcom/netflix/msl/crypto/ICryptoContext;Lcom/netflix/msl/tokens/TokenFactory;Lcom/netflix/msl/entityauth/EntityAuthenticationData;Ljava/util/Map;Ljava/util/Map;Lcom/netflix/msl/util/MslStore;)V

    return-object v0
.end method

.method public clock(Lcom/netflix/msl/client/ClientMslContext$ClockProvider;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->clock:Lcom/netflix/msl/client/ClientMslContext$ClockProvider;

    return-object p0
.end method

.method public entityAuthData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    return-object p0
.end method

.method public entityAuthFactories(Ljava/util/Map;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;",
            "Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;",
            ">;)",
            "Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;"
        }
    .end annotation

    .prologue
    .line 43
    iput-object p1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories:Ljava/util/Map;

    return-object p0
.end method

.method public keyxFactories(Ljava/util/Map;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/msl/keyx/KeyExchangeScheme;",
            "Lcom/netflix/msl/keyx/KeyExchangeFactory;",
            ">;)",
            "Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;"
        }
    .end annotation

    .prologue
    .line 43
    iput-object p1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories:Ljava/util/Map;

    return-object p0
.end method

.method public mslCryptoContext(Lcom/netflix/msl/crypto/ICryptoContext;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->mslCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    return-object p0
.end method

.method public mslStore(Lcom/netflix/msl/util/MslStore;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->mslStore:Lcom/netflix/msl/util/MslStore;

    return-object p0
.end method

.method public random(Ljava/util/Random;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->random:Ljava/util/Random;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ClientMslContext.ClientMslContextBuilder(clock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->clock:Lcom/netflix/msl/client/ClientMslContext$ClockProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", random="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->random:Ljava/util/Random;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mslCryptoContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->mslCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tokenFactory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->tokenFactory:Lcom/netflix/msl/tokens/TokenFactory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", entityAuthData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", entityAuthFactories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", keyxFactories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mslStore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->mslStore:Lcom/netflix/msl/util/MslStore;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tokenFactory(Lcom/netflix/msl/tokens/TokenFactory;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->tokenFactory:Lcom/netflix/msl/tokens/TokenFactory;

    return-object p0
.end method
