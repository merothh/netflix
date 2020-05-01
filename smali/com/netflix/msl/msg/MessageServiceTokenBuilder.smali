.class public Lcom/netflix/msl/msg/MessageServiceTokenBuilder;
.super Ljava/lang/Object;
.source "MessageServiceTokenBuilder.java"


# instance fields
.field private final builder:Lcom/netflix/msl/msg/MessageBuilder;

.field private final cryptoContexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/crypto/ICryptoContext;",
            ">;"
        }
    .end annotation
.end field

.field private final ctx:Lcom/netflix/msl/util/MslContext;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageBuilder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->getCryptoContexts()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->cryptoContexts:Ljava/util/Map;

    iput-object p3, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    return-void
.end method

.method private getPrimaryMasterToken()Lcom/netflix/msl/tokens/MasterToken;
    .locals 2

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageBuilder;->getKeyExchangeData()Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    invoke-virtual {v0}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    goto :goto_0
.end method

.method private static selectCryptoContext(Ljava/lang/String;Ljava/util/Map;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/crypto/ICryptoContext;",
            ">;)",
            "Lcom/netflix/msl/crypto/ICryptoContext;"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/crypto/ICryptoContext;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/crypto/ICryptoContext;

    goto :goto_0
.end method


# virtual methods
.method public addMasterBoundPeerServiceToken(Ljava/lang/String;[BZLcom/netflix/msl/MslConstants$CompressionAlgorithm;)Z
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageBuilder;->getPeerMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->cryptoContexts:Ljava/util/Map;

    invoke-static {p1, v1}, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->selectCryptoContext(Ljava/lang/String;Ljava/util/Map;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v8

    if-eqz v8, :cond_0

    new-instance v0, Lcom/netflix/msl/tokens/ServiceToken;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/netflix/msl/tokens/ServiceToken;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;[BLcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;ZLcom/netflix/msl/MslConstants$CompressionAlgorithm;Lcom/netflix/msl/crypto/ICryptoContext;)V

    :try_start_0
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v1, v0}, Lcom/netflix/msl/msg/MessageBuilder;->addPeerServiceToken(Lcom/netflix/msl/tokens/ServiceToken;)Lcom/netflix/msl/msg/MessageBuilder;
    :try_end_0
    .catch Lcom/netflix/msl/MslMessageException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Service token bound to incorrect authentication tokens despite setting correct master token."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addMasterBoundPrimaryServiceToken(Ljava/lang/String;[BZLcom/netflix/msl/MslConstants$CompressionAlgorithm;)Z
    .locals 9

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->getPrimaryMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->cryptoContexts:Ljava/util/Map;

    invoke-static {p1, v1}, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->selectCryptoContext(Ljava/lang/String;Ljava/util/Map;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v8

    if-eqz v8, :cond_0

    new-instance v0, Lcom/netflix/msl/tokens/ServiceToken;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/netflix/msl/tokens/ServiceToken;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;[BLcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;ZLcom/netflix/msl/MslConstants$CompressionAlgorithm;Lcom/netflix/msl/crypto/ICryptoContext;)V

    :try_start_0
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v1, v0}, Lcom/netflix/msl/msg/MessageBuilder;->addServiceToken(Lcom/netflix/msl/tokens/ServiceToken;)Lcom/netflix/msl/msg/MessageBuilder;
    :try_end_0
    .catch Lcom/netflix/msl/MslMessageException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Service token bound to incorrect authentication tokens despite setting correct master token."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addPeerServiceToken(Lcom/netflix/msl/tokens/ServiceToken;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0, p1}, Lcom/netflix/msl/msg/MessageBuilder;->addPeerServiceToken(Lcom/netflix/msl/tokens/ServiceToken;)Lcom/netflix/msl/msg/MessageBuilder;
    :try_end_0
    .catch Lcom/netflix/msl/MslMessageException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addPrimaryServiceToken(Lcom/netflix/msl/tokens/ServiceToken;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0, p1}, Lcom/netflix/msl/msg/MessageBuilder;->addServiceToken(Lcom/netflix/msl/tokens/ServiceToken;)Lcom/netflix/msl/msg/MessageBuilder;
    :try_end_0
    .catch Lcom/netflix/msl/MslMessageException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addUnboundPeerServiceToken(Ljava/lang/String;[BZLcom/netflix/msl/MslConstants$CompressionAlgorithm;)Z
    .locals 9

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->cryptoContexts:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->selectCryptoContext(Ljava/lang/String;Ljava/util/Map;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v8

    if-nez v8, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/netflix/msl/tokens/ServiceToken;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/netflix/msl/tokens/ServiceToken;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;[BLcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;ZLcom/netflix/msl/MslConstants$CompressionAlgorithm;Lcom/netflix/msl/crypto/ICryptoContext;)V

    :try_start_0
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v1, v0}, Lcom/netflix/msl/msg/MessageBuilder;->addPeerServiceToken(Lcom/netflix/msl/tokens/ServiceToken;)Lcom/netflix/msl/msg/MessageBuilder;
    :try_end_0
    .catch Lcom/netflix/msl/MslMessageException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Service token bound to incorrect authentication tokens despite being unbound."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addUnboundPrimaryServiceToken(Ljava/lang/String;[BZLcom/netflix/msl/MslConstants$CompressionAlgorithm;)Z
    .locals 9

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->cryptoContexts:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->selectCryptoContext(Ljava/lang/String;Ljava/util/Map;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v8

    if-nez v8, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/netflix/msl/tokens/ServiceToken;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/netflix/msl/tokens/ServiceToken;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;[BLcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;ZLcom/netflix/msl/MslConstants$CompressionAlgorithm;Lcom/netflix/msl/crypto/ICryptoContext;)V

    :try_start_0
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v1, v0}, Lcom/netflix/msl/msg/MessageBuilder;->addServiceToken(Lcom/netflix/msl/tokens/ServiceToken;)Lcom/netflix/msl/msg/MessageBuilder;
    :try_end_0
    .catch Lcom/netflix/msl/MslMessageException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Service token bound to incorrect authentication tokens despite being unbound."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addUserBoundPeerServiceToken(Ljava/lang/String;[BZLcom/netflix/msl/MslConstants$CompressionAlgorithm;)Z
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageBuilder;->getPeerMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageBuilder;->getPeerUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->cryptoContexts:Ljava/util/Map;

    invoke-static {p1, v1}, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->selectCryptoContext(Ljava/lang/String;Ljava/util/Map;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v8

    if-eqz v8, :cond_0

    new-instance v0, Lcom/netflix/msl/tokens/ServiceToken;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/netflix/msl/tokens/ServiceToken;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;[BLcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;ZLcom/netflix/msl/MslConstants$CompressionAlgorithm;Lcom/netflix/msl/crypto/ICryptoContext;)V

    :try_start_0
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v1, v0}, Lcom/netflix/msl/msg/MessageBuilder;->addPeerServiceToken(Lcom/netflix/msl/tokens/ServiceToken;)Lcom/netflix/msl/msg/MessageBuilder;
    :try_end_0
    .catch Lcom/netflix/msl/MslMessageException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Service token bound to incorrect authentication tokens despite setting correct master token and user ID token."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addUserBoundPrimaryServiceToken(Ljava/lang/String;[BZLcom/netflix/msl/MslConstants$CompressionAlgorithm;)Z
    .locals 9

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->getPrimaryMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageBuilder;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->cryptoContexts:Ljava/util/Map;

    invoke-static {p1, v1}, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->selectCryptoContext(Ljava/lang/String;Ljava/util/Map;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v8

    if-eqz v8, :cond_0

    new-instance v0, Lcom/netflix/msl/tokens/ServiceToken;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/netflix/msl/tokens/ServiceToken;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;[BLcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;ZLcom/netflix/msl/MslConstants$CompressionAlgorithm;Lcom/netflix/msl/crypto/ICryptoContext;)V

    :try_start_0
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v1, v0}, Lcom/netflix/msl/msg/MessageBuilder;->addServiceToken(Lcom/netflix/msl/tokens/ServiceToken;)Lcom/netflix/msl/msg/MessageBuilder;
    :try_end_0
    .catch Lcom/netflix/msl/MslMessageException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Service token bound to incorrect authentication tokens despite setting correct master token and user ID token."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deletePeerServiceToken(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageBuilder;->getPeerServiceTokens()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0, p1}, Lcom/netflix/msl/msg/MessageBuilder;->deletePeerServiceToken(Ljava/lang/String;)Lcom/netflix/msl/msg/MessageBuilder;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deletePrimaryServiceToken(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageBuilder;->getServiceTokens()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0, p1}, Lcom/netflix/msl/msg/MessageBuilder;->deleteServiceToken(Ljava/lang/String;)Lcom/netflix/msl/msg/MessageBuilder;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public excludePeerServiceToken(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageBuilder;->getPeerServiceTokens()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0, p1}, Lcom/netflix/msl/msg/MessageBuilder;->excludePeerServiceToken(Ljava/lang/String;)Lcom/netflix/msl/msg/MessageBuilder;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public excludePrimaryServiceToken(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageBuilder;->getServiceTokens()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0, p1}, Lcom/netflix/msl/msg/MessageBuilder;->excludeServiceToken(Ljava/lang/String;)Lcom/netflix/msl/msg/MessageBuilder;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPeerServiceTokens()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageBuilder;->getPeerServiceTokens()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryServiceTokens()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageBuilder;->getServiceTokens()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isPeerMasterTokenAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageBuilder;->getPeerMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPeerUserIdTokenAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageBuilder;->getPeerUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimaryMasterTokenAvailable()Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->getPrimaryMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimaryUserIdTokenAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageBuilder;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
