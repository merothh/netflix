.class public Lcom/netflix/msl/MslMasterTokenException;
.super Lcom/netflix/msl/MslException;
.source "MslMasterTokenException.java"


# static fields
.field private static final serialVersionUID:J = -0x2bbcf44af0819540L


# direct methods
.method public constructor <init>(Lcom/netflix/msl/MslError;Lcom/netflix/msl/tokens/MasterToken;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;)V

    invoke-virtual {p0, p2}, Lcom/netflix/msl/MslMasterTokenException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/MslError;Lcom/netflix/msl/tokens/MasterToken;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/netflix/msl/MslMasterTokenException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    return-void
.end method


# virtual methods
.method public bridge synthetic setMessageId(J)Lcom/netflix/msl/MslException;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/netflix/msl/MslMasterTokenException;->setMessageId(J)Lcom/netflix/msl/MslMasterTokenException;

    move-result-object v0

    return-object v0
.end method

.method public setMessageId(J)Lcom/netflix/msl/MslMasterTokenException;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netflix/msl/MslException;->setMessageId(J)Lcom/netflix/msl/MslException;

    return-object p0
.end method

.method public bridge synthetic setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netflix/msl/MslMasterTokenException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslMasterTokenException;

    move-result-object v0

    return-object v0
.end method

.method public setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslMasterTokenException;
    .locals 0

    invoke-super {p0, p1}, Lcom/netflix/msl/MslException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;

    return-object p0
.end method

.method public bridge synthetic setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netflix/msl/MslMasterTokenException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslMasterTokenException;

    move-result-object v0

    return-object v0
.end method

.method public setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslMasterTokenException;
    .locals 0

    invoke-super {p0, p1}, Lcom/netflix/msl/MslException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    return-object p0
.end method
