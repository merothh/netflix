.class public Lcom/netflix/msl/entityauth/ProvisionedAuthenticationFactory;
.super Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;
.source "ProvisionedAuthenticationFactory.java"


# instance fields
.field final service:Lcom/netflix/msl/entityauth/ProvisionedAuthenticationFactory$IdentityProvisioningService;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/entityauth/ProvisionedAuthenticationFactory$IdentityProvisioningService;)V
    .locals 1

    sget-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->PROVISIONED:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;-><init>(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)V

    iput-object p1, p0, Lcom/netflix/msl/entityauth/ProvisionedAuthenticationFactory;->service:Lcom/netflix/msl/entityauth/ProvisionedAuthenticationFactory$IdentityProvisioningService;

    return-void
.end method


# virtual methods
.method public createData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;
    .locals 1

    new-instance v0, Lcom/netflix/msl/entityauth/ProvisionedAuthenticationData;

    invoke-direct {v0, p2}, Lcom/netflix/msl/entityauth/ProvisionedAuthenticationData;-><init>(Lcom/netflix/android/org/json/JSONObject;)V

    return-object v0
.end method

.method public getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 3

    instance-of v0, p2, Lcom/netflix/msl/entityauth/ProvisionedAuthenticationData;

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
    check-cast p2, Lcom/netflix/msl/entityauth/ProvisionedAuthenticationData;

    iget-object v0, p0, Lcom/netflix/msl/entityauth/ProvisionedAuthenticationFactory;->service:Lcom/netflix/msl/entityauth/ProvisionedAuthenticationFactory$IdentityProvisioningService;

    invoke-interface {v0}, Lcom/netflix/msl/entityauth/ProvisionedAuthenticationFactory$IdentityProvisioningService;->nextIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/netflix/msl/entityauth/ProvisionedAuthenticationData;->setIdentity(Ljava/lang/String;)V

    new-instance v0, Lcom/netflix/msl/crypto/NullCryptoContext;

    invoke-direct {v0}, Lcom/netflix/msl/crypto/NullCryptoContext;-><init>()V

    return-object v0
.end method
