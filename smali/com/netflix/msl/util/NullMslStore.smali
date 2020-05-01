.class public Lcom/netflix/msl/util/NullMslStore;
.super Ljava/lang/Object;
.source "NullMslStore.java"

# interfaces
.implements Lcom/netflix/msl/util/MslStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addServiceTokens(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addUserIdToken(Ljava/lang/String;Lcom/netflix/msl/tokens/UserIdToken;)V
    .locals 0

    return-void
.end method

.method public clearCryptoContexts()V
    .locals 0

    return-void
.end method

.method public clearServiceTokens()V
    .locals 0

    return-void
.end method

.method public clearUserIdTokens()V
    .locals 0

    return-void
.end method

.method public getCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMasterToken()Lcom/netflix/msl/tokens/MasterToken;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNonReplayableId(Lcom/netflix/msl/tokens/MasterToken;)J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getServiceTokens(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/tokens/MasterToken;",
            "Lcom/netflix/msl/tokens/UserIdToken;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_MASTERTOKEN_NULL:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0

    :cond_0
    invoke-virtual {p2, p1}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_MASTERTOKEN_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uit mtserialnumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/netflix/msl/tokens/UserIdToken;->getMasterTokenSerialNumber()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; mt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUserIdToken(Ljava/lang/String;)Lcom/netflix/msl/tokens/UserIdToken;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public removeCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)V
    .locals 0

    return-void
.end method

.method public removeServiceTokens(Ljava/lang/String;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V
    .locals 6

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p3, p2}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_MASTERTOKEN_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uit mtserialnumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/netflix/msl/tokens/UserIdToken;->getMasterTokenSerialNumber()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; mt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public removeUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)V
    .locals 0

    return-void
.end method

.method public setCryptoContext(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/crypto/ICryptoContext;)V
    .locals 0

    return-void
.end method
