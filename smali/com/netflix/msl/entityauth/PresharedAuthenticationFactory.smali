.class public Lcom/netflix/msl/entityauth/PresharedAuthenticationFactory;
.super Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;
.source "PresharedAuthenticationFactory.java"


# instance fields
.field private final authutils:Lcom/netflix/msl/util/AuthenticationUtils;

.field private final store:Lcom/netflix/msl/entityauth/PresharedKeyStore;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/entityauth/PresharedKeyStore;Lcom/netflix/msl/util/AuthenticationUtils;)V
    .locals 1

    sget-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->PSK:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;-><init>(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)V

    iput-object p1, p0, Lcom/netflix/msl/entityauth/PresharedAuthenticationFactory;->store:Lcom/netflix/msl/entityauth/PresharedKeyStore;

    iput-object p2, p0, Lcom/netflix/msl/entityauth/PresharedAuthenticationFactory;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    return-void
.end method


# virtual methods
.method public createData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;
    .locals 1

    new-instance v0, Lcom/netflix/msl/entityauth/PresharedAuthenticationData;

    invoke-direct {v0, p2}, Lcom/netflix/msl/entityauth/PresharedAuthenticationData;-><init>(Lcom/netflix/android/org/json/JSONObject;)V

    return-object v0
.end method

.method public getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 6

    instance-of v0, p2, Lcom/netflix/msl/entityauth/PresharedAuthenticationData;

    if-nez v0, :cond_0

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

    :cond_0
    check-cast p2, Lcom/netflix/msl/entityauth/PresharedAuthenticationData;

    invoke-virtual {p2}, Lcom/netflix/msl/entityauth/PresharedAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netflix/msl/entityauth/PresharedAuthenticationFactory;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    invoke-interface {v0, v2}, Lcom/netflix/msl/util/AuthenticationUtils;->isEntityRevoked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v1, Lcom/netflix/msl/MslError;->ENTITY_REVOKED:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "psk "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/netflix/msl/MslEntityAuthException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEntityAuthException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/msl/entityauth/PresharedAuthenticationFactory;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    invoke-virtual {p0}, Lcom/netflix/msl/entityauth/PresharedAuthenticationFactory;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/netflix/msl/util/AuthenticationUtils;->isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v1, Lcom/netflix/msl/MslError;->INCORRECT_ENTITYAUTH_DATA:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Authentication Scheme for Device Type Not Supported "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/msl/entityauth/PresharedAuthenticationFactory;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/netflix/msl/MslEntityAuthException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEntityAuthException;

    move-result-object v0

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/netflix/msl/entityauth/PresharedAuthenticationFactory;->store:Lcom/netflix/msl/entityauth/PresharedKeyStore;

    invoke-interface {v0, v2}, Lcom/netflix/msl/entityauth/PresharedKeyStore;->getKeys(Ljava/lang/String;)Lcom/netflix/msl/entityauth/PresharedKeyStore$KeySet;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v0, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v1, Lcom/netflix/msl/MslError;->ENTITY_NOT_FOUND:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "psk "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/netflix/msl/MslEntityAuthException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEntityAuthException;

    move-result-object v0

    throw v0

    :cond_3
    new-instance v0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;

    iget-object v3, v1, Lcom/netflix/msl/entityauth/PresharedKeyStore$KeySet;->encryptionKey:Ljavax/crypto/SecretKey;

    iget-object v4, v1, Lcom/netflix/msl/entityauth/PresharedKeyStore$KeySet;->hmacKey:Ljavax/crypto/SecretKey;

    iget-object v5, v1, Lcom/netflix/msl/entityauth/PresharedKeyStore$KeySet;->wrappingKey:Ljavax/crypto/SecretKey;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/msl/crypto/SymmetricCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    return-object v0
.end method
