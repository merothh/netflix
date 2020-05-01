.class public Lcom/netflix/mediaclient/partner/PartnerInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 59
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "channelIdValue"

    .line 60
    invoke-static {p0, v0, p1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const-string p1, "partnerInstallReceiver"

    const-string v2, "stored postload channelId : %s"

    .line 61
    invoke-static {p1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    const-string p1, "isPostLoaded"

    .line 63
    invoke-static {p0, p1, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 66
    :try_start_0
    const-class p0, Lo/cE;

    invoke-static {p0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/cE;

    invoke-virtual {p0}, Lo/cE;->b()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "installToken"

    .line 43
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "partnerInstallReceiver"

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v1, "received install token %s"

    .line 45
    invoke-static {v2, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, "channelIdSource"

    const-string v1, "I"

    .line 47
    invoke-static {p1, v0, v1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/partner/PartnerInstallReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    new-instance p2, Lo/yk;

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->h()Lo/iy;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lo/yk;-><init>(Landroid/content/Context;Lo/iy;)V

    goto :goto_0

    :cond_0
    const-string p1, "no token present"

    .line 54
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "channelIdValue"

    const-string v1, ""

    .line 73
    invoke-static {p0, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received an action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "partnerInstallReceiver"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.netflix.mediaclient.partner.intent.action.POST_INSTALL_ACTION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Install intent received"

    .line 34
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/partner/PartnerInstallReceiver;->c(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p1, "Not supported!"

    .line 37
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
