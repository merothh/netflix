.class public Lcom/netflix/msl/MslUserIdTokenException;
.super Lcom/netflix/msl/MslException;
.source "MslUserIdTokenException.java"


# static fields
.field private static final serialVersionUID:J = 0x7a14cc1c1a76c47fL


# direct methods
.method public constructor <init>(Lcom/netflix/msl/MslError;Lcom/netflix/msl/tokens/UserIdToken;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;)V

    invoke-virtual {p0, p2}, Lcom/netflix/msl/MslUserIdTokenException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/MslError;Lcom/netflix/msl/tokens/UserIdToken;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/netflix/msl/MslUserIdTokenException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/MslError;Lcom/netflix/msl/tokens/UserIdToken;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/netflix/msl/MslUserIdTokenException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    return-void
.end method


# virtual methods
.method public bridge synthetic setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslException;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netflix/msl/MslUserIdTokenException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslUserIdTokenException;

    move-result-object v0

    return-object v0
.end method

.method public setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslUserIdTokenException;
    .locals 0

    invoke-super {p0, p1}, Lcom/netflix/msl/MslException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslException;

    return-object p0
.end method

.method public bridge synthetic setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netflix/msl/MslUserIdTokenException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslUserIdTokenException;

    move-result-object v0

    return-object v0
.end method

.method public setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslUserIdTokenException;
    .locals 0

    invoke-super {p0, p1}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    return-object p0
.end method

.method public bridge synthetic setMessageId(J)Lcom/netflix/msl/MslException;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/netflix/msl/MslUserIdTokenException;->setMessageId(J)Lcom/netflix/msl/MslUserIdTokenException;

    move-result-object v0

    return-object v0
.end method

.method public setMessageId(J)Lcom/netflix/msl/MslUserIdTokenException;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netflix/msl/MslException;->setMessageId(J)Lcom/netflix/msl/MslException;

    return-object p0
.end method
