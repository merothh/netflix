.class public Lcom/netflix/msl/tokens/ClientTokenFactory;
.super Ljava/lang/Object;
.source "ClientTokenFactory.java"

# interfaces
.implements Lcom/netflix/msl/tokens/TokenFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptNonReplayableId(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;J)Lcom/netflix/msl/MslError;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public createMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/tokens/MasterToken;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Creating master tokens is unsupported by the token factory."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createUser(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;)Lcom/netflix/msl/tokens/MslUser;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Creating users is unsupported by the token factory."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createUserIdToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MslUser;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/tokens/UserIdToken;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Creating user ID tokens is unsupported by the token factory."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isMasterTokenRenewable(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslError;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public isMasterTokenRevoked(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslError;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public isUserIdTokenRevoked(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslError;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public renewMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/tokens/MasterToken;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Renewing master tokens is unsupported by the token factory."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public renewUserIdToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/UserIdToken;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/tokens/UserIdToken;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Renewing master tokens is unsupported by the token factory."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
