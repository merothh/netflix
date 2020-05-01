.class public final Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$NetflixServiceReadyCallback;
.super Lo/Al;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetflixServiceReadyCallback"
.end annotation


# instance fields
.field private netflixService:Lo/zL;

.field private final receivedMsg:Ljava/lang/Object;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lo/Al;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$NetflixServiceReadyCallback;->receivedMsg:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getNetflixService$p(Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$NetflixServiceReadyCallback;)Lo/zL;
    .locals 1

    .line 51
    iget-object p0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$NetflixServiceReadyCallback;->netflixService:Lo/zL;

    if-nez p0, :cond_0

    const-string v0, "netflixService"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getServiceConnection$p(Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$NetflixServiceReadyCallback;)Landroid/content/ServiceConnection;
    .locals 1

    .line 51
    iget-object p0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$NetflixServiceReadyCallback;->serviceConnection:Landroid/content/ServiceConnection;

    if-nez p0, :cond_0

    const-string v0, "serviceConnection"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$setNetflixService$p(Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$NetflixServiceReadyCallback;Lo/zL;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$NetflixServiceReadyCallback;->netflixService:Lo/zL;

    return-void
.end method

.method public static final synthetic access$setServiceConnection$p(Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$NetflixServiceReadyCallback;Landroid/content/ServiceConnection;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$NetflixServiceReadyCallback;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public final fillIn(Landroid/content/ServiceConnection;Lo/zL;)V
    .locals 1

    const-string v0, "serviceConnection"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "netflixService"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p2, p0, Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$NetflixServiceReadyCallback;->netflixService:Lo/zL;

    .line 57
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$NetflixServiceReadyCallback;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public onServiceReady(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-super {p0, p1, p2}, Lo/Al;->onServiceReady(ILcom/netflix/mediaclient/android/app/Status;)V

    .line 62
    move-object p1, p0

    check-cast p1, Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$NetflixServiceReadyCallback;

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$NetflixServiceReadyCallback;->netflixService:Lo/zL;

    if-eqz v0, :cond_4

    .line 63
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "nf_push_service"

    const-string v3, "netflixService"

    if-eqz v0, :cond_2

    .line 64
    sget-object p2, Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils;->Companion:Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$Companion;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$NetflixServiceReadyCallback;->netflixService:Lo/zL;

    if-nez v0, :cond_0

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lo/zL;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "netflixService.applicationContext"

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$NetflixServiceReadyCallback;->receivedMsg:Ljava/lang/Object;

    invoke-virtual {p2, v0, v4}, Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$Companion;->buildOnMessageIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "sending message to netflixService:"

    .line 65
    invoke-static {v2, v0, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$NetflixServiceReadyCallback;->netflixService:Lo/zL;

    if-nez v0, :cond_1

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0, p2}, Lo/zL;->c(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 68
    iget-object v4, p0, Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$NetflixServiceReadyCallback;->receivedMsg:Ljava/lang/Object;

    aput-object v4, v0, v1

    const/4 v4, 0x1

    aput-object p2, v0, v4

    const-string p2, "dropping received intent: %s, service init failed: %s"

    invoke-static {v2, p2, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 71
    :goto_0
    iget-object p2, p0, Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$NetflixServiceReadyCallback;->netflixService:Lo/zL;

    if-nez p2, :cond_3

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_3
    move-object v0, p0

    check-cast v0, Lo/zK;

    invoke-interface {p2, v0}, Lo/zL;->e(Lo/zK;)V

    .line 74
    iget-object p1, p1, Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$NetflixServiceReadyCallback;->serviceConnection:Landroid/content/ServiceConnection;

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    const/4 p2, 0x0

    .line 75
    invoke-static {p2, v1, p1, p2}, Lo/aeB;->c(Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 76
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 77
    new-instance p2, Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$NetflixServiceReadyCallback$onServiceReady$3;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$NetflixServiceReadyCallback$onServiceReady$3;-><init>(Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$NetflixServiceReadyCallback;)V

    check-cast p2, Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method
