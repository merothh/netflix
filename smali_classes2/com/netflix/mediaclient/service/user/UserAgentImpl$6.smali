.class Lcom/netflix/mediaclient/service/user/UserAgentImpl$6;
.super Lo/yj;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl;->f(Lo/ym;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/ym;

.field final synthetic e:Lcom/netflix/mediaclient/service/user/UserAgentImpl;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;)V
    .locals 0

    .line 1232
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$6;->e:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$6;->b:Lo/ym;

    invoke-direct {p0}, Lo/yj;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "nf_service_useragent"

    const-string v2, "status: %s, MSL refreshed cookies %s"

    .line 1235
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1236
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object p2, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    invoke-static {p2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1237
    iget-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$6;->e:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->b(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)Z

    .line 1239
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/ProfileGuid;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$6;->e:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/cl/model/event/session/ProfileGuid;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 1240
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/NetflixId;

    iget-object p1, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/netflix/cl/model/event/session/NetflixId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 1243
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$6;->e:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->c()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;->e:Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;

    invoke-static {p1, p2, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;)V

    .line 1245
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$6;->e:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/yn;->f(Landroid/content/Context;)V

    .line 1246
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$6;->e:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iget-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$6;->b:Lo/ym;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;)V

    return-void
.end method
