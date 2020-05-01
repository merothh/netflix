.class Lcom/netflix/mediaclient/service/user/UserAgentImpl$31;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ze;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Ljava/lang/String;)Lo/ze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

.field final synthetic d:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V
    .locals 0

    .line 770
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$31;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$31;->d:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$31;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$31;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$31;->d:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    iget-object v0, v0, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$31;->d:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    iget-object v0, v0, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$31;->d:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    iget-object v0, v0, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$31;->d:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    iget-object v0, v0, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->userId:Ljava/lang/String;

    return-object v0
.end method
