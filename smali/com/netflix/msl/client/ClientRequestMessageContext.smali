.class public final Lcom/netflix/msl/client/ClientRequestMessageContext;
.super Ljava/lang/Object;
.source "ClientRequestMessageContext.java"

# interfaces
.implements Lcom/netflix/msl/msg/MessageContext;


# static fields
.field private static final USER_ID:Ljava/lang/String; = "local-userid"


# instance fields
.field private final debugContext:Lcom/netflix/msl/msg/MessageDebugContext;

.field private final encrypted:Z

.field private final integrityProtected:Z

.field private final keyRequestDataProvider:Lcom/netflix/msl/client/KeyRequestDataProvider;

.field private final nonReplayable:Z

.field private final payload:[B

.field private final recipient:Ljava/lang/String;

.field private final userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

.field private final userId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/netflix/msl/msg/MessageDebugContext;Lcom/netflix/msl/userauth/UserAuthenticationData;[BLjava/lang/String;Lcom/netflix/msl/client/KeyRequestDataProvider;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/msl/client/ClientRequestMessageContext;->encrypted:Z

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/netflix/msl/client/ClientRequestMessageContext;->integrityProtected:Z

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/netflix/msl/client/ClientRequestMessageContext;->nonReplayable:Z

    iput-object p4, p0, Lcom/netflix/msl/client/ClientRequestMessageContext;->userId:Ljava/lang/String;

    iput-object p5, p0, Lcom/netflix/msl/client/ClientRequestMessageContext;->debugContext:Lcom/netflix/msl/msg/MessageDebugContext;

    iput-object p6, p0, Lcom/netflix/msl/client/ClientRequestMessageContext;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    iput-object p7, p0, Lcom/netflix/msl/client/ClientRequestMessageContext;->payload:[B

    iput-object p8, p0, Lcom/netflix/msl/client/ClientRequestMessageContext;->recipient:Ljava/lang/String;

    if-eqz p9, :cond_6

    :goto_2
    iput-object p9, p0, Lcom/netflix/msl/client/ClientRequestMessageContext;->keyRequestDataProvider:Lcom/netflix/msl/client/KeyRequestDataProvider;

    return-void

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    new-instance p9, Lcom/netflix/msl/client/AsymmetricWrappedKeyRequestProvider;

    invoke-direct {p9}, Lcom/netflix/msl/client/AsymmetricWrappedKeyRequestProvider;-><init>()V

    goto :goto_2
.end method

.method synthetic constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/netflix/msl/msg/MessageDebugContext;Lcom/netflix/msl/userauth/UserAuthenticationData;[BLjava/lang/String;Lcom/netflix/msl/client/KeyRequestDataProvider;Lcom/netflix/msl/client/ClientRequestMessageContext$1;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/netflix/msl/client/ClientRequestMessageContext;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/netflix/msl/msg/MessageDebugContext;Lcom/netflix/msl/userauth/UserAuthenticationData;[BLjava/lang/String;Lcom/netflix/msl/client/KeyRequestDataProvider;)V

    return-void
.end method

.method public static builder()Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;
    .locals 1

    new-instance v0, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    invoke-direct {v0}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/netflix/msl/client/ClientRequestMessageContext;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/netflix/msl/client/ClientRequestMessageContext;

    invoke-virtual {p0}, Lcom/netflix/msl/client/ClientRequestMessageContext;->isEncrypted()Z

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/msl/client/ClientRequestMessageContext;->isEncrypted()Z

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/netflix/msl/client/ClientRequestMessageContext;->isIntegrityProtected()Z

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/msl/client/ClientRequestMessageContext;->isIntegrityProtected()Z

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/netflix/msl/client/ClientRequestMessageContext;->isNonReplayable()Z

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/msl/client/ClientRequestMessageContext;->isNonReplayable()Z

    move-result v3

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/netflix/msl/client/ClientRequestMessageContext;->getRecipient()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/msl/client/ClientRequestMessageContext;->getRecipient()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_7

    if-eqz v3, :cond_8

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_8
    invoke-virtual {p0}, Lcom/netflix/msl/client/ClientRequestMessageContext;->getDebugContext()Lcom/netflix/msl/msg/MessageDebugContext;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/msl/client/ClientRequestMessageContext;->getDebugContext()Lcom/netflix/msl/msg/MessageDebugContext;

    move-result-object v3

    if-nez v2, :cond_a

    if-eqz v3, :cond_b

    :cond_9
    move v0, v1

    goto :goto_0

    :cond_a
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_b
    invoke-virtual {p0}, Lcom/netflix/msl/client/ClientRequestMessageContext;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/msl/client/ClientRequestMessageContext;->getUserId()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_d

    if-eqz v3, :cond_e

    :cond_c
    move v0, v1

    goto :goto_0

    :cond_d
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_e
    invoke-virtual {p0}, Lcom/netflix/msl/client/ClientRequestMessageContext;->getUserAuthData()Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/msl/client/ClientRequestMessageContext;->getUserAuthData()Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v3

    if-nez v2, :cond_10

    if-eqz v3, :cond_11

    :cond_f
    move v0, v1

    goto :goto_0

    :cond_10
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_11
    invoke-virtual {p0}, Lcom/netflix/msl/client/ClientRequestMessageContext;->getPayload()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/msl/client/ClientRequestMessageContext;->getPayload()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_12

    move v0, v1

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p0}, Lcom/netflix/msl/client/ClientRequestMessageContext;->getKeyRequestDataProvider()Lcom/netflix/msl/client/KeyRequestDataProvider;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/msl/client/ClientRequestMessageContext;->getKeyRequestDataProvider()Lcom/netflix/msl/client/KeyRequestDataProvider;

    move-result-object v3

    if-nez v2, :cond_13

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_13
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getCryptoContexts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/crypto/ICryptoContext;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDebugContext()Lcom/netflix/msl/msg/MessageDebugContext;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/client/ClientRequestMessageContext;->debugContext:Lcom/netflix/msl/msg/MessageDebugContext;

    return-object v0
.end method

.method public getKeyRequestData()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/keyx/KeyRequestData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/msl/client/ClientRequestMessageContext;->keyRequestDataProvider:Lcom/netflix/msl/client/KeyRequestDataProvider;

    invoke-interface {v0}, Lcom/netflix/msl/client/KeyRequestDataProvider;->get()Lcom/netflix/msl/keyx/KeyRequestData;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/netflix/msl/keyx/KeyRequestData;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getKeyRequestDataProvider()Lcom/netflix/msl/client/KeyRequestDataProvider;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/client/ClientRequestMessageContext;->keyRequestDataProvider:Lcom/netflix/msl/client/KeyRequestDataProvider;

    return-object v0
.end method

.method public getPayload()[B
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/client/ClientRequestMessageContext;->payload:[B

    return-object v0
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUser()Lcom/netflix/msl/tokens/MslUser;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserAuthData()Lcom/netflix/msl/userauth/UserAuthenticationData;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/client/ClientRequestMessageContext;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    return-object v0
.end method

.method public getUserAuthData(Lcom/netflix/msl/msg/MessageContext$ReauthCode;ZZ)Lcom/netflix/msl/userauth/UserAuthenticationData;
    .locals 1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/client/ClientRequestMessageContext;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/client/ClientRequestMessageContext;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    const/16 v2, 0x61

    const/16 v1, 0x4f

    const/16 v3, 0x2b

    invoke-virtual {p0}, Lcom/netflix/msl/client/ClientRequestMessageContext;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    mul-int/lit8 v4, v0, 0x3b

    invoke-virtual {p0}, Lcom/netflix/msl/client/ClientRequestMessageContext;->isIntegrityProtected()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/netflix/msl/client/ClientRequestMessageContext;->isNonReplayable()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/netflix/msl/client/ClientRequestMessageContext;->getRecipient()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x3b

    if-nez v1, :cond_3

    move v0, v3

    :goto_3
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/netflix/msl/client/ClientRequestMessageContext;->getDebugContext()Lcom/netflix/msl/msg/MessageDebugContext;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x3b

    if-nez v1, :cond_4

    move v0, v3

    :goto_4
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/netflix/msl/client/ClientRequestMessageContext;->getUserId()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x3b

    if-nez v1, :cond_5

    move v0, v3

    :goto_5
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/netflix/msl/client/ClientRequestMessageContext;->getUserAuthData()Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x3b

    if-nez v1, :cond_6

    move v0, v3

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/netflix/msl/client/ClientRequestMessageContext;->getPayload()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/netflix/msl/client/ClientRequestMessageContext;->getKeyRequestDataProvider()Lcom/netflix/msl/client/KeyRequestDataProvider;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_7

    :goto_7
    add-int/2addr v0, v3

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_7
.end method

.method public isEncrypted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/msl/client/ClientRequestMessageContext;->encrypted:Z

    return v0
.end method

.method public isIntegrityProtected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/msl/client/ClientRequestMessageContext;->integrityProtected:Z

    return v0
.end method

.method public isNonReplayable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/msl/client/ClientRequestMessageContext;->nonReplayable:Z

    return v0
.end method

.method public isRequestingTokens()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ClientRequestMessageContext(encrypted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/msl/client/ClientRequestMessageContext;->isEncrypted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", integrityProtected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/msl/client/ClientRequestMessageContext;->isIntegrityProtected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nonReplayable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/msl/client/ClientRequestMessageContext;->isNonReplayable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", recipient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/msl/client/ClientRequestMessageContext;->getRecipient()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", debugContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/msl/client/ClientRequestMessageContext;->getDebugContext()Lcom/netflix/msl/msg/MessageDebugContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/msl/client/ClientRequestMessageContext;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", userAuthData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/msl/client/ClientRequestMessageContext;->getUserAuthData()Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/msl/client/ClientRequestMessageContext;->getPayload()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", keyRequestDataProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/msl/client/ClientRequestMessageContext;->getKeyRequestDataProvider()Lcom/netflix/msl/client/KeyRequestDataProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateServiceTokens(Lcom/netflix/msl/msg/MessageServiceTokenBuilder;Z)V
    .locals 0

    return-void
.end method

.method public write(Lcom/netflix/msl/msg/MessageOutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/client/ClientRequestMessageContext;->payload:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/client/ClientRequestMessageContext;->payload:[B

    invoke-virtual {p1, v0}, Lcom/netflix/msl/msg/MessageOutputStream;->write([B)V

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageOutputStream;->flush()V

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V

    :cond_0
    return-void
.end method
