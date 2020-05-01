.class public final Lo/on;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 2

    .line 64
    iget-object v0, p0, Lo/on;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lo/on;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    const/4 v0, 0x0

    .line 66
    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lo/on;->a:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method private final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lo/on;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "DownloadActionCLReporter.startAction() sessionId was not null. It should not happen."

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 57
    :cond_0
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-instance v1, Lcom/netflix/cl/model/event/session/action/Download;

    invoke-direct {v1, p1, p2}, Lcom/netflix/cl/model/event/session/action/Download;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/on;->a:Ljava/lang/Long;

    return-void
.end method

.method private final d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 3

    .line 84
    iget-object v0, p0, Lo/on;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    iget-object v1, p0, Lo/on;->a:Ljava/lang/Long;

    new-instance v2, Lcom/netflix/cl/model/Error;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/netflix/cl/ExtLogger;->failedAction(Ljava/lang/Long;Lcom/netflix/cl/model/Error;)Z

    const/4 p1, 0x0

    .line 86
    check-cast p1, Ljava/lang/Long;

    iput-object p1, p0, Lo/on;->a:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method private final e()V
    .locals 2

    .line 74
    iget-object v0, p0, Lo/on;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lo/on;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    const/4 v0, 0x0

    .line 76
    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lo/on;->a:Ljava/lang/Long;

    :cond_0
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lo/on;->a()V

    return-void
.end method

.method public final c()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lo/on;->e()V

    return-void
.end method

.method public final c(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lo/on;->d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "dxId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oxId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, p2}, Lo/on;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
