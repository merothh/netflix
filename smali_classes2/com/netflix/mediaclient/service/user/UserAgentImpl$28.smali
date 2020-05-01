.class public Lcom/netflix/mediaclient/service/user/UserAgentImpl$28;
.super Lo/yj;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Long;

.field final synthetic c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Ljava/lang/Long;)V
    .locals 0

    .line 2625
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$28;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$28;->b:Ljava/lang/Long;

    invoke-direct {p0}, Lo/yj;-><init>()V

    return-void
.end method

.method private synthetic b()V
    .locals 3

    .line 2658
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$28;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Lo/Ac;

    move-result-object v0

    const/16 v1, 0x1e

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lo/Ac;->c(IZ)V

    return-void
.end method

.method public static synthetic d(Lcom/netflix/mediaclient/service/user/UserAgentImpl$28;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$28;->b()V

    return-void
.end method


# virtual methods
.method public c(Lo/ToggleButton;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 2630
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string p2, "nf_service_useragent"

    const-string v0, "Autologin success, go token activate"

    .line 2631
    invoke-static {p2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    .line 2632
    iput-boolean p2, p1, Lo/ToggleButton;->e:Z

    .line 2634
    new-instance p2, Lcom/netflix/mediaclient/service/user/UserAgentImpl$28$4;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$28$4;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl$28;)V

    .line 2647
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$28;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {v0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ToggleButton;Lo/ym;)V

    goto :goto_0

    .line 2649
    :cond_0
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$28;->b:Ljava/lang/Long;

    invoke-static {p2}, Lo/aeu;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/cl/model/Error;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/netflix/cl/ExtLogger;->failedAction(Ljava/lang/Long;Lcom/netflix/cl/model/Error;)Z

    .line 2655
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$28;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->m(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2657
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$28;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lo/yp;

    invoke-direct {p2, p0}, Lo/yp;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl$28;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
