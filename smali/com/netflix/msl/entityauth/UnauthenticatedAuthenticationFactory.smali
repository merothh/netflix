.class public Lcom/netflix/msl/entityauth/UnauthenticatedAuthenticationFactory;
.super Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;
.source "UnauthenticatedAuthenticationFactory.java"


# instance fields
.field final authutils:Lcom/netflix/msl/util/AuthenticationUtils;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/AuthenticationUtils;)V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->NONE:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;-><init>(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)V

    .line 42
    iput-object p1, p0, Lcom/netflix/msl/entityauth/UnauthenticatedAuthenticationFactory;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    .line 43
    return-void
.end method


# virtual methods
.method public createData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/netflix/msl/entityauth/UnauthenticatedAuthenticationData;

    invoke-direct {v0, p2}, Lcom/netflix/msl/entityauth/UnauthenticatedAuthenticationData;-><init>(Lcom/netflix/android/org/json/JSONObject;)V

    return-object v0
.end method

.method public getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 5

    .prologue
    .line 59
    instance-of v0, p2, Lcom/netflix/msl/entityauth/UnauthenticatedAuthenticationData;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Incorrect authentication data type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    check-cast p2, Lcom/netflix/msl/entityauth/UnauthenticatedAuthenticationData;

    .line 64
    invoke-virtual {p2}, Lcom/netflix/msl/entityauth/UnauthenticatedAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/netflix/msl/entityauth/UnauthenticatedAuthenticationFactory;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    invoke-interface {v1, v0}, Lcom/netflix/msl/util/AuthenticationUtils;->isEntityRevoked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    new-instance v1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->ENTITY_REVOKED:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "none "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/netflix/msl/MslEntityAuthException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEntityAuthException;

    move-result-object v0

    throw v0

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/netflix/msl/entityauth/UnauthenticatedAuthenticationFactory;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    invoke-virtual {p0}, Lcom/netflix/msl/entityauth/UnauthenticatedAuthenticationFactory;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/netflix/msl/util/AuthenticationUtils;->isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 70
    new-instance v1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->INCORRECT_ENTITYAUTH_DATA:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Authentication Scheme for Device Type Not Supported "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/msl/entityauth/UnauthenticatedAuthenticationFactory;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/netflix/msl/MslEntityAuthException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEntityAuthException;

    move-result-object v0

    throw v0

    .line 73
    :cond_2
    new-instance v0, Lcom/netflix/msl/crypto/NullCryptoContext;

    invoke-direct {v0}, Lcom/netflix/msl/crypto/NullCryptoContext;-><init>()V

    return-object v0
.end method
