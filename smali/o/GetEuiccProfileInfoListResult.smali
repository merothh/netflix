.class public Lo/GetEuiccProfileInfoListResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BroadcastOptions;


# instance fields
.field private a:Lo/AutomaticZenRule;

.field private c:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private d:Landroid/content/Context;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lo/GetEuiccProfileInfoListResult;->e:Z

    .line 40
    iput-object p1, p0, Lo/GetEuiccProfileInfoListResult;->d:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lo/GetEuiccProfileInfoListResult;->c:Lcom/netflix/mediaclient/service/user/UserAgent;

    return-void
.end method

.method private a()V
    .locals 3

    .line 48
    iget-object v0, p0, Lo/GetEuiccProfileInfoListResult;->d:Landroid/content/Context;

    const-string v1, "preference_read_pai_referrer"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private b(Ljava/lang/String;J)V
    .locals 3

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 130
    invoke-static {p1}, Lo/adF;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    sub-long/2addr v0, p2

    .line 135
    sget-object p2, Lo/fU;->b:Lo/fU$StateListAnimator;

    invoke-virtual {p2}, Lo/fU$StateListAnimator;->b()I

    move-result p2

    int-to-long p2, p2

    cmp-long v2, v0, p2

    if-lez v2, :cond_1

    const-string p1, "PlayAutoInstallReferrer"

    const-string p2, "Autologin token expired, do nothing"

    .line 136
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 140
    :cond_1
    iget-object p2, p0, Lo/GetEuiccProfileInfoListResult;->c:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {p2, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recordGpaiChannelId: recording channelId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayAutoInstallReferrer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lo/GetEuiccProfileInfoListResult;->d:Landroid/content/Context;

    const-string v1, "channelIdValue"

    invoke-static {v0, v1, p1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object p1, p0, Lo/GetEuiccProfileInfoListResult;->d:Landroid/content/Context;

    const-string v0, "isPaiPreload"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 147
    const-class p1, Lo/cE;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/cE;

    invoke-virtual {p1}, Lo/cE;->b()V

    return-void
.end method

.method private c(Lo/ClientTransactionHandler;)V
    .locals 6

    .line 95
    invoke-virtual {p1}, Lo/ClientTransactionHandler;->a()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Lo/ClientTransactionHandler;->c()J

    move-result-wide v1

    .line 97
    invoke-virtual {p1}, Lo/ClientTransactionHandler;->d()J

    move-result-wide v3

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleReferrer: referrerUrl: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",  clickTime: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", installTime: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PlayAutoInstallReferrer"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object p1, p0, Lo/GetEuiccProfileInfoListResult;->d:Landroid/content/Context;

    const-string v1, "playReferrer"

    invoke-static {p1, v1, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lo/GetEuiccProfileInfoListResult;->d:Landroid/content/Context;

    const-string v1, "playAppInstallTime"

    invoke-static {p1, v1, v3, v4}, Lo/aer;->d(Landroid/content/Context;Ljava/lang/String;J)V

    .line 103
    iget-boolean p1, p0, Lo/GetEuiccProfileInfoListResult;->e:Z

    if-eqz p1, :cond_0

    const-string p1, "02370EE9-3E5D-427C-86CC-09A3AC1B4CBC"

    .line 104
    invoke-direct {p0, p1}, Lo/GetEuiccProfileInfoListResult;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_0
    invoke-static {v0}, Lo/adF;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    invoke-static {v0}, Lo/adF;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    invoke-direct {p0, p1}, Lo/GetEuiccProfileInfoListResult;->c(Ljava/lang/String;)V

    .line 115
    :cond_1
    :goto_0
    invoke-direct {p0, v0, v3, v4}, Lo/GetEuiccProfileInfoListResult;->b(Ljava/lang/String;J)V

    .line 118
    invoke-direct {p0}, Lo/GetEuiccProfileInfoListResult;->a()V

    return-void
.end method

.method private e()Z
    .locals 3

    .line 45
    iget-object v0, p0, Lo/GetEuiccProfileInfoListResult;->d:Landroid/content/Context;

    const-string v1, "preference_read_pai_referrer"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 52
    invoke-direct {p0}, Lo/GetEuiccProfileInfoListResult;->e()Z

    move-result v0

    const-string v1, "PlayAutoInstallReferrer"

    if-eqz v0, :cond_0

    .line 54
    :try_start_0
    iget-object v0, p0, Lo/GetEuiccProfileInfoListResult;->d:Landroid/content/Context;

    invoke-static {v0}, Lo/AutomaticZenRule;->b(Landroid/content/Context;)Lo/AutomaticZenRule$Activity;

    move-result-object v0

    invoke-virtual {v0}, Lo/AutomaticZenRule$Activity;->b()Lo/AutomaticZenRule;

    move-result-object v0

    iput-object v0, p0, Lo/GetEuiccProfileInfoListResult;->a:Lo/AutomaticZenRule;

    .line 55
    iget-object v0, p0, Lo/GetEuiccProfileInfoListResult;->a:Lo/AutomaticZenRule;

    invoke-virtual {v0, p0}, Lo/AutomaticZenRule;->a(Lo/BroadcastOptions;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Probably an AOSP device with GPS!!!"

    .line 57
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start: skipped - isFirstTime: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lo/GetEuiccProfileInfoListResult;->e()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 3

    const-string v0, "PlayAutoInstallReferrer"

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseCode not found. responseCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "InstallReferrer not supported"

    .line 78
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "Unable to connect to the service"

    .line 81
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    const-string p1, "InstallReferrer connected"

    .line 69
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object p1, p0, Lo/GetEuiccProfileInfoListResult;->a:Lo/AutomaticZenRule;

    invoke-virtual {p1}, Lo/AutomaticZenRule;->e()Lo/ClientTransactionHandler;

    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Lo/GetEuiccProfileInfoListResult;->c(Lo/ClientTransactionHandler;)V

    .line 72
    iget-object p1, p0, Lo/GetEuiccProfileInfoListResult;->a:Lo/AutomaticZenRule;

    invoke-virtual {p1}, Lo/AutomaticZenRule;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method
