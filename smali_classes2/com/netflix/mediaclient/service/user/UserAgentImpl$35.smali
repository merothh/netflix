.class Lcom/netflix/mediaclient/service/user/UserAgentImpl$35;
.super Lo/yj;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Z)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$35;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$35;->d:Z

    invoke-direct {p0}, Lo/yj;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .line 474
    invoke-super {p0, p1, p2}, Lo/yj;->e(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 475
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "nf_service_useragent"

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object p2, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    invoke-static {p2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-array p2, v1, [Ljava/lang/Object;

    .line 476
    iget-object v3, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    aput-object v3, p2, v0

    const-string v3, "cookie fetch success  setting %s"

    invoke-static {v2, v3, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 477
    iget-object p2, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    iget-object p1, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$35;->d:Z

    invoke-static {p2, p1, v3}, Lo/afP;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    .line 480
    iget-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$35;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->h()Lo/ze;

    move-result-object p2

    invoke-interface {p2}, Lo/ze;->d()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "cookie refresh fail setting %s"

    invoke-static {v2, p2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 481
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$35;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->h()Lo/ze;

    move-result-object p1

    invoke-interface {p1}, Lo/ze;->d()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$35;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->h()Lo/ze;

    move-result-object p2

    invoke-interface {p2}, Lo/ze;->e()Ljava/lang/String;

    move-result-object p2

    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$35;->d:Z

    invoke-static {p1, p2, v3}, Lo/afP;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    new-array p1, v1, [Ljava/lang/Object;

    .line 483
    invoke-static {}, Lo/afP;->e()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "cookies in jar before sign-up activity : %s"

    invoke-static {v2, p2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 484
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$35;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->c(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)V

    return-void
.end method
