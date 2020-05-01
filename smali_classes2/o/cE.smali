.class public Lo/cE;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cE$TaskDescription;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static c:I

.field private static d:I

.field private static e:I


# instance fields
.field private b:Landroid/content/Context;

.field private f:Landroid/os/Handler;

.field private g:Lo/cE$TaskDescription;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private l:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lo/cE;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/cE;->a:Ljava/lang/String;

    const/4 v0, 0x2

    .line 24
    sput v0, Lo/cE;->e:I

    .line 25
    sput v0, Lo/cE;->d:I

    const/16 v0, 0xa

    .line 26
    sput v0, Lo/cE;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lo/cE;->b:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lo/cE;->f:Landroid/os/Handler;

    .line 49
    invoke-direct {p0}, Lo/cE;->n()V

    .line 51
    iget-object p1, p0, Lo/cE;->j:Ljava/lang/String;

    invoke-direct {p0, p1}, Lo/cE;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    sget-object p1, Lo/cE;->a:Ljava/lang/String;

    const-string p2, "need to request channelId"

    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-direct {p0}, Lo/cE;->h()V

    .line 54
    iget p1, p0, Lo/cE;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/cE;->i:I

    .line 55
    invoke-direct {p0}, Lo/cE;->f()V

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 186
    invoke-static {p0, v0}, Lo/adk;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lo/cE;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lo/cE;->b:Landroid/content/Context;

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lo/cE;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    iget p1, p0, Lo/cE;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/cE;->i:I

    .line 80
    invoke-direct {p0}, Lo/cE;->f()V

    :cond_0
    return-void
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lo/cE;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lo/cE;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lo/cE;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "isPaiPreload"

    .line 168
    invoke-static {p0, v1, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "channelIdSource"

    if-eqz v1, :cond_0

    const-string v0, "P"

    .line 169
    invoke-static {p0, v2, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {}, Lo/cE;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "R"

    .line 172
    invoke-static {p0, v2, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "isPostLoaded"

    .line 174
    invoke-static {p0, v1, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "I"

    .line 175
    invoke-static {p0, v2, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_2
    invoke-static {p0}, Lo/adk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "S"

    .line 178
    invoke-static {p0, v2, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "D"

    .line 181
    invoke-static {p0, v2, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private e(Ljava/lang/String;)Z
    .locals 1

    .line 98
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 102
    :cond_0
    invoke-direct {p0}, Lo/cE;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 106
    :cond_1
    invoke-direct {p0}, Lo/cE;->j()Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private f()V
    .locals 4

    .line 122
    sget-object v0, Lo/cE;->a:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lo/cE;->h:I

    .line 123
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget v2, Lo/cE;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lo/cE;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget v2, Lo/cE;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "inquiring for channelId appLaunchCount: %d(%d), currentCheckCount: %d(%d)"

    .line 122
    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.partner.activation.intent.action.CHANNEL_ID_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    iget-object v1, p0, Lo/cE;->b:Landroid/content/Context;

    const-string v2, "com.netflix.partner.activation.permission.CHANNEL_ID"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private g()Z
    .locals 2

    .line 113
    iget-boolean v0, p0, Lo/cE;->n:Z

    if-eqz v0, :cond_0

    sget v0, Lo/cE;->c:I

    goto :goto_0

    :cond_0
    sget v0, Lo/cE;->d:I

    .line 114
    :goto_0
    iget v1, p0, Lo/cE;->h:I

    if-le v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private h()V
    .locals 5

    .line 85
    new-instance v0, Lo/cE$TaskDescription;

    invoke-direct {v0, p0}, Lo/cE$TaskDescription;-><init>(Lo/cE;)V

    iput-object v0, p0, Lo/cE;->g:Lo/cE$TaskDescription;

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.netflix.partner.activation.intent.action.CHANNEL_ID_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lo/cE;->b:Landroid/content/Context;

    iget-object v2, p0, Lo/cE;->g:Lo/cE$TaskDescription;

    iget-object v3, p0, Lo/cE;->f:Landroid/os/Handler;

    const-string v4, "com.netflix.partner.activation.permission.CHANNEL_ID"

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private i()V
    .locals 2

    .line 92
    iget-object v0, p0, Lo/cE;->g:Lo/cE$TaskDescription;

    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lo/cE;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private j()Z
    .locals 2

    .line 118
    iget v0, p0, Lo/cE;->i:I

    sget v1, Lo/cE;->e:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static k()Z
    .locals 2

    const-string v0, "ro.netflix.huawei.channel"

    .line 193
    invoke-static {v0}, Lo/cE;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ro.netflix.channel"

    .line 194
    invoke-static {v1}, Lo/cE;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private n()V
    .locals 3

    .line 199
    iget-object v0, p0, Lo/cE;->b:Landroid/content/Context;

    const-string v1, "channelIdValue"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/cE;->j:Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lo/cE;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/partner/PartnerInstallType;->a(Landroid/content/Context;)Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    move-result-object v0

    iput-object v0, p0, Lo/cE;->l:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    .line 201
    iget-object v0, p0, Lo/cE;->b:Landroid/content/Context;

    invoke-static {v0}, Lo/adk;->c(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lo/cE;->n:Z

    .line 203
    iget-object v0, p0, Lo/cE;->b:Landroid/content/Context;

    const-string v1, "channelIdAppLaunches"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lo/cE;->h:I

    .line 204
    iget v0, p0, Lo/cE;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/cE;->h:I

    .line 205
    iget-object v0, p0, Lo/cE;->b:Landroid/content/Context;

    iget v2, p0, Lo/cE;->h:I

    invoke-static {v0, v1, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lo/cE;->l:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .line 213
    invoke-direct {p0}, Lo/cE;->n()V

    .line 214
    iget-object v0, p0, Lo/cE;->b:Landroid/content/Context;

    invoke-static {v0}, Lo/cE;->e(Landroid/content/Context;)V

    return-void
.end method

.method public c()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lo/cE;->i()V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 4

    .line 64
    sget-object v0, Lo/cE;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lo/cE;->j:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "requestChannelId %s"

    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 65
    iget-object v0, p0, Lo/cE;->j:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/cE;->c(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lo/cE;->j:Ljava/lang/String;

    return-object v0
.end method
