.class public final Lo/InterfaceConfiguration;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/EthernetManager;


# instance fields
.field private final a:Lo/LinkQualityInfo;

.field private final b:Lo/IpSecManager;

.field private final c:Landroid/app/PendingIntent;

.field private final d:Landroid/content/Context;

.field private final e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lo/InterfaceConfiguration;->e:Z

    .line 76
    iput-object p1, p0, Lo/InterfaceConfiguration;->d:Landroid/content/Context;

    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lo/InterfaceConfiguration;->c:Landroid/app/PendingIntent;

    .line 78
    new-instance v0, Lo/IpSecManager;

    invoke-direct {v0}, Lo/IpSecManager;-><init>()V

    iput-object v0, p0, Lo/InterfaceConfiguration;->b:Lo/IpSecManager;

    .line 79
    new-instance v0, Lo/DhcpInfo;

    invoke-direct {v0, p1}, Lo/DhcpInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/InterfaceConfiguration;->a:Lo/LinkQualityInfo;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.gcm.ACTION_SCHEDULE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.gms"

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "scheduler_action"

    .line 150
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    iget-object p1, p0, Lo/InterfaceConfiguration;->c:Landroid/app/PendingIntent;

    const-string v1, "app"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "source"

    const/16 v1, 0x8

    .line 152
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "source_version"

    const/4 v1, 0x1

    .line 153
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private e(Lo/IpSecTransform;)Landroid/content/Intent;
    .locals 3

    const-string v0, "SCHEDULE_TASK"

    .line 140
    invoke-direct {p0, v0}, Lo/InterfaceConfiguration;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lo/InterfaceConfiguration;->b:Lo/IpSecManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lo/IpSecManager;->d(Lo/IpSecTransform;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lo/IpSecAlgorithm;)I
    .locals 1

    .line 93
    iget-object v0, p0, Lo/InterfaceConfiguration;->d:Landroid/content/Context;

    invoke-direct {p0, p1}, Lo/InterfaceConfiguration;->e(Lo/IpSecTransform;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method

.method public e()Lo/LinkQualityInfo;
    .locals 1

    .line 135
    iget-object v0, p0, Lo/InterfaceConfiguration;->a:Lo/LinkQualityInfo;

    return-object v0
.end method
