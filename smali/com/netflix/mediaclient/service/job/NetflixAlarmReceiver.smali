.class public Lcom/netflix/mediaclient/service/job/NetflixAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetflixAlarmReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_alarm_receiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->onAlarmReceived(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_alarm_receiver"

    const-string/jumbo v1, "onReceive alarmReceiverOn=false"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
