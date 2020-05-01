.class public Lcom/netflix/mediaclient/InstallReferrerReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 54
    invoke-static {p2}, Lo/adF;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "nf_install"

    if-eqz v1, :cond_0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got channelId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {p1, v0}, Lcom/netflix/mediaclient/InstallReferrerReceiver;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    :cond_0
    invoke-static {p2}, Lo/adF;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 69
    :cond_1
    invoke-static {p2}, Lo/adF;->d(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    .line 74
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.USER_AUTOLOGIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    const-class v1, Lo/bM;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.category.USER"

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "token"

    .line 77
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-static {}, Lo/adk;->i()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "Android O, start foreground service..."

    .line 81
    invoke-static {v2, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    const-string v1, "start_foreground"

    .line 82
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "start_requester"

    .line 83
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_3
    const-string p2, "Pre Android O, start service..."

    .line 87
    invoke-static {v2, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    .line 64
    :cond_4
    :goto_1
    new-instance p2, Lo/yk;

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->h()Lo/iy;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lo/yk;-><init>(Landroid/content/Context;Lo/iy;)V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-static {p2}, Lo/adF;->c(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "preference_install_referrer_log"

    const-string v1, ""

    .line 116
    invoke-static {p1, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "nf_install"

    if-nez v2, :cond_2

    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v4

    const-string v2, "storing install referrer %s"

    .line 121
    invoke-static {v5, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 122
    invoke-static {p1, v0, p2}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v1, p1, v4

    aput-object p2, p1, v3

    const-string p2, "Ignoring the install referrer since previous value still exists or toPref is null.  inPref: %s, toPref: %s"

    .line 118
    invoke-static {v5, p2, p1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public static d(Landroid/content/Context;)Landroid/app/Notification;
    .locals 1

    .line 108
    const-class v0, Lo/Ce;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Ce;

    invoke-interface {v0, p0}, Lo/Ce;->c(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method protected static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 93
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/partner/PartnerInstallReceiver;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/partner/PartnerInstallReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "nf_install"

    if-eqz v0, :cond_0

    const-string v0, "Installation intent received"

    .line 41
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {v1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Landroid/content/Intent;)V

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/InstallReferrerReceiver;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/InstallReferrerReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p1, "Unexpected intent received"

    .line 46
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {v1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
