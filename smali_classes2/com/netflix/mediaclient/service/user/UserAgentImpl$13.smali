.class Lcom/netflix/mediaclient/service/user/UserAgentImpl$13;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Lcom/netflix/mediaclient/StatusCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)V
    .locals 0

    .line 1801
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$13;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1804
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$13;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->h(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Lo/ym;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1805
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$13;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->h(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Lo/ym;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-interface {v0, v1}, Lo/ym;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    const-string v0, "nf_service_useragent"

    const-string v1, "Received deactivate complete and notified UI"

    .line 1806
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$13;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;)Lo/ym;

    :cond_0
    return-void
.end method
