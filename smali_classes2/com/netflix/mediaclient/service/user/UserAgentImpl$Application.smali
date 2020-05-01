.class public final Lcom/netflix/mediaclient/service/user/UserAgentImpl$Application;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Application"
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)V
    .locals 0

    .line 2318
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Application;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 2325
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_ENDED"

    .line 2330
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2332
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Application;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->g()Ljava/lang/String;

    move-result-object p1

    const-string p2, "nf_service_useragent"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Application;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->g(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "Starting userProfile fetch "

    .line 2333
    invoke-static {p2, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Application;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j(Ljava/lang/String;)V

    .line 2337
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Application;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->k()V

    goto :goto_0

    :cond_1
    const-string p1, "canDoDataFetches false - skipping fetchProfileData request"

    .line 2339
    invoke-static {p2, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "com.netflix.mediaclient.intent.action.DELETED_PROFILE"

    .line 2342
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2343
    iget-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Application;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->c(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 2344
    iget-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Application;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->U:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {p2, p1, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;)V

    goto :goto_0

    :cond_3
    const-string p1, "com.netflix.mediaclient.intent.action.HOME_TTR_DONE"

    .line 2346
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2347
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Application;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->f(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)V

    :cond_4
    :goto_0
    return-void
.end method
