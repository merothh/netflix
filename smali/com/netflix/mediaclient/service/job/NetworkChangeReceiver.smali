.class public Lcom/netflix/mediaclient/service/job/NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkChangeReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_NetworkChangeReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    invoke-static {p1}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->onNetworkConnectivityChanged(Landroid/content/Context;)V

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    const-string/jumbo v0, "nf_NetworkChangeReceiver"

    const-string/jumbo v1, "onReceive networkChangeReceiverOn=false"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 30
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string/jumbo v0, "nf_NetworkChangeReceiver"

    const-string/jumbo v1, "onReceive not from connectivityManager"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
