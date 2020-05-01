.class Lcom/netflix/mediaclient/service/user/UserAgentImpl$25;
.super Lo/yj;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl;->g(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netflix/mediaclient/service/user/UserAgentImpl;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Ljava/lang/String;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$25;->b:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$25;->a:Ljava/lang/String;

    invoke-direct {p0}, Lo/yj;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 391
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object p2, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    invoke-static {p2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 392
    iget-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$25;->b:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->b(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)Z

    .line 393
    iget-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$25;->b:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$25;->a:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Ljava/lang/String;)V

    .line 394
    iget-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$25;->b:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {p2, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->c(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V

    goto :goto_0

    :cond_0
    const-string p1, "nf_service_useragent"

    const-string p2, "Failed to refresh credentials!"

    .line 396
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$25;->b:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->w()V

    .line 399
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$25;->b:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    sget-object p2, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
