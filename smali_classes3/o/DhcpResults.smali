.class public final Lo/DhcpResults;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroid/os/Bundle;)Lo/IpSecUdpEncapResponse;
    .locals 4

    const-string v0, "No callback received, terminating"

    const/4 v1, 0x0

    const-string v2, "FJD.GooglePlayReceiver"

    if-nez p1, :cond_0

    .line 33
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 37
    :cond_0
    const-class v3, Lcom/google/android/gms/gcm/PendingCallback;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v3, "callback"

    .line 39
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_1

    .line 41
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 43
    :cond_1
    instance-of v0, p1, Lcom/google/android/gms/gcm/PendingCallback;

    if-nez v0, :cond_2

    const-string p1, "Bad callback received, terminating"

    .line 44
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 48
    :cond_2
    new-instance v0, Lo/IpSecSpiResponse;

    check-cast p1, Lcom/google/android/gms/gcm/PendingCallback;

    invoke-virtual {p1}, Lcom/google/android/gms/gcm/PendingCallback;->getIBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/IpSecSpiResponse;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
