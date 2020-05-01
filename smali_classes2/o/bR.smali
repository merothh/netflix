.class public Lo/bR;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private final a:Lo/nQ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lo/bR;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/bR;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 56
    sget-object v0, Lo/bR;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on receive intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "playableId"

    .line 57
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "videoType"

    .line 58
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "allow"

    .line 59
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    iget-object v3, p0, Lo/bR;->a:Lo/nQ;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lo/nQ;->isReady()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lo/bR;->a:Lo/nQ;

    invoke-virtual {v3}, Lo/nQ;->f()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.netflix.mediaclient.intent.action.offline.STOP_DOWNLOAD"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    iget-object p1, p0, Lo/bR;->a:Lo/nQ;

    invoke-virtual {p1, v0}, Lo/nQ;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.netflix.mediaclient.intent.action.offline.START_DOWNLOAD"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_3

    .line 65
    iget-object p1, p0, Lo/bR;->a:Lo/nQ;

    new-instance p2, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;

    .line 68
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->m:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-direct {p2, v0, v1, v2}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 65
    invoke-virtual {p1, p2}, Lo/nQ;->b(Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;)V

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.netflix.mediaclient.intent.action.offline.ALLOW_DOWNLOADING"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz v2, :cond_3

    const-string p2, "true"

    .line 74
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "debug_settings_disable_downloading"

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 75
    invoke-static {p1, v0, p2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string p2, "false"

    .line 76
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    .line 77
    invoke-static {p1, v0, p2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_3
    :goto_0
    return-void
.end method
