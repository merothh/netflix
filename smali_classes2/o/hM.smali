.class public Lo/hM;
.super Lo/bV;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/hM$TaskDescription;
    }
.end annotation


# instance fields
.field private a:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$Application;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/bX;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;

.field private d:Z

.field private e:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lo/bV;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lo/hM;->d:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/hM;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lo/hM;->a:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$Application;

    return-void
.end method

.method static synthetic c(Lo/hM;)Ljava/util/ArrayList;
    .locals 0

    .line 38
    iget-object p0, p0, Lo/hM;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 53
    iget-object v0, p0, Lo/hM;->e:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "nf_nw_diag"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/hM;->e:Landroid/os/HandlerThread;

    .line 55
    iget-object v0, p0, Lo/hM;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 57
    :cond_0
    iget-object v0, p0, Lo/hM;->c:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lo/hM;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/hM;->c:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method private e(Lo/bX;)V
    .locals 2

    const-string v0, "nf_service_diagnosisagent"

    const-string v1, "runNetworkConnectivityTest"

    .line 84
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lo/hM;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;->e:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    invoke-virtual {p1, v0}, Lo/bX;->b(Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;)V

    .line 89
    iget-object v0, p0, Lo/hM;->a:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$Application;

    if-eqz v0, :cond_1

    .line 90
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$Application;->d()V

    .line 92
    :cond_1
    iget-object v0, p0, Lo/hM;->c:Landroid/os/Handler;

    new-instance v1, Lo/hM$3;

    invoke-direct {v1, p0, p1}, Lo/hM$3;-><init>(Lo/hM;Lo/bX;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic e(Lo/hM;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lo/hM;->g()V

    return-void
.end method

.method static synthetic e(Lo/hM;Lo/bX;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lo/hM;->e(Lo/bX;)V

    return-void
.end method

.method private g()V
    .locals 4

    const-string v0, "nf_service_diagnosisagent"

    const-string v1, "notifyDiagnosisComplete"

    .line 148
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0}, Lo/hM;->i()V

    .line 150
    iget-object v1, p0, Lo/hM;->a:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$Application;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lo/hM;->d:Z

    if-eqz v2, :cond_1

    .line 151
    invoke-interface {v1}, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$Application;->b()V

    .line 152
    invoke-direct {p0}, Lo/hM;->h()Z

    move-result v1

    .line 154
    :try_start_0
    new-instance v2, Lo/hM$TaskDescription;

    iget-object v3, p0, Lo/hM;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->a:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->c:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    :goto_0
    invoke-direct {v2, p0, v3, v1}, Lo/hM$TaskDescription;-><init>(Lo/hM;Ljava/util/List;Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;)V

    .line 156
    invoke-virtual {p0}, Lo/hM;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object v1

    invoke-interface {v1, v2}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "JSONException:"

    .line 158
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lo/hM;->d:Z

    return-void
.end method

.method private h()Z
    .locals 2

    .line 139
    iget-object v0, p0, Lo/hM;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/bX;

    .line 140
    invoke-virtual {v1}, Lo/bX;->e()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private i()V
    .locals 2

    .line 63
    iget-object v0, p0, Lo/hM;->e:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 65
    iput-object v1, p0, Lo/hM;->e:Landroid/os/HandlerThread;

    .line 67
    :cond_0
    iget-object v0, p0, Lo/hM;->c:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 69
    iput-object v1, p0, Lo/hM;->c:Landroid/os/Handler;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/bX;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lo/hM;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public agentName()Ljava/lang/String;
    .locals 1

    const-string v0, "diagnosis"

    return-object v0
.end method

.method public b()V
    .locals 2

    const-string v0, "nf_service_diagnosisagent"

    const-string v1, "abortDiagnosis"

    .line 212
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lo/hM;->d:Z

    .line 214
    iget-object v0, p0, Lo/hM;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 215
    invoke-direct {p0}, Lo/hM;->i()V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lo/hM;->a:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$Application;

    return-void
.end method

.method public c(Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$Application;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lo/hM;->a:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$Application;

    return-void
.end method

.method protected doInit()V
    .locals 1

    .line 80
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lo/hM;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public e()V
    .locals 5

    const-string v0, "nf_service_diagnosisagent"

    const-string v1, "startNetworkDiagnosis"

    .line 176
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0}, Lo/hM;->b()V

    .line 178
    invoke-direct {p0}, Lo/hM;->d()V

    const/4 v1, 0x1

    .line 179
    iput-boolean v1, p0, Lo/hM;->d:Z

    .line 181
    invoke-virtual {p0}, Lo/hM;->getConfigurationAgent()Lo/cz;

    move-result-object v2

    invoke-interface {v2}, Lo/cz;->c()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v2, v3}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v4, "apiUrl=%s"

    .line 182
    invoke-static {v0, v4, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 183
    iget-object v0, p0, Lo/hM;->b:Ljava/util/ArrayList;

    new-instance v1, Lo/bX;

    sget-object v4, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;->b:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    invoke-direct {v1, v2, v4}, Lo/bX;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lo/hM;->b:Ljava/util/ArrayList;

    new-instance v1, Lo/bX;

    sget-object v2, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;->b:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    const-string v4, "https://www.google.com/generate_204"

    invoke-direct {v1, v4, v2}, Lo/bX;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lo/hM;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/bX;

    .line 188
    sget-object v1, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;->e:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    invoke-virtual {v0, v1}, Lo/bX;->b(Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;)V

    .line 189
    iget-object v1, p0, Lo/hM;->a:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$Application;

    if-eqz v1, :cond_0

    .line 190
    invoke-interface {v1}, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$Application;->d()V

    .line 193
    :cond_0
    invoke-virtual {p0}, Lo/hM;->getConfigurationAgent()Lo/cz;

    move-result-object v1

    invoke-virtual {p0}, Lo/hM;->getConfigurationAgent()Lo/cz;

    move-result-object v2

    invoke-interface {v2}, Lo/cz;->ah()Z

    move-result v2

    new-instance v3, Lo/hM$1;

    invoke-direct {v3, p0, v0}, Lo/hM$1;-><init>(Lo/hM;Lo/bX;)V

    invoke-interface {v1, v2, v3}, Lo/cz;->b(ZLo/cJ;)V

    return-void
.end method
