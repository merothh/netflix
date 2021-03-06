.class public Lcom/netflix/msl/MslException;
.super Ljava/lang/Exception;
.source "MslException.java"


# static fields
.field private static final serialVersionUID:J = -0x21ebfa30e01089ceL


# instance fields
.field private entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

.field private final error:Lcom/netflix/msl/MslError;

.field private masterToken:Lcom/netflix/msl/tokens/MasterToken;

.field private messageId:Ljava/lang/Long;

.field private userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

.field private userIdToken:Lcom/netflix/msl/tokens/UserIdToken;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/MslError;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/netflix/msl/MslError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netflix/msl/MslException;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    iput-object v1, p0, Lcom/netflix/msl/MslException;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    iput-object v1, p0, Lcom/netflix/msl/MslException;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    iput-object v1, p0, Lcom/netflix/msl/MslException;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    iput-object v1, p0, Lcom/netflix/msl/MslException;->messageId:Ljava/lang/Long;

    iput-object p1, p0, Lcom/netflix/msl/MslException;->error:Lcom/netflix/msl/MslError;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/netflix/msl/MslError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/netflix/msl/MslException;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    iput-object v2, p0, Lcom/netflix/msl/MslException;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    iput-object v2, p0, Lcom/netflix/msl/MslException;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    iput-object v2, p0, Lcom/netflix/msl/MslException;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    iput-object v2, p0, Lcom/netflix/msl/MslException;->messageId:Ljava/lang/Long;

    iput-object p1, p0, Lcom/netflix/msl/MslException;->error:Lcom/netflix/msl/MslError;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/netflix/msl/MslError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v2, p0, Lcom/netflix/msl/MslException;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    iput-object v2, p0, Lcom/netflix/msl/MslException;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    iput-object v2, p0, Lcom/netflix/msl/MslException;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    iput-object v2, p0, Lcom/netflix/msl/MslException;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    iput-object v2, p0, Lcom/netflix/msl/MslException;->messageId:Ljava/lang/Long;

    iput-object p1, p0, Lcom/netflix/msl/MslException;->error:Lcom/netflix/msl/MslError;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/netflix/msl/MslError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/netflix/msl/MslException;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    iput-object v1, p0, Lcom/netflix/msl/MslException;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    iput-object v1, p0, Lcom/netflix/msl/MslException;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    iput-object v1, p0, Lcom/netflix/msl/MslException;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    iput-object v1, p0, Lcom/netflix/msl/MslException;->messageId:Ljava/lang/Long;

    iput-object p1, p0, Lcom/netflix/msl/MslException;->error:Lcom/netflix/msl/MslError;

    return-void
.end method


# virtual methods
.method public getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;
    .locals 2

    iget-object v0, p0, Lcom/netflix/msl/MslException;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/MslException;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/netflix/msl/MslException;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/netflix/msl/MslException;

    invoke-virtual {v0}, Lcom/netflix/msl/MslException;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getError()Lcom/netflix/msl/MslError;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/MslException;->error:Lcom/netflix/msl/MslError;

    return-object v0
.end method

.method public getMasterToken()Lcom/netflix/msl/tokens/MasterToken;
    .locals 2

    iget-object v0, p0, Lcom/netflix/msl/MslException;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/MslException;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/netflix/msl/MslException;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/netflix/msl/MslException;

    invoke-virtual {v0}, Lcom/netflix/msl/MslException;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMessageId()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/netflix/msl/MslException;->messageId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/MslException;->messageId:Ljava/lang/Long;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/netflix/msl/MslException;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/netflix/msl/MslException;

    invoke-virtual {v0}, Lcom/netflix/msl/MslException;->getMessageId()Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserAuthenticationData()Lcom/netflix/msl/userauth/UserAuthenticationData;
    .locals 2

    iget-object v0, p0, Lcom/netflix/msl/MslException;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/MslException;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/netflix/msl/MslException;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/netflix/msl/MslException;

    invoke-virtual {v0}, Lcom/netflix/msl/MslException;->getUserAuthenticationData()Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;
    .locals 2

    iget-object v0, p0, Lcom/netflix/msl/MslException;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/MslException;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/netflix/msl/MslException;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/netflix/msl/MslException;

    invoke-virtual {v0}, Lcom/netflix/msl/MslException;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslException;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/netflix/msl/MslException;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    :cond_0
    return-object p0
.end method

.method public setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/netflix/msl/MslException;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    :cond_0
    return-object p0
.end method

.method public setMessageId(J)Lcom/netflix/msl/MslException;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x20000000000000L

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Message ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is outside the valid range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->getMessageId()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/MslException;->messageId:Ljava/lang/Long;

    :cond_2
    return-object p0
.end method

.method public setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->getUserAuthenticationData()Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/netflix/msl/MslException;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    :cond_0
    return-object p0
.end method

.method public setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->getUserAuthenticationData()Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/netflix/msl/MslException;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    :cond_0
    return-object p0
.end method
