.class Lcom/netflix/mediaclient/service/user/UserAgentImpl$4;
.super Lo/cW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d(Lo/ahY;Lo/ym;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/ym;

.field final synthetic b:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

.field final synthetic c:Lo/ahY;

.field final synthetic e:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ahY;Lo/ym;Z)V
    .locals 0

    .line 1017
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$4;->b:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$4;->c:Lo/ahY;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$4;->a:Lo/ym;

    iput-boolean p4, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$4;->e:Z

    invoke-direct {p0}, Lo/cW;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 1020
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$4;->b:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p1, v2

    const-string v0, "nf_service_useragent"

    const-string v3, "doActivateFetchConfigData onConfigDataFetched res.isSuccess:%b, isAccountDataAvailable:%b"

    invoke-static {v0, v3, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1021
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1022
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$4;->b:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iget-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$4;->c:Lo/ahY;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$4;->a:Lo/ym;

    invoke-static {p1, p2, v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ahY;Lo/ym;Z)V

    goto :goto_0

    .line 1024
    :cond_0
    iget-boolean p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$4;->e:Z

    if-eqz p1, :cond_1

    .line 1025
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$4;->b:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iget-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$4;->c:Lo/ahY;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$4;->a:Lo/ym;

    invoke-static {p1, p2, v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ahY;Lo/ym;Z)V

    goto :goto_0

    .line 1028
    :cond_1
    invoke-static {}, Lo/adk;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "failed to get accountConfigData even with 2 tries.."

    .line 1029
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$4;->b:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {p2}, Lo/aeu;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/cl/model/Error;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/cl/model/Error;)V

    .line 1032
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$4;->b:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$4;->a:Lo/ym;

    invoke-virtual {p1, p2, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Lcom/netflix/mediaclient/android/app/Status;Lo/ym;)V

    goto :goto_0

    .line 1035
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$4;->b:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iget-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$4;->c:Lo/ahY;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$4;->a:Lo/ym;

    invoke-static {p1, p2, v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ahY;Lo/ym;Z)V

    :goto_0
    return-void
.end method
