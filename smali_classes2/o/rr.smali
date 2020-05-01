.class abstract Lo/rr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/rA;


# instance fields
.field protected b:Lo/cz;

.field protected c:Lcom/netflix/mediaclient/servicemgr/IPlayer$Dialog;

.field protected e:Lcom/netflix/mediaclient/servicemgr/IPlayer$Dialog;


# direct methods
.method constructor <init>(Lo/cz;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lo/rr;->b:Lo/cz;

    return-void
.end method

.method private synthetic e(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;)V
    .locals 1

    .line 48
    invoke-virtual {p0, p1}, Lo/rr;->a(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;)Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    .line 49
    iget-object v0, p0, Lo/rr;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$Dialog;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$Dialog;->d(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;)V

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lo/rr;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$Dialog;

    :cond_0
    return-void
.end method

.method static synthetic e(Lo/rr;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/rr;->e(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/servicemgr/IPlayer$Dialog;)Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;
    .locals 2

    .line 37
    invoke-virtual {p0}, Lo/rr;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleFallback:: starts..."

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p0}, Lo/rr;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->a:Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lo/rr;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleFallback::InApp Widevine module can not be installed."

    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    return-object p1

    .line 45
    :cond_0
    iput-object p1, p0, Lo/rr;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$Dialog;

    .line 46
    new-instance p1, Lo/rz;

    invoke-direct {p1, p0}, Lo/rz;-><init>(Lo/rr;)V

    iput-object p1, p0, Lo/rr;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$Dialog;

    .line 56
    invoke-virtual {p0}, Lo/rr;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleFallback:: install InAppWidevine..."

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-object p1, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->a:Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;

    iget-object v0, p0, Lo/rr;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$Dialog;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->d(Lcom/netflix/mediaclient/servicemgr/IPlayer$Dialog;)Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    move-result-object p1

    .line 58
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lo/rr;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$Dialog;

    .line 60
    iput-object v0, p0, Lo/rr;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$Dialog;

    .line 63
    :cond_1
    invoke-virtual {p0, p1}, Lo/rr;->a(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;)Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    move-result-object p1

    return-object p1
.end method

.method protected abstract a(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;)Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method protected b()Z
    .locals 3

    .line 82
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lo/rr;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "No Internet connectivity, we can not recover, because we need data connection for both offline (hybrid license) or streaming!"

    invoke-static {v0, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 87
    :cond_0
    invoke-virtual {p0}, Lo/rr;->d()Lo/zJ;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Lo/zJ;->b()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 89
    invoke-virtual {p0}, Lo/rr;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "We just failed playback with InApp Widevine. Report original error!"

    invoke-static {v0, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    return v2
.end method

.method public c()V
    .locals 2

    .line 73
    iget-object v0, p0, Lo/rr;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$Dialog;

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->a:Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;

    iget-object v1, p0, Lo/rr;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$Dialog;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->e(Lcom/netflix/mediaclient/servicemgr/IPlayer$Dialog;)V

    :cond_0
    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lo/rr;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$Dialog;

    .line 77
    iput-object v0, p0, Lo/rr;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$Dialog;

    return-void
.end method

.method protected abstract d()Lo/zJ;
.end method
