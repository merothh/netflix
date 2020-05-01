.class Lcom/netflix/mediaclient/service/user/UserAgentImpl$8;
.super Lo/yj;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Ljava/lang/String;Lo/aie;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

.field final synthetic c:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Ljava/lang/String;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V
    .locals 0

    .line 1470
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$8;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$8;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$8;->c:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-direct {p0}, Lo/yj;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 1474
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1475
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$8;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$8;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$8;->c:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-static {v0, v1, p1, v2, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Ljava/lang/String;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_0
    const-string p1, "nf_service_useragent"

    const-string p2, "MSL switched profile but can\'t get cookies. call failed. leave user in graceful state by going back to previous state."

    .line 1477
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$8;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->cD:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p2

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Lcom/netflix/mediaclient/service/user/UserAgentImpl;I)V

    .line 1479
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$8;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->cD:Lcom/netflix/mediaclient/StatusCode;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->c(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/mediaclient/StatusCode;)V

    :goto_0
    return-void
.end method
