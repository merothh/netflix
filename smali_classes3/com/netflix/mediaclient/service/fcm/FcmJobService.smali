.class public final Lcom/netflix/mediaclient/service/fcm/FcmJobService;
.super Lo/KeepalivePacketData;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/fcm/FcmJobService$TaskDescription;
    }
.end annotation


# static fields
.field public static final d:Lcom/netflix/mediaclient/service/fcm/FcmJobService$TaskDescription;

# The value of this static final field might be set in the static constructor
.field private static final e:Ljava/lang/String; = "nf_fcm_job"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/fcm/FcmJobService$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/fcm/FcmJobService$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/service/fcm/FcmJobService;->d:Lcom/netflix/mediaclient/service/fcm/FcmJobService$TaskDescription;

    const-string v0, "nf_fcm_job"

    .line 46
    sput-object v0, Lcom/netflix/mediaclient/service/fcm/FcmJobService;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/KeepalivePacketData;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/IpSecTransform;)Z
    .locals 1

    const-string v0, "jobParameters"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public d(Lo/IpSecTransform;)Z
    .locals 4

    .line 18
    sget-object v0, Lcom/netflix/mediaclient/service/fcm/FcmJobService;->e:Ljava/lang/String;

    const-string v1, "Performing long running task in scheduled job"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lcom/netflix/mediaclient/service/fcm/FcmJobService;->e:Ljava/lang/String;

    const-string v1, "job parameters null - drop"

    invoke-static {p1, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 24
    :cond_0
    invoke-interface {p1}, Lo/IpSecTransform;->c()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 25
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/service/fcm/FcmJobService;->e:Ljava/lang/String;

    const-string v2, "binding to NetflixService from job service"

    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/fcm/FcmJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 32
    sget-object v2, Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils;->Companion:Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$Companion;

    const-string v3, "context"

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$Companion;->getNetflixServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 33
    new-instance v3, Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$NetflixServiceConnection;

    invoke-direct {v3, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$NetflixServiceConnection;-><init>(Ljava/lang/Object;)V

    check-cast v3, Landroid/content/ServiceConnection;

    const/4 p1, 0x1

    .line 32
    invoke-virtual {v1, v2, v3, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 36
    sget-object p1, Lcom/netflix/mediaclient/service/fcm/FcmJobService;->e:Ljava/lang/String;

    const-string v1, "FcmJobService could not bind to NetflixService!"

    invoke-static {p1, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    .line 26
    :cond_3
    :goto_0
    sget-object p1, Lcom/netflix/mediaclient/service/fcm/FcmJobService;->e:Ljava/lang/String;

    const-string v1, "bundle bad - drop"

    invoke-static {p1, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
